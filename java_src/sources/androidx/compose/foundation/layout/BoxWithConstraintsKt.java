package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class BoxWithConstraintsKt {
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0091  */
    /* JADX WARN: Code duplicated, block: B:57:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00df  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    @Composable
    @UiComposable
    public static final void a(@Nullable Modifier modifier, @Nullable Alignment alignment, boolean z6, @NotNull q<? super BoxWithConstraintsScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Modifier modifier2;
        Alignment alignmentO;
        MeasurePolicy measurePolicyH;
        boolean zK;
        Object objH;
        boolean z10;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(1781813501);
        int i16 = i11 & 1;
        if (i16 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i17 = i11 & 2;
        if (i17 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(alignment) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.m(z6)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i11 & 8) != 0) {
                    i12 |= 3072;
                } else if ((i10 & 7168) == 0) {
                    if (composerS.k(content)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i12 |= i15;
                }
                if ((i12 & 5851) == 1170 || !composerS.b()) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i17 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment;
                    }
                    if (i13 != 0) {
                        z6 = false;
                    }
                    int i18 = i12 >> 3;
                    measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i18 & 112) | (i18 & 14));
                    composerS.G(511388516);
                    zK = composerS.k(content) | composerS.k(measurePolicyH);
                    objH = composerS.H();
                    if (zK || objH == Composer.Companion.a()) {
                        objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
                } else {
                    composerS.g();
                    modifier2 = modifier;
                    alignmentO = alignment;
                }
                z10 = z6;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BoxWithConstraintsKt$BoxWithConstraints$2(modifier2, alignmentO, z10, content, i10, i11));
            }
            i12 |= 384;
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            if ((i12 & 5851) == 1170) {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i17 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment;
                }
                if (i13 != 0) {
                    z6 = false;
                }
                int i19 = i12 >> 3;
                measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i19 & 112) | (i19 & 14));
                composerS.G(511388516);
                zK = composerS.k(content) | composerS.k(measurePolicyH);
                objH = composerS.H();
                if (zK) {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                } else {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                }
                composerS.Q();
                SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
            } else {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i17 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment;
                }
                if (i13 != 0) {
                    z6 = false;
                }
                int i110 = i12 >> 3;
                measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i110 & 112) | (i110 & 14));
                composerS.G(511388516);
                zK = composerS.k(content) | composerS.k(measurePolicyH);
                objH = composerS.H();
                if (zK) {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                } else {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                }
                composerS.Q();
                SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
            }
            z10 = z6;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BoxWithConstraintsKt$BoxWithConstraints$2(modifier2, alignmentO, z10, content, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.m(z6)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            if ((i12 & 5851) == 1170) {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i17 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment;
                }
                if (i13 != 0) {
                    z6 = false;
                }
                int i111 = i12 >> 3;
                measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i111 & 112) | (i111 & 14));
                composerS.G(511388516);
                zK = composerS.k(content) | composerS.k(measurePolicyH);
                objH = composerS.H();
                if (zK) {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                } else {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                }
                composerS.Q();
                SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
            } else {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i17 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment;
                }
                if (i13 != 0) {
                    z6 = false;
                }
                int i112 = i12 >> 3;
                measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i112 & 112) | (i112 & 14));
                composerS.G(511388516);
                zK = composerS.k(content) | composerS.k(measurePolicyH);
                objH = composerS.H();
                if (zK) {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                } else {
                    objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                    composerS.z(objH);
                }
                composerS.Q();
                SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
            }
            z10 = z6;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BoxWithConstraintsKt$BoxWithConstraints$2(modifier2, alignmentO, z10, content, i10, i11));
        }
        i12 |= 384;
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(content)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i12 |= i15;
        }
        if ((i12 & 5851) == 1170) {
            if (i16 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i17 != 0) {
                alignmentO = Alignment.Companion.o();
            } else {
                alignmentO = alignment;
            }
            if (i13 != 0) {
                z6 = false;
            }
            int i113 = i12 >> 3;
            measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i113 & 112) | (i113 & 14));
            composerS.G(511388516);
            zK = composerS.k(content) | composerS.k(measurePolicyH);
            objH = composerS.H();
            if (zK) {
                objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                composerS.z(objH);
            } else {
                objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                composerS.z(objH);
            }
            composerS.Q();
            SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
        } else {
            if (i16 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i17 != 0) {
                alignmentO = Alignment.Companion.o();
            } else {
                alignmentO = alignment;
            }
            if (i13 != 0) {
                z6 = false;
            }
            int i114 = i12 >> 3;
            measurePolicyH = BoxKt.h(alignmentO, z6, composerS, (i114 & 112) | (i114 & 14));
            composerS.G(511388516);
            zK = composerS.k(content) | composerS.k(measurePolicyH);
            objH = composerS.H();
            if (zK) {
                objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                composerS.z(objH);
            } else {
                objH = new BoxWithConstraintsKt$BoxWithConstraints$1$1(measurePolicyH, content, i12);
                composerS.z(objH);
            }
            composerS.Q();
            SubcomposeLayoutKt.a(modifier2, (e8.p) objH, composerS, i12 & 14, 0);
        }
        z10 = z6;
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BoxWithConstraintsKt$BoxWithConstraints$2(modifier2, alignmentO, z10, content, i10, i11));
    }
}
