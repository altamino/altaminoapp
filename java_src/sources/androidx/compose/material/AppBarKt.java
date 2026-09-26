package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public final class AppBarKt {
    private static final float AppBarHeight = Dp.f(56);
    private static final float AppBarHorizontalPadding;
    private static final float BottomAppBarCutoutOffset;
    private static final float BottomAppBarRoundedEdgeRadius;

    @NotNull
    private static final Modifier TitleIconModifier;

    @NotNull
    private static final Modifier TitleInsetWithoutIcon;

    static {
        float f = 4;
        float f6 = Dp.f(f);
        AppBarHorizontalPadding = f6;
        Modifier.Companion companion = Modifier.Companion;
        TitleInsetWithoutIcon = SizeKt.D(companion, Dp.f(Dp.f(16) - f6));
        TitleIconModifier = SizeKt.D(SizeKt.j(companion, 0.0f, 1, null), Dp.f(Dp.f(72) - f6));
        BottomAppBarCutoutOffset = Dp.f(8);
        BottomAppBarRoundedEdgeRadius = Dp.f(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:38:0x006a  */
    /* JADX WARN: Code duplicated, block: B:40:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x0077  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0083  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00af  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:85:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:90:0x012d  */
    /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(long j6, long j10, float f, PaddingValues paddingValues, Shape shape, Modifier modifier, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Modifier modifier2;
        int i17;
        int i18;
        Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(-1249680788);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.q(j6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.q(j10) ? 32 : 16;
            }
            if ((i11 & 4) != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.n(f)) {
                        i13 = 256;
                    } else {
                        i13 = 128;
                    }
                    i12 |= i13;
                }
                if ((i11 & 8) != 0) {
                    i12 |= 3072;
                } else if ((i10 & 7168) == 0) {
                    if (composerS.k(paddingValues)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((i11 & 16) != 0) {
                    if ((57344 & i10) == 0) {
                        if (composerS.k(shape)) {
                            i15 = 16384;
                        } else {
                            i15 = 8192;
                        }
                        i12 |= i15;
                    }
                    i16 = i11 & 32;
                    if (i16 != 0) {
                        if ((i10 & 458752) == 0) {
                            modifier2 = modifier;
                            if (composerS.k(modifier2)) {
                                i17 = 131072;
                            } else {
                                i17 = 65536;
                            }
                            i12 |= i17;
                        }
                        if ((i11 & 64) != 0) {
                            i12 |= 1572864;
                        } else if ((3670016 & i10) == 0) {
                            if (composerS.k(qVar)) {
                                i18 = 1048576;
                            } else {
                                i18 = 524288;
                            }
                            i12 |= i18;
                        }
                        if ((2995931 & i12) == 599186 || !composerS.b()) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            int i19 = i12 << 6;
                            SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i19 & 896) | (i19 & 7168) | ((i12 << 9) & 458752), 16);
                        } else {
                            composerS.g();
                            modifier3 = modifier2;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    modifier2 = modifier;
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((3670016 & i10) == 0) {
                        if (composerS.k(qVar)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    if ((2995931 & i12) == 599186) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i110 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i110 & 896) | (i110 & 7168) | ((i12 << 9) & 458752), 16);
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i111 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i111 & 896) | (i111 & 7168) | ((i12 << 9) & 458752), 16);
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                i16 = i11 & 32;
                if (i16 != 0) {
                    if ((i10 & 458752) == 0) {
                        modifier2 = modifier;
                        if (composerS.k(modifier2)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                        i12 |= i17;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((3670016 & i10) == 0) {
                        if (composerS.k(qVar)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    if ((2995931 & i12) == 599186) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i112 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i112 & 896) | (i112 & 7168) | ((i12 << 9) & 458752), 16);
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i113 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i113 & 896) | (i113 & 7168) | ((i12 << 9) & 458752), 16);
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                modifier2 = modifier;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((3670016 & i10) == 0) {
                    if (composerS.k(qVar)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((2995931 & i12) == 599186) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i114 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i114 & 896) | (i114 & 7168) | ((i12 << 9) & 458752), 16);
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i115 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i115 & 896) | (i115 & 7168) | ((i12 << 9) & 458752), 16);
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
            }
            i12 |= 384;
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(paddingValues)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i11 & 16) != 0) {
                if ((57344 & i10) == 0) {
                    if (composerS.k(shape)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i12 |= i15;
                }
                i16 = i11 & 32;
                if (i16 != 0) {
                    if ((i10 & 458752) == 0) {
                        modifier2 = modifier;
                        if (composerS.k(modifier2)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                        i12 |= i17;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((3670016 & i10) == 0) {
                        if (composerS.k(qVar)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    if ((2995931 & i12) == 599186) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i116 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i116 & 896) | (i116 & 7168) | ((i12 << 9) & 458752), 16);
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i117 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i117 & 896) | (i117 & 7168) | ((i12 << 9) & 458752), 16);
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                modifier2 = modifier;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((3670016 & i10) == 0) {
                    if (composerS.k(qVar)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((2995931 & i12) == 599186) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i118 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i118 & 896) | (i118 & 7168) | ((i12 << 9) & 458752), 16);
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i119 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i119 & 896) | (i119 & 7168) | ((i12 << 9) & 458752), 16);
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            i16 = i11 & 32;
            if (i16 != 0) {
                if ((i10 & 458752) == 0) {
                    modifier2 = modifier;
                    if (composerS.k(modifier2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i12 |= i17;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((3670016 & i10) == 0) {
                    if (composerS.k(qVar)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((2995931 & i12) == 599186) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i1110 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1110 & 896) | (i1110 & 7168) | ((i12 << 9) & 458752), 16);
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i1111 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1111 & 896) | (i1111 & 7168) | ((i12 << 9) & 458752), 16);
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((3670016 & i10) == 0) {
                if (composerS.k(qVar)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((2995931 & i12) == 599186) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i1112 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1112 & 896) | (i1112 & 7168) | ((i12 << 9) & 458752), 16);
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i1113 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1113 & 896) | (i1113 & 7168) | ((i12 << 9) & 458752), 16);
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
        }
        i12 |= 48;
        if ((i11 & 4) != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.n(f)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i12 |= i13;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(paddingValues)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i11 & 16) != 0) {
                if ((57344 & i10) == 0) {
                    if (composerS.k(shape)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i12 |= i15;
                }
                i16 = i11 & 32;
                if (i16 != 0) {
                    if ((i10 & 458752) == 0) {
                        modifier2 = modifier;
                        if (composerS.k(modifier2)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                        i12 |= i17;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((3670016 & i10) == 0) {
                        if (composerS.k(qVar)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    if ((2995931 & i12) == 599186) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i1114 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1114 & 896) | (i1114 & 7168) | ((i12 << 9) & 458752), 16);
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        int i1115 = i12 << 6;
                        SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1115 & 896) | (i1115 & 7168) | ((i12 << 9) & 458752), 16);
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                modifier2 = modifier;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((3670016 & i10) == 0) {
                    if (composerS.k(qVar)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((2995931 & i12) == 599186) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i1116 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1116 & 896) | (i1116 & 7168) | ((i12 << 9) & 458752), 16);
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i1117 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1117 & 896) | (i1117 & 7168) | ((i12 << 9) & 458752), 16);
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            i16 = i11 & 32;
            if (i16 != 0) {
                if ((i10 & 458752) == 0) {
                    modifier2 = modifier;
                    if (composerS.k(modifier2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i12 |= i17;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((3670016 & i10) == 0) {
                    if (composerS.k(qVar)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((2995931 & i12) == 599186) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i1118 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1118 & 896) | (i1118 & 7168) | ((i12 << 9) & 458752), 16);
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i1119 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i1119 & 896) | (i1119 & 7168) | ((i12 << 9) & 458752), 16);
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((3670016 & i10) == 0) {
                if (composerS.k(qVar)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((2995931 & i12) == 599186) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i11110 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11110 & 896) | (i11110 & 7168) | ((i12 << 9) & 458752), 16);
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i11111 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11111 & 896) | (i11111 & 7168) | ((i12 << 9) & 458752), 16);
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
        }
        i12 |= 384;
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(paddingValues)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i12 |= i14;
        }
        if ((i11 & 16) != 0) {
            if ((57344 & i10) == 0) {
                if (composerS.k(shape)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i12 |= i15;
            }
            i16 = i11 & 32;
            if (i16 != 0) {
                if ((i10 & 458752) == 0) {
                    modifier2 = modifier;
                    if (composerS.k(modifier2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i12 |= i17;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((3670016 & i10) == 0) {
                    if (composerS.k(qVar)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((2995931 & i12) == 599186) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i11112 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11112 & 896) | (i11112 & 7168) | ((i12 << 9) & 458752), 16);
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    int i11113 = i12 << 6;
                    SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11113 & 896) | (i11113 & 7168) | ((i12 << 9) & 458752), 16);
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((3670016 & i10) == 0) {
                if (composerS.k(qVar)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((2995931 & i12) == 599186) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i11114 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11114 & 896) | (i11114 & 7168) | ((i12 << 9) & 458752), 16);
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i11115 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11115 & 896) | (i11115 & 7168) | ((i12 << 9) & 458752), 16);
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        i16 = i11 & 32;
        if (i16 != 0) {
            if ((i10 & 458752) == 0) {
                modifier2 = modifier;
                if (composerS.k(modifier2)) {
                    i17 = 131072;
                } else {
                    i17 = 65536;
                }
                i12 |= i17;
            }
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((3670016 & i10) == 0) {
                if (composerS.k(qVar)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((2995931 & i12) == 599186) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i11116 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11116 & 896) | (i11116 & 7168) | ((i12 << 9) & 458752), 16);
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                int i11117 = i12 << 6;
                SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11117 & 896) | (i11117 & 7168) | ((i12 << 9) & 458752), 16);
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        modifier2 = modifier;
        if ((i11 & 64) != 0) {
            i12 |= 1572864;
        } else if ((3670016 & i10) == 0) {
            if (composerS.k(qVar)) {
                i18 = 1048576;
            } else {
                i18 = 524288;
            }
            i12 |= i18;
        }
        if ((2995931 & i12) == 599186) {
            if (i16 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            int i11118 = i12 << 6;
            SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11118 & 896) | (i11118 & 7168) | ((i12 << 9) & 458752), 16);
        } else {
            if (i16 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            int i11119 = i12 << 6;
            SurfaceKt.b(modifier3, shape, j6, j10, null, f, ComposableLambdaKt.b(composerS, -1027830352, true, new AppBarKt$AppBar$1(paddingValues, qVar, i12)), composerS, ((i12 >> 15) & 14) | 1572864 | ((i12 >> 9) & 112) | (i11119 & 896) | (i11119 & 7168) | ((i12 << 9) & 458752), 16);
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AppBarKt$AppBar$2(j6, j10, f, paddingValues, shape, modifier3, qVar, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012b  */
    /* JADX WARN: Code duplicated, block: B:101:0x0139  */
    /* JADX WARN: Code duplicated, block: B:104:0x013f  */
    /* JADX WARN: Code duplicated, block: B:106:0x014c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0150  */
    /* JADX WARN: Code duplicated, block: B:110:0x0159  */
    /* JADX WARN: Code duplicated, block: B:111:0x016a  */
    /* JADX WARN: Code duplicated, block: B:114:0x0183 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:118:0x0193  */
    /* JADX WARN: Code duplicated, block: B:123:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098  */
    /* JADX WARN: Code duplicated, block: B:55:0x009b  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:95:0x0120 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0122  */
    /* JADX WARN: Code duplicated, block: B:97:0x0125  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@Nullable Modifier modifier, long j6, long j10, @Nullable Shape shape, float f, @Nullable PaddingValues paddingValues, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        long jB;
        Shape shape2;
        int i13;
        float fA;
        int i14;
        int i15;
        PaddingValues paddingValues2;
        int i16;
        int i17;
        Modifier modifier2;
        long jF;
        long j11;
        long j12;
        Shape shape3;
        float f6;
        PaddingValues paddingValuesB;
        Modifier modifier3;
        Shape shapeA;
        Modifier modifier4;
        float f7;
        long j13;
        long j14;
        PaddingValues paddingValues3;
        Shape shape4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(-1651948973);
        int i18 = i11 & 1;
        if (i18 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            i12 |= ((i11 & 2) == 0 && composerS.q(j6)) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                jB = j10;
                int i19 = composerS.q(jB) ? 256 : 128;
                i12 |= i19;
            } else {
                jB = j10;
            }
            i12 |= i19;
        } else {
            jB = j10;
        }
        int i20 = i11 & 8;
        if (i20 == 0) {
            if ((i10 & 7168) == 0) {
                shape2 = shape;
                i12 |= composerS.k(shape2) ? 2048 : 1024;
            }
            i13 = i11 & 16;
            if (i13 != 0) {
                if ((57344 & i10) == 0) {
                    fA = f;
                    if (composerS.n(fA)) {
                        i14 = 16384;
                    } else {
                        i14 = 8192;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    paddingValues2 = paddingValues;
                } else {
                    paddingValues2 = paddingValues;
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(paddingValues2)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                }
                if ((i11 & 64) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i17 = 1048576;
                        } else {
                            i17 = 524288;
                        }
                    }
                    if ((i12 & 2995931) == 599186 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i18 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                                i12 &= -113;
                            } else {
                                jF = j6;
                            }
                            if ((i11 & 4) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                                i12 &= -897;
                            }
                            if (i20 != 0) {
                                shape2 = null;
                            }
                            if (i13 != 0) {
                                fA = AppBarDefaults.INSTANCE.a();
                            }
                            if (i15 != 0) {
                                modifier3 = modifier2;
                                paddingValuesB = AppBarDefaults.INSTANCE.b();
                                j11 = jF;
                                j12 = jB;
                                shape3 = shape2;
                                f6 = fA;
                            } else {
                                j11 = jF;
                                j12 = jB;
                                shape3 = shape2;
                                f6 = fA;
                                paddingValuesB = paddingValues2;
                                modifier3 = modifier2;
                            }
                        } else {
                            composerS.g();
                            if ((i11 & 2) != 0) {
                                i12 &= -113;
                            }
                            if ((i11 & 4) != 0) {
                                i12 &= -897;
                            }
                            j11 = j6;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier;
                        }
                        composerS.A();
                        FabPlacement fabPlacement = (FabPlacement) composerS.x(ScaffoldKt.e());
                        if (shape3 == null && fabPlacement != null && fabPlacement.d()) {
                            shapeA = new BottomAppBarCutoutShape(shape3, fabPlacement);
                        } else {
                            shapeA = RectangleShapeKt.a();
                        }
                        int i21 = i12 >> 3;
                        int i22 = i12 >> 6;
                        a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i21 & 112) | (i21 & 14) | (i22 & 896) | (i22 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                        modifier4 = modifier3;
                        f7 = f6;
                        j13 = j11;
                        j14 = j12;
                        paddingValues3 = paddingValuesB;
                        shape4 = shape3;
                    } else {
                        composerS.g();
                        modifier4 = modifier;
                        j13 = j6;
                        j14 = jB;
                        shape4 = shape2;
                        f7 = fA;
                        paddingValues3 = paddingValues2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
                }
                i17 = 1572864;
                i12 |= i17;
                if ((i12 & 2995931) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    }
                    composerS.A();
                    FabPlacement fabPlacement2 = (FabPlacement) composerS.x(ScaffoldKt.e());
                    if (shape3 == null) {
                        shapeA = RectangleShapeKt.a();
                    } else {
                        shapeA = RectangleShapeKt.a();
                    }
                    int i23 = i12 >> 3;
                    int i24 = i12 >> 6;
                    a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i23 & 112) | (i23 & 14) | (i24 & 896) | (i24 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                    modifier4 = modifier3;
                    f7 = f6;
                    j13 = j11;
                    j14 = j12;
                    paddingValues3 = paddingValuesB;
                    shape4 = shape3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    }
                    composerS.A();
                    FabPlacement fabPlacement3 = (FabPlacement) composerS.x(ScaffoldKt.e());
                    if (shape3 == null) {
                        shapeA = RectangleShapeKt.a();
                    } else {
                        shapeA = RectangleShapeKt.a();
                    }
                    int i25 = i12 >> 3;
                    int i26 = i12 >> 6;
                    a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i25 & 112) | (i25 & 14) | (i26 & 896) | (i26 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                    modifier4 = modifier3;
                    f7 = f6;
                    j13 = j11;
                    j14 = j12;
                    paddingValues3 = paddingValuesB;
                    shape4 = shape3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            fA = f;
            i15 = i11 & 32;
            if (i15 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                paddingValues2 = paddingValues;
            } else {
                paddingValues2 = paddingValues;
                if ((i10 & 458752) == 0) {
                    if (composerS.k(paddingValues2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
            }
            if ((i11 & 64) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i17 = 1048576;
                    } else {
                        i17 = 524288;
                    }
                }
                if ((i12 & 2995931) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    }
                    composerS.A();
                    FabPlacement fabPlacement4 = (FabPlacement) composerS.x(ScaffoldKt.e());
                    if (shape3 == null) {
                        shapeA = RectangleShapeKt.a();
                    } else {
                        shapeA = RectangleShapeKt.a();
                    }
                    int i27 = i12 >> 3;
                    int i28 = i12 >> 6;
                    a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i27 & 112) | (i27 & 14) | (i28 & 896) | (i28 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                    modifier4 = modifier3;
                    f7 = f6;
                    j13 = j11;
                    j14 = j12;
                    paddingValues3 = paddingValuesB;
                    shape4 = shape3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    }
                    composerS.A();
                    FabPlacement fabPlacement5 = (FabPlacement) composerS.x(ScaffoldKt.e());
                    if (shape3 == null) {
                        shapeA = RectangleShapeKt.a();
                    } else {
                        shapeA = RectangleShapeKt.a();
                    }
                    int i29 = i12 >> 3;
                    int i210 = i12 >> 6;
                    a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i29 & 112) | (i29 & 14) | (i210 & 896) | (i210 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                    modifier4 = modifier3;
                    f7 = f6;
                    j13 = j11;
                    j14 = j12;
                    paddingValues3 = paddingValuesB;
                    shape4 = shape3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
            }
            i17 = 1572864;
            i12 |= i17;
            if ((i12 & 2995931) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                }
                composerS.A();
                FabPlacement fabPlacement6 = (FabPlacement) composerS.x(ScaffoldKt.e());
                if (shape3 == null) {
                    shapeA = RectangleShapeKt.a();
                } else {
                    shapeA = RectangleShapeKt.a();
                }
                int i211 = i12 >> 3;
                int i212 = i12 >> 6;
                a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i211 & 112) | (i211 & 14) | (i212 & 896) | (i212 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                modifier4 = modifier3;
                f7 = f6;
                j13 = j11;
                j14 = j12;
                paddingValues3 = paddingValuesB;
                shape4 = shape3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                }
                composerS.A();
                FabPlacement fabPlacement7 = (FabPlacement) composerS.x(ScaffoldKt.e());
                if (shape3 == null) {
                    shapeA = RectangleShapeKt.a();
                } else {
                    shapeA = RectangleShapeKt.a();
                }
                int i213 = i12 >> 3;
                int i214 = i12 >> 6;
                a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i213 & 112) | (i213 & 14) | (i214 & 896) | (i214 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                modifier4 = modifier3;
                f7 = f6;
                j13 = j11;
                j14 = j12;
                paddingValues3 = paddingValuesB;
                shape4 = shape3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
        }
        i12 |= 3072;
        shape2 = shape;
        i13 = i11 & 16;
        if (i13 != 0) {
            if ((57344 & i10) == 0) {
                fA = f;
                if (composerS.n(fA)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i12 |= i14;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                paddingValues2 = paddingValues;
            } else {
                paddingValues2 = paddingValues;
                if ((i10 & 458752) == 0) {
                    if (composerS.k(paddingValues2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
            }
            if ((i11 & 64) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i17 = 1048576;
                    } else {
                        i17 = 524288;
                    }
                }
                if ((i12 & 2995931) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    }
                    composerS.A();
                    FabPlacement fabPlacement8 = (FabPlacement) composerS.x(ScaffoldKt.e());
                    if (shape3 == null) {
                        shapeA = RectangleShapeKt.a();
                    } else {
                        shapeA = RectangleShapeKt.a();
                    }
                    int i215 = i12 >> 3;
                    int i216 = i12 >> 6;
                    a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i215 & 112) | (i215 & 14) | (i216 & 896) | (i216 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                    modifier4 = modifier3;
                    f7 = f6;
                    j13 = j11;
                    j14 = j12;
                    paddingValues3 = paddingValuesB;
                    shape4 = shape3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        } else {
                            jF = j6;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            shape2 = null;
                        }
                        if (i13 != 0) {
                            fA = AppBarDefaults.INSTANCE.a();
                        }
                        if (i15 != 0) {
                            modifier3 = modifier2;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                        } else {
                            j11 = jF;
                            j12 = jB;
                            shape3 = shape2;
                            f6 = fA;
                            paddingValuesB = paddingValues2;
                            modifier3 = modifier2;
                        }
                    }
                    composerS.A();
                    FabPlacement fabPlacement9 = (FabPlacement) composerS.x(ScaffoldKt.e());
                    if (shape3 == null) {
                        shapeA = RectangleShapeKt.a();
                    } else {
                        shapeA = RectangleShapeKt.a();
                    }
                    int i217 = i12 >> 3;
                    int i218 = i12 >> 6;
                    a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i217 & 112) | (i217 & 14) | (i218 & 896) | (i218 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                    modifier4 = modifier3;
                    f7 = f6;
                    j13 = j11;
                    j14 = j12;
                    paddingValues3 = paddingValuesB;
                    shape4 = shape3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
            }
            i17 = 1572864;
            i12 |= i17;
            if ((i12 & 2995931) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                }
                composerS.A();
                FabPlacement fabPlacement10 = (FabPlacement) composerS.x(ScaffoldKt.e());
                if (shape3 == null) {
                    shapeA = RectangleShapeKt.a();
                } else {
                    shapeA = RectangleShapeKt.a();
                }
                int i219 = i12 >> 3;
                int i2110 = i12 >> 6;
                a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i219 & 112) | (i219 & 14) | (i2110 & 896) | (i2110 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                modifier4 = modifier3;
                f7 = f6;
                j13 = j11;
                j14 = j12;
                paddingValues3 = paddingValuesB;
                shape4 = shape3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                }
                composerS.A();
                FabPlacement fabPlacement11 = (FabPlacement) composerS.x(ScaffoldKt.e());
                if (shape3 == null) {
                    shapeA = RectangleShapeKt.a();
                } else {
                    shapeA = RectangleShapeKt.a();
                }
                int i2111 = i12 >> 3;
                int i2112 = i12 >> 6;
                a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i2111 & 112) | (i2111 & 14) | (i2112 & 896) | (i2112 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                modifier4 = modifier3;
                f7 = f6;
                j13 = j11;
                j14 = j12;
                paddingValues3 = paddingValuesB;
                shape4 = shape3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        fA = f;
        i15 = i11 & 32;
        if (i15 != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            paddingValues2 = paddingValues;
        } else {
            paddingValues2 = paddingValues;
            if ((i10 & 458752) == 0) {
                if (composerS.k(paddingValues2)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
        }
        if ((i11 & 64) != 0) {
            if ((i10 & 3670016) == 0) {
                if (composerS.k(content)) {
                    i17 = 1048576;
                } else {
                    i17 = 524288;
                }
            }
            if ((i12 & 2995931) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                }
                composerS.A();
                FabPlacement fabPlacement12 = (FabPlacement) composerS.x(ScaffoldKt.e());
                if (shape3 == null) {
                    shapeA = RectangleShapeKt.a();
                } else {
                    shapeA = RectangleShapeKt.a();
                }
                int i2113 = i12 >> 3;
                int i2114 = i12 >> 6;
                a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i2113 & 112) | (i2113 & 14) | (i2114 & 896) | (i2114 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                modifier4 = modifier3;
                f7 = f6;
                j13 = j11;
                j14 = j12;
                paddingValues3 = paddingValuesB;
                shape4 = shape3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    } else {
                        jF = j6;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        shape2 = null;
                    }
                    if (i13 != 0) {
                        fA = AppBarDefaults.INSTANCE.a();
                    }
                    if (i15 != 0) {
                        modifier3 = modifier2;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                    } else {
                        j11 = jF;
                        j12 = jB;
                        shape3 = shape2;
                        f6 = fA;
                        paddingValuesB = paddingValues2;
                        modifier3 = modifier2;
                    }
                }
                composerS.A();
                FabPlacement fabPlacement13 = (FabPlacement) composerS.x(ScaffoldKt.e());
                if (shape3 == null) {
                    shapeA = RectangleShapeKt.a();
                } else {
                    shapeA = RectangleShapeKt.a();
                }
                int i2115 = i12 >> 3;
                int i2116 = i12 >> 6;
                a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i2115 & 112) | (i2115 & 14) | (i2116 & 896) | (i2116 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
                modifier4 = modifier3;
                f7 = f6;
                j13 = j11;
                j14 = j12;
                paddingValues3 = paddingValuesB;
                shape4 = shape3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
        }
        i17 = 1572864;
        i12 |= i17;
        if ((i12 & 2995931) == 599186) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                } else {
                    jF = j6;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    shape2 = null;
                }
                if (i13 != 0) {
                    fA = AppBarDefaults.INSTANCE.a();
                }
                if (i15 != 0) {
                    modifier3 = modifier2;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                } else {
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                    paddingValuesB = paddingValues2;
                    modifier3 = modifier2;
                }
            } else {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                } else {
                    jF = j6;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    shape2 = null;
                }
                if (i13 != 0) {
                    fA = AppBarDefaults.INSTANCE.a();
                }
                if (i15 != 0) {
                    modifier3 = modifier2;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                } else {
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                    paddingValuesB = paddingValues2;
                    modifier3 = modifier2;
                }
            }
            composerS.A();
            FabPlacement fabPlacement14 = (FabPlacement) composerS.x(ScaffoldKt.e());
            if (shape3 == null) {
                shapeA = RectangleShapeKt.a();
            } else {
                shapeA = RectangleShapeKt.a();
            }
            int i2117 = i12 >> 3;
            int i2118 = i12 >> 6;
            a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i2117 & 112) | (i2117 & 14) | (i2118 & 896) | (i2118 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
            modifier4 = modifier3;
            f7 = f6;
            j13 = j11;
            j14 = j12;
            paddingValues3 = paddingValuesB;
            shape4 = shape3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                } else {
                    jF = j6;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    shape2 = null;
                }
                if (i13 != 0) {
                    fA = AppBarDefaults.INSTANCE.a();
                }
                if (i15 != 0) {
                    modifier3 = modifier2;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                } else {
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                    paddingValuesB = paddingValues2;
                    modifier3 = modifier2;
                }
            } else {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                } else {
                    jF = j6;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    shape2 = null;
                }
                if (i13 != 0) {
                    fA = AppBarDefaults.INSTANCE.a();
                }
                if (i15 != 0) {
                    modifier3 = modifier2;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                } else {
                    j11 = jF;
                    j12 = jB;
                    shape3 = shape2;
                    f6 = fA;
                    paddingValuesB = paddingValues2;
                    modifier3 = modifier2;
                }
            }
            composerS.A();
            FabPlacement fabPlacement15 = (FabPlacement) composerS.x(ScaffoldKt.e());
            if (shape3 == null) {
                shapeA = RectangleShapeKt.a();
            } else {
                shapeA = RectangleShapeKt.a();
            }
            int i2119 = i12 >> 3;
            int i21110 = i12 >> 6;
            a(j11, j12, f6, paddingValuesB, shapeA, modifier3, content, composerS, (i2119 & 112) | (i2119 & 14) | (i21110 & 896) | (i21110 & 7168) | ((i12 << 15) & 458752) | (i12 & 3670016), 0);
            modifier4 = modifier3;
            f7 = f6;
            j13 = j11;
            j14 = j12;
            paddingValues3 = paddingValuesB;
            shape4 = shape3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AppBarKt$BottomAppBar$1(modifier4, j13, j14, shape4, f7, paddingValues3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:104:0x017e  */
    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098  */
    /* JADX WARN: Code duplicated, block: B:55:0x009b  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:91:0x0102  */
    /* JADX WARN: Code duplicated, block: B:94:0x0113  */
    /* JADX WARN: Code duplicated, block: B:96:0x0120  */
    /* JADX WARN: Code duplicated, block: B:98:0x0129  */
    /* JADX WARN: Code duplicated, block: B:99:0x0139  */
    @Composable
    @ComposableInferredTarget
    public static final void c(@Nullable Modifier modifier, long j6, long j10, float f, @Nullable PaddingValues paddingValues, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long jF;
        long jB;
        float fC;
        int i13;
        PaddingValues paddingValues2;
        int i14;
        int i15;
        Modifier modifier3;
        Modifier modifier4;
        PaddingValues paddingValuesB;
        long j11;
        long j12;
        float f6;
        long j13;
        long j14;
        float f7;
        PaddingValues paddingValues3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(1897058582);
        int i16 = i11 & 1;
        if (i16 != 0) {
            i12 = i10 | 6;
            modifier2 = modifier;
        } else if ((i10 & 14) == 0) {
            modifier2 = modifier;
            i12 = (composerS.k(modifier2) ? 4 : 2) | i10;
        } else {
            modifier2 = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                jF = j6;
                int i17 = composerS.q(jF) ? 32 : 16;
                i12 |= i17;
            } else {
                jF = j6;
            }
            i12 |= i17;
        } else {
            jF = j6;
        }
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                jB = j10;
                int i18 = composerS.q(jB) ? 256 : 128;
                i12 |= i18;
            } else {
                jB = j10;
            }
            i12 |= i18;
        } else {
            jB = j10;
        }
        int i19 = i11 & 8;
        if (i19 == 0) {
            if ((i10 & 7168) == 0) {
                fC = f;
                i12 |= composerS.n(fC) ? 2048 : 1024;
            }
            i13 = i11 & 16;
            if (i13 != 0) {
                if ((57344 & i10) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i14 = 16384;
                    } else {
                        i14 = 8192;
                    }
                    i12 |= i14;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 2) != 0) {
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                                i12 &= -113;
                            }
                            if ((i11 & 4) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                                i12 &= -897;
                            }
                            if (i19 != 0) {
                                fC = AppBarDefaults.INSTANCE.c();
                            }
                            if (i13 != 0) {
                                modifier4 = modifier3;
                                paddingValuesB = AppBarDefaults.INSTANCE.b();
                                j11 = jF;
                                j12 = jB;
                                f6 = fC;
                            } else {
                                modifier4 = modifier3;
                            }
                            composerS.A();
                            int i20 = i12 >> 3;
                            a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i20 & 7168) | (i20 & 14) | CpioConstants.C_ISBLK | (i20 & 112) | (i20 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                            modifier2 = modifier4;
                            j13 = j11;
                            j14 = j12;
                            f7 = f6;
                            paddingValues3 = paddingValuesB;
                        } else {
                            composerS.g();
                            if ((i11 & 2) != 0) {
                                i12 &= -113;
                            }
                            if ((i11 & 4) != 0) {
                                i12 &= -897;
                            }
                            modifier4 = modifier2;
                        }
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                        composerS.A();
                        int i21 = i12 >> 3;
                        a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i21 & 7168) | (i21 & 14) | CpioConstants.C_ISBLK | (i21 & 112) | (i21 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                        modifier2 = modifier4;
                        j13 = j11;
                        j14 = j12;
                        f7 = f6;
                        paddingValues3 = paddingValuesB;
                    } else {
                        composerS.g();
                        j13 = jF;
                        j14 = jB;
                        f7 = fC;
                        paddingValues3 = paddingValues2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
                }
                i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i15;
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    }
                    composerS.A();
                    int i22 = i12 >> 3;
                    a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i22 & 7168) | (i22 & 14) | CpioConstants.C_ISBLK | (i22 & 112) | (i22 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                    modifier2 = modifier4;
                    j13 = j11;
                    j14 = j12;
                    f7 = f6;
                    paddingValues3 = paddingValuesB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    }
                    composerS.A();
                    int i23 = i12 >> 3;
                    a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i23 & 7168) | (i23 & 14) | CpioConstants.C_ISBLK | (i23 & 112) | (i23 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                    modifier2 = modifier4;
                    j13 = j11;
                    j14 = j12;
                    f7 = f6;
                    paddingValues3 = paddingValuesB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            paddingValues2 = paddingValues;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    }
                    composerS.A();
                    int i24 = i12 >> 3;
                    a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i24 & 7168) | (i24 & 14) | CpioConstants.C_ISBLK | (i24 & 112) | (i24 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                    modifier2 = modifier4;
                    j13 = j11;
                    j14 = j12;
                    f7 = f6;
                    paddingValues3 = paddingValuesB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    }
                    composerS.A();
                    int i25 = i12 >> 3;
                    a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i25 & 7168) | (i25 & 14) | CpioConstants.C_ISBLK | (i25 & 112) | (i25 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                    modifier2 = modifier4;
                    j13 = j11;
                    j14 = j12;
                    f7 = f6;
                    paddingValues3 = paddingValuesB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
            }
            i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i15;
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                }
                composerS.A();
                int i26 = i12 >> 3;
                a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i26 & 7168) | (i26 & 14) | CpioConstants.C_ISBLK | (i26 & 112) | (i26 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                modifier2 = modifier4;
                j13 = j11;
                j14 = j12;
                f7 = f6;
                paddingValues3 = paddingValuesB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                }
                composerS.A();
                int i27 = i12 >> 3;
                a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i27 & 7168) | (i27 & 14) | CpioConstants.C_ISBLK | (i27 & 112) | (i27 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                modifier2 = modifier4;
                j13 = j11;
                j14 = j12;
                f7 = f6;
                paddingValues3 = paddingValuesB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
        }
        i12 |= 3072;
        fC = f;
        i13 = i11 & 16;
        if (i13 != 0) {
            if ((57344 & i10) == 0) {
                paddingValues2 = paddingValues;
                if (composerS.k(paddingValues2)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i12 |= i14;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    }
                    composerS.A();
                    int i28 = i12 >> 3;
                    a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i28 & 7168) | (i28 & 14) | CpioConstants.C_ISBLK | (i28 & 112) | (i28 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                    modifier2 = modifier4;
                    j13 = j11;
                    j14 = j12;
                    f7 = f6;
                    paddingValues3 = paddingValuesB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i19 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            paddingValuesB = AppBarDefaults.INSTANCE.b();
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                        } else {
                            modifier4 = modifier3;
                            j11 = jF;
                            j12 = jB;
                            f6 = fC;
                            paddingValuesB = paddingValues2;
                        }
                    }
                    composerS.A();
                    int i29 = i12 >> 3;
                    a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i29 & 7168) | (i29 & 14) | CpioConstants.C_ISBLK | (i29 & 112) | (i29 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                    modifier2 = modifier4;
                    j13 = j11;
                    j14 = j12;
                    f7 = f6;
                    paddingValues3 = paddingValuesB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
            }
            i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i15;
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                }
                composerS.A();
                int i210 = i12 >> 3;
                a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i210 & 7168) | (i210 & 14) | CpioConstants.C_ISBLK | (i210 & 112) | (i210 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                modifier2 = modifier4;
                j13 = j11;
                j14 = j12;
                f7 = f6;
                paddingValues3 = paddingValuesB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                }
                composerS.A();
                int i211 = i12 >> 3;
                a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i211 & 7168) | (i211 & 14) | CpioConstants.C_ISBLK | (i211 & 112) | (i211 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                modifier2 = modifier4;
                j13 = j11;
                j14 = j12;
                f7 = f6;
                paddingValues3 = paddingValuesB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        paddingValues2 = paddingValues;
        if ((i11 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(content)) {
                    i15 = 131072;
                } else {
                    i15 = 65536;
                }
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                }
                composerS.A();
                int i212 = i12 >> 3;
                a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i212 & 7168) | (i212 & 14) | CpioConstants.C_ISBLK | (i212 & 112) | (i212 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                modifier2 = modifier4;
                j13 = j11;
                j14 = j12;
                f7 = f6;
                paddingValues3 = paddingValuesB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i19 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        paddingValuesB = AppBarDefaults.INSTANCE.b();
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                    } else {
                        modifier4 = modifier3;
                        j11 = jF;
                        j12 = jB;
                        f6 = fC;
                        paddingValuesB = paddingValues2;
                    }
                }
                composerS.A();
                int i213 = i12 >> 3;
                a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i213 & 7168) | (i213 & 14) | CpioConstants.C_ISBLK | (i213 & 112) | (i213 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
                modifier2 = modifier4;
                j13 = j11;
                j14 = j12;
                f7 = f6;
                paddingValues3 = paddingValuesB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
        }
        i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i15;
        if ((374491 & i12) == 74898) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i19 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                } else {
                    modifier4 = modifier3;
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                    paddingValuesB = paddingValues2;
                }
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i19 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                } else {
                    modifier4 = modifier3;
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                    paddingValuesB = paddingValues2;
                }
            }
            composerS.A();
            int i214 = i12 >> 3;
            a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i214 & 7168) | (i214 & 14) | CpioConstants.C_ISBLK | (i214 & 112) | (i214 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
            modifier2 = modifier4;
            j13 = j11;
            j14 = j12;
            f7 = f6;
            paddingValues3 = paddingValuesB;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i19 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                } else {
                    modifier4 = modifier3;
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                    paddingValuesB = paddingValues2;
                }
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i19 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    paddingValuesB = AppBarDefaults.INSTANCE.b();
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                } else {
                    modifier4 = modifier3;
                    j11 = jF;
                    j12 = jB;
                    f6 = fC;
                    paddingValuesB = paddingValues2;
                }
            }
            composerS.A();
            int i215 = i12 >> 3;
            a(j11, j12, f6, paddingValuesB, RectangleShapeKt.a(), modifier4, content, composerS, (i215 & 7168) | (i215 & 14) | CpioConstants.C_ISBLK | (i215 & 112) | (i215 & 896) | ((i12 << 15) & 458752) | (3670016 & (i12 << 3)), 0);
            modifier2 = modifier4;
            j13 = j11;
            j14 = j12;
            f7 = f6;
            paddingValues3 = paddingValuesB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AppBarKt$TopAppBar$3(modifier2, j13, j14, f7, paddingValues3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0125  */
    /* JADX WARN: Code duplicated, block: B:102:0x0129  */
    /* JADX WARN: Code duplicated, block: B:103:0x0130  */
    /* JADX WARN: Code duplicated, block: B:106:0x0135  */
    /* JADX WARN: Code duplicated, block: B:107:0x0143  */
    /* JADX WARN: Code duplicated, block: B:110:0x0148  */
    /* JADX WARN: Code duplicated, block: B:111:0x0152  */
    /* JADX WARN: Code duplicated, block: B:113:0x0155  */
    /* JADX WARN: Code duplicated, block: B:119:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:121:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0093  */
    /* JADX WARN: Code duplicated, block: B:58:0x009b  */
    /* JADX WARN: Code duplicated, block: B:60:0x009f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:95:0x011a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x011c  */
    /* JADX WARN: Code duplicated, block: B:97:0x011f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0123  */
    @Composable
    @ComposableInferredTarget
    public static final void d(@NotNull p<? super Composer, ? super Integer, l0> title, @Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, long j6, long j10, float f, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        q<? super RowScope, ? super Composer, ? super Integer, l0> qVar2;
        int i16;
        long j11;
        long j12;
        int i17;
        float fC;
        int i18;
        Modifier modifier2;
        p<? super Composer, ? super Integer, l0> pVar2;
        q<? super RowScope, ? super Composer, ? super Integer, l0> qVarA;
        long jF;
        long jB;
        long j13;
        Modifier modifier3;
        p<? super Composer, ? super Integer, l0> pVar3;
        q<? super RowScope, ? super Composer, ? super Integer, l0> qVar3;
        long j14;
        long j15;
        ScopeUpdateScope scopeUpdateScopeU;
        int i19;
        t.j(title, "title");
        Composer composerS = composer.s(-2087748139);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(title) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.k(pVar)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        qVar2 = qVar;
                        if (composerS.k(qVar2)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    if ((57344 & i10) == 0) {
                        j11 = j6;
                        if ((i11 & 16) == 0 || !composerS.q(j11)) {
                            i19 = 8192;
                        } else {
                            i19 = 16384;
                        }
                        i12 |= i19;
                    } else {
                        j11 = j6;
                    }
                    if ((i10 & 458752) == 0) {
                        if ((i11 & 32) == 0) {
                            j12 = j10;
                            int i21 = composerS.q(j12) ? 131072 : 65536;
                            i12 |= i21;
                        } else {
                            j12 = j10;
                        }
                        i12 |= i21;
                    } else {
                        j12 = j10;
                    }
                    i17 = i11 & 64;
                    if (i17 != 0) {
                        i12 |= 1572864;
                        fC = f;
                    } else {
                        fC = f;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.n(fC)) {
                                i18 = 1048576;
                            } else {
                                i18 = 524288;
                            }
                            i12 |= i18;
                        }
                    }
                    if ((i12 & 2995931) == 599186 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i20 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            if (i15 != 0) {
                                qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                            } else {
                                qVarA = qVar2;
                            }
                            if ((i11 & 16) != 0) {
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                                i12 &= -57345;
                            } else {
                                jF = j11;
                            }
                            if ((i11 & 32) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                                i12 &= -458753;
                            } else {
                                jB = j12;
                            }
                            if (i17 != 0) {
                                fC = AppBarDefaults.INSTANCE.c();
                            }
                            j13 = jB;
                        } else {
                            composerS.g();
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            modifier2 = modifier;
                            pVar2 = pVar;
                            qVarA = qVar2;
                            jF = j11;
                            j13 = j12;
                        }
                        composerS.A();
                        int i22 = i12 >> 12;
                        a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i22 & 896) | (i22 & 14) | 1600512 | (i22 & 112) | ((i12 << 12) & 458752), 0);
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        qVar3 = qVarA;
                        j14 = jF;
                        j15 = j13;
                    } else {
                        composerS.g();
                        modifier3 = modifier;
                        pVar3 = pVar;
                        qVar3 = qVar2;
                        j14 = j11;
                        j15 = j12;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
                }
                i12 |= 3072;
                qVar2 = qVar;
                if ((57344 & i10) == 0) {
                    j11 = j6;
                    if ((i11 & 16) == 0) {
                        i19 = 8192;
                    } else {
                        i19 = 8192;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        j12 = j10;
                        if (composerS.q(j12)) {
                        }
                        i12 |= i21;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i21;
                } else {
                    j12 = j10;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    fC = f;
                } else {
                    fC = f;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.n(fC)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i12 & 2995931) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    }
                    composerS.A();
                    int i23 = i12 >> 12;
                    a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i23 & 896) | (i23 & 14) | 1600512 | (i23 & 112) | ((i12 << 12) & 458752), 0);
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    qVar3 = qVarA;
                    j14 = jF;
                    j15 = j13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    }
                    composerS.A();
                    int i24 = i12 >> 12;
                    a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i24 & 896) | (i24 & 14) | 1600512 | (i24 & 112) | ((i12 << 12) & 458752), 0);
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    qVar3 = qVarA;
                    j14 = jF;
                    j15 = j13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
            }
            i12 |= 384;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    qVar2 = qVar;
                    if (composerS.k(qVar2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((57344 & i10) == 0) {
                    j11 = j6;
                    if ((i11 & 16) == 0) {
                        i19 = 8192;
                    } else {
                        i19 = 8192;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        j12 = j10;
                        if (composerS.q(j12)) {
                        }
                        i12 |= i21;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i21;
                } else {
                    j12 = j10;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    fC = f;
                } else {
                    fC = f;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.n(fC)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i12 & 2995931) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    }
                    composerS.A();
                    int i25 = i12 >> 12;
                    a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i25 & 896) | (i25 & 14) | 1600512 | (i25 & 112) | ((i12 << 12) & 458752), 0);
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    qVar3 = qVarA;
                    j14 = jF;
                    j15 = j13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    }
                    composerS.A();
                    int i26 = i12 >> 12;
                    a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i26 & 896) | (i26 & 14) | 1600512 | (i26 & 112) | ((i12 << 12) & 458752), 0);
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    qVar3 = qVarA;
                    j14 = jF;
                    j15 = j13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
            }
            i12 |= 3072;
            qVar2 = qVar;
            if ((57344 & i10) == 0) {
                j11 = j6;
                if ((i11 & 16) == 0) {
                    i19 = 8192;
                } else {
                    i19 = 8192;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i21;
                } else {
                    j12 = j10;
                }
                i12 |= i21;
            } else {
                j12 = j10;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                fC = f;
            } else {
                fC = f;
                if ((i10 & 3670016) == 0) {
                    if (composerS.n(fC)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i12 & 2995931) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                }
                composerS.A();
                int i27 = i12 >> 12;
                a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i27 & 896) | (i27 & 14) | 1600512 | (i27 & 112) | ((i12 << 12) & 458752), 0);
                modifier3 = modifier2;
                pVar3 = pVar2;
                qVar3 = qVarA;
                j14 = jF;
                j15 = j13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                }
                composerS.A();
                int i28 = i12 >> 12;
                a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i28 & 896) | (i28 & 14) | 1600512 | (i28 & 112) | ((i12 << 12) & 458752), 0);
                modifier3 = modifier2;
                pVar3 = pVar2;
                qVar3 = qVarA;
                j14 = jF;
                j15 = j13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.k(pVar)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    qVar2 = qVar;
                    if (composerS.k(qVar2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((57344 & i10) == 0) {
                    j11 = j6;
                    if ((i11 & 16) == 0) {
                        i19 = 8192;
                    } else {
                        i19 = 8192;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        j12 = j10;
                        if (composerS.q(j12)) {
                        }
                        i12 |= i21;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i21;
                } else {
                    j12 = j10;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    fC = f;
                } else {
                    fC = f;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.n(fC)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i12 & 2995931) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    }
                    composerS.A();
                    int i29 = i12 >> 12;
                    a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i29 & 896) | (i29 & 14) | 1600512 | (i29 & 112) | ((i12 << 12) & 458752), 0);
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    qVar3 = qVarA;
                    j14 = jF;
                    j15 = j13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                        } else {
                            qVarA = qVar2;
                        }
                        if ((i11 & 16) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i12 &= -57345;
                        } else {
                            jF = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if (i17 != 0) {
                            fC = AppBarDefaults.INSTANCE.c();
                        }
                        j13 = jB;
                    }
                    composerS.A();
                    int i210 = i12 >> 12;
                    a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i210 & 896) | (i210 & 14) | 1600512 | (i210 & 112) | ((i12 << 12) & 458752), 0);
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    qVar3 = qVarA;
                    j14 = jF;
                    j15 = j13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
            }
            i12 |= 3072;
            qVar2 = qVar;
            if ((57344 & i10) == 0) {
                j11 = j6;
                if ((i11 & 16) == 0) {
                    i19 = 8192;
                } else {
                    i19 = 8192;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i21;
                } else {
                    j12 = j10;
                }
                i12 |= i21;
            } else {
                j12 = j10;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                fC = f;
            } else {
                fC = f;
                if ((i10 & 3670016) == 0) {
                    if (composerS.n(fC)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i12 & 2995931) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                }
                composerS.A();
                int i211 = i12 >> 12;
                a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i211 & 896) | (i211 & 14) | 1600512 | (i211 & 112) | ((i12 << 12) & 458752), 0);
                modifier3 = modifier2;
                pVar3 = pVar2;
                qVar3 = qVarA;
                j14 = jF;
                j15 = j13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                }
                composerS.A();
                int i212 = i12 >> 12;
                a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i212 & 896) | (i212 & 14) | 1600512 | (i212 & 112) | ((i12 << 12) & 458752), 0);
                modifier3 = modifier2;
                pVar3 = pVar2;
                qVar3 = qVarA;
                j14 = jF;
                j15 = j13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
        }
        i12 |= 384;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                qVar2 = qVar;
                if (composerS.k(qVar2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            if ((57344 & i10) == 0) {
                j11 = j6;
                if ((i11 & 16) == 0) {
                    i19 = 8192;
                } else {
                    i19 = 8192;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i21;
                } else {
                    j12 = j10;
                }
                i12 |= i21;
            } else {
                j12 = j10;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                fC = f;
            } else {
                fC = f;
                if ((i10 & 3670016) == 0) {
                    if (composerS.n(fC)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i12 & 2995931) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                }
                composerS.A();
                int i213 = i12 >> 12;
                a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i213 & 896) | (i213 & 14) | 1600512 | (i213 & 112) | ((i12 << 12) & 458752), 0);
                modifier3 = modifier2;
                pVar3 = pVar2;
                qVar3 = qVarA;
                j14 = jF;
                j15 = j13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                    } else {
                        qVarA = qVar2;
                    }
                    if ((i11 & 16) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i12 &= -57345;
                    } else {
                        jF = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if (i17 != 0) {
                        fC = AppBarDefaults.INSTANCE.c();
                    }
                    j13 = jB;
                }
                composerS.A();
                int i214 = i12 >> 12;
                a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i214 & 896) | (i214 & 14) | 1600512 | (i214 & 112) | ((i12 << 12) & 458752), 0);
                modifier3 = modifier2;
                pVar3 = pVar2;
                qVar3 = qVarA;
                j14 = jF;
                j15 = j13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
        }
        i12 |= 3072;
        qVar2 = qVar;
        if ((57344 & i10) == 0) {
            j11 = j6;
            if ((i11 & 16) == 0) {
                i19 = 8192;
            } else {
                i19 = 8192;
            }
            i12 |= i19;
        } else {
            j11 = j6;
        }
        if ((i10 & 458752) == 0) {
            if ((i11 & 32) == 0) {
                j12 = j10;
                if (composerS.q(j12)) {
                }
                i12 |= i21;
            } else {
                j12 = j10;
            }
            i12 |= i21;
        } else {
            j12 = j10;
        }
        i17 = i11 & 64;
        if (i17 != 0) {
            i12 |= 1572864;
            fC = f;
        } else {
            fC = f;
            if ((i10 & 3670016) == 0) {
                if (composerS.n(fC)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
        }
        if ((i12 & 2995931) == 599186) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                } else {
                    qVarA = qVar2;
                }
                if ((i11 & 16) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -57345;
                } else {
                    jF = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if (i17 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                j13 = jB;
            } else {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                } else {
                    qVarA = qVar2;
                }
                if ((i11 & 16) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -57345;
                } else {
                    jF = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if (i17 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                j13 = jB;
            }
            composerS.A();
            int i215 = i12 >> 12;
            a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i215 & 896) | (i215 & 14) | 1600512 | (i215 & 112) | ((i12 << 12) & 458752), 0);
            modifier3 = modifier2;
            pVar3 = pVar2;
            qVar3 = qVarA;
            j14 = jF;
            j15 = j13;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                } else {
                    qVarA = qVar2;
                }
                if ((i11 & 16) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -57345;
                } else {
                    jF = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if (i17 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                j13 = jB;
            } else {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    qVarA = ComposableSingletons$AppBarKt.INSTANCE.a();
                } else {
                    qVarA = qVar2;
                }
                if ((i11 & 16) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i12 &= -57345;
                } else {
                    jF = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if (i17 != 0) {
                    fC = AppBarDefaults.INSTANCE.c();
                }
                j13 = jB;
            }
            composerS.A();
            int i216 = i12 >> 12;
            a(jF, j13, fC, AppBarDefaults.INSTANCE.b(), RectangleShapeKt.a(), modifier2, ComposableLambdaKt.b(composerS, -1484077694, true, new AppBarKt$TopAppBar$1(pVar2, i12, title, qVarA)), composerS, (i216 & 896) | (i216 & 14) | 1600512 | (i216 & 112) | ((i12 << 12) & 458752), 0);
            modifier3 = modifier2;
            pVar3 = pVar2;
            qVar3 = qVarA;
            j14 = jF;
            j15 = j13;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AppBarKt$TopAppBar$2(title, modifier3, pVar3, qVar3, j14, j15, fC, i10, i11));
    }

    @NotNull
    public static final u<Float, Float> l(float f, float f6, float f7) {
        Float fValueOf;
        Float fValueOf2;
        u uVarA;
        Float fValueOf3;
        Float fValueOf4;
        float f10 = f6 * f6;
        float f11 = f7 * f7;
        float f12 = (f * f) + f10;
        float f13 = f10 * f11 * (f12 - f11);
        float f14 = f * f11;
        double d = f13;
        float fSqrt = (f14 - ((float) Math.sqrt(d))) / f12;
        float fSqrt2 = (f14 + ((float) Math.sqrt(d))) / f12;
        float fSqrt3 = (float) Math.sqrt(f11 - (fSqrt * fSqrt));
        float fSqrt4 = (float) Math.sqrt(f11 - (fSqrt2 * fSqrt2));
        if (f6 > 0.0f) {
            if (fSqrt3 > fSqrt4) {
                fValueOf3 = Float.valueOf(fSqrt);
                fValueOf4 = Float.valueOf(fSqrt3);
            } else {
                fValueOf3 = Float.valueOf(fSqrt2);
                fValueOf4 = Float.valueOf(fSqrt4);
            }
            uVarA = a0.a(fValueOf3, fValueOf4);
        } else {
            if (fSqrt3 < fSqrt4) {
                fValueOf = Float.valueOf(fSqrt);
                fValueOf2 = Float.valueOf(fSqrt3);
            } else {
                fValueOf = Float.valueOf(fSqrt2);
                fValueOf2 = Float.valueOf(fSqrt4);
            }
            uVarA = a0.a(fValueOf, fValueOf2);
        }
        float fFloatValue = ((Number) uVarA.a()).floatValue();
        float fFloatValue2 = ((Number) uVarA.b()).floatValue();
        if (fFloatValue < f) {
            fFloatValue2 = -fFloatValue2;
        }
        return a0.a(Float.valueOf(fFloatValue), Float.valueOf(fFloatValue2));
    }
}
