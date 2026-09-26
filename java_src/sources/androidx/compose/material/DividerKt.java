package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class DividerKt {
    private static final float DividerAlpha = 0.12f;

    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:53:0x0090  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:76:0x010b  */
    /* JADX WARN: Code duplicated, block: B:77:0x0121  */
    /* JADX WARN: Code duplicated, block: B:82:0x014e  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    @ComposableTarget
    @Composable
    public static final void a(@Nullable Modifier modifier, long j6, float f, float f6, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long j10;
        float f7;
        int i13;
        float f10;
        int i14;
        Modifier modifier3;
        long jL;
        Modifier modifierM;
        float f11;
        float f12;
        float f13;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(-1249392198);
        int i15 = i11 & 1;
        if (i15 != 0) {
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
                j10 = j6;
                int i16 = composerS.q(j10) ? 32 : 16;
                i12 |= i16;
            } else {
                j10 = j6;
            }
            i12 |= i16;
        } else {
            j10 = j6;
        }
        int i17 = i11 & 4;
        if (i17 == 0) {
            if ((i10 & 896) == 0) {
                f7 = f;
                i12 |= composerS.n(f7) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    f10 = f6;
                    if (composerS.n(f10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((i12 & 5851) == 1170 || !composerS.b()) {
                    composerS.J();
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i15 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            jL = j10;
                        }
                        if (i17 != 0) {
                            f7 = Dp.f(1);
                        }
                        if (i13 != 0) {
                            f10 = Dp.f(0);
                        }
                    } else {
                        composerS.g();
                        modifier3 = modifier2;
                        jL = j10;
                    }
                    composerS.A();
                    if (f10 == 0.0f) {
                        modifierM = Modifier.Companion;
                    } else {
                        modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    composerS.G(1228914189);
                    if (Dp.i(f7, Dp.Companion.a())) {
                        f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
                    } else {
                        f11 = f7;
                    }
                    composerS.Q();
                    BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
                } else {
                    composerS.g();
                    modifier3 = modifier2;
                    jL = j10;
                }
                f12 = f7;
                f13 = f10;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DividerKt$Divider$1(modifier3, jL, f12, f13, i10, i11));
            }
            i12 |= 3072;
            f10 = f6;
            if ((i12 & 5851) == 1170) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                }
                composerS.A();
                if (f10 == 0.0f) {
                    modifierM = Modifier.Companion;
                } else {
                    modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
                }
                composerS.G(1228914189);
                if (Dp.i(f7, Dp.Companion.a())) {
                    f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
                } else {
                    f11 = f7;
                }
                composerS.Q();
                BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                }
                composerS.A();
                if (f10 == 0.0f) {
                    modifierM = Modifier.Companion;
                } else {
                    modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
                }
                composerS.G(1228914189);
                if (Dp.i(f7, Dp.Companion.a())) {
                    f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
                } else {
                    f11 = f7;
                }
                composerS.Q();
                BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
            }
            f12 = f7;
            f13 = f10;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DividerKt$Divider$1(modifier3, jL, f12, f13, i10, i11));
        }
        i12 |= 384;
        f7 = f;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                f10 = f6;
                if (composerS.n(f10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i12 & 5851) == 1170) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                }
                composerS.A();
                if (f10 == 0.0f) {
                    modifierM = Modifier.Companion;
                } else {
                    modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
                }
                composerS.G(1228914189);
                if (Dp.i(f7, Dp.Companion.a())) {
                    f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
                } else {
                    f11 = f7;
                }
                composerS.Q();
                BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        jL = j10;
                    }
                    if (i17 != 0) {
                        f7 = Dp.f(1);
                    }
                    if (i13 != 0) {
                        f10 = Dp.f(0);
                    }
                }
                composerS.A();
                if (f10 == 0.0f) {
                    modifierM = Modifier.Companion;
                } else {
                    modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
                }
                composerS.G(1228914189);
                if (Dp.i(f7, Dp.Companion.a())) {
                    f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
                } else {
                    f11 = f7;
                }
                composerS.Q();
                BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
            }
            f12 = f7;
            f13 = f10;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DividerKt$Divider$1(modifier3, jL, f12, f13, i10, i11));
        }
        i12 |= 3072;
        f10 = f6;
        if ((i12 & 5851) == 1170) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    jL = j10;
                }
                if (i17 != 0) {
                    f7 = Dp.f(1);
                }
                if (i13 != 0) {
                    f10 = Dp.f(0);
                }
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    jL = j10;
                }
                if (i17 != 0) {
                    f7 = Dp.f(1);
                }
                if (i13 != 0) {
                    f10 = Dp.f(0);
                }
            }
            composerS.A();
            if (f10 == 0.0f) {
                modifierM = Modifier.Companion;
            } else {
                modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
            }
            composerS.G(1228914189);
            if (Dp.i(f7, Dp.Companion.a())) {
                f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
            } else {
                f11 = f7;
            }
            composerS.Q();
            BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    jL = j10;
                }
                if (i17 != 0) {
                    f7 = Dp.f(1);
                }
                if (i13 != 0) {
                    f10 = Dp.f(0);
                }
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jL = Color.l(MaterialTheme.INSTANCE.a(composerS, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    jL = j10;
                }
                if (i17 != 0) {
                    f7 = Dp.f(1);
                }
                if (i13 != 0) {
                    f10 = Dp.f(0);
                }
            }
            composerS.A();
            if (f10 == 0.0f) {
                modifierM = Modifier.Companion;
            } else {
                modifierM = PaddingKt.m(Modifier.Companion, f10, 0.0f, 0.0f, 0.0f, 14, null);
            }
            composerS.G(1228914189);
            if (Dp.i(f7, Dp.Companion.a())) {
                f11 = Dp.f(1.0f / ((Density) composerS.x(CompositionLocalsKt.e())).getDensity());
            } else {
                f11 = f7;
            }
            composerS.Q();
            BoxKt.a(BackgroundKt.b(SizeKt.o(SizeKt.n(modifier3.B(modifierM), 0.0f, 1, null), f11), jL, null, 2, null), composerS, 0);
        }
        f12 = f7;
        f13 = f10;
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new DividerKt$Divider$1(modifier3, jL, f12, f13, i10, i11));
    }
}
