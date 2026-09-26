package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class VectorComposeKt {
    @VectorComposable
    @Composable
    public static final void b(@NotNull List<? extends PathNode> pathData, int i10, @Nullable String str, @Nullable Brush brush, float f, @Nullable Brush brush2, float f6, float f7, int i11, int i12, float f10, float f11, float f12, float f13, @Nullable Composer composer, int i13, int i14, int i15) {
        t.j(pathData, "pathData");
        Composer composerS = composer.s(-1478270750);
        int iB = (i15 & 2) != 0 ? VectorKt.b() : i10;
        String str2 = (i15 & 4) != 0 ? "" : str;
        Brush brush3 = (i15 & 8) != 0 ? null : brush;
        float f14 = (i15 & 16) != 0 ? 1.0f : f;
        Brush brush4 = (i15 & 32) != 0 ? null : brush2;
        float f15 = (i15 & 64) != 0 ? 1.0f : f6;
        float f16 = (i15 & 128) != 0 ? 0.0f : f7;
        int iC = (i15 & 256) != 0 ? VectorKt.c() : i11;
        int iD = (i15 & 512) != 0 ? VectorKt.d() : i12;
        float f17 = (i15 & 1024) != 0 ? 4.0f : f10;
        float f18 = (i15 & 2048) != 0 ? 0.0f : f11;
        float f19 = (i15 & 4096) != 0 ? 1.0f : f12;
        float f20 = (i15 & 8192) != 0 ? 0.0f : f13;
        VectorComposeKt$Path$1 vectorComposeKt$Path$1 = VectorComposeKt$Path$1.INSTANCE;
        composerS.G(1886828752);
        if (!(composerS.t() instanceof VectorApplier)) {
            ComposablesKt.c();
        }
        composerS.v();
        if (composerS.r()) {
            composerS.w(new VectorComposeKt$Path9cdaXJ4$$inlined$ComposeNode$1(vectorComposeKt$Path$1));
        } else {
            composerS.c();
        }
        Composer composerA = Updater.a(composerS);
        Updater.e(composerA, str2, VectorComposeKt$Path$2$1.INSTANCE);
        Updater.e(composerA, pathData, VectorComposeKt$Path$2$2.INSTANCE);
        Updater.e(composerA, PathFillType.c(iB), VectorComposeKt$Path$2$3.INSTANCE);
        Updater.e(composerA, brush3, VectorComposeKt$Path$2$4.INSTANCE);
        Updater.e(composerA, Float.valueOf(f14), VectorComposeKt$Path$2$5.INSTANCE);
        Updater.e(composerA, brush4, VectorComposeKt$Path$2$6.INSTANCE);
        Updater.e(composerA, Float.valueOf(f15), VectorComposeKt$Path$2$7.INSTANCE);
        Updater.e(composerA, Float.valueOf(f16), VectorComposeKt$Path$2$8.INSTANCE);
        Updater.e(composerA, StrokeJoin.d(iD), VectorComposeKt$Path$2$9.INSTANCE);
        Updater.e(composerA, StrokeCap.d(iC), VectorComposeKt$Path$2$10.INSTANCE);
        Updater.e(composerA, Float.valueOf(f17), VectorComposeKt$Path$2$11.INSTANCE);
        Updater.e(composerA, Float.valueOf(f18), VectorComposeKt$Path$2$12.INSTANCE);
        Updater.e(composerA, Float.valueOf(f19), VectorComposeKt$Path$2$13.INSTANCE);
        Updater.e(composerA, Float.valueOf(f20), VectorComposeKt$Path$2$14.INSTANCE);
        composerS.d();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new VectorComposeKt$Path$3(pathData, iB, str2, brush3, f14, brush4, f15, f16, iC, iD, f17, f18, f19, f20, i13, i14, i15));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0121  */
    /* JADX WARN: Code duplicated, block: B:102:0x0126  */
    /* JADX WARN: Code duplicated, block: B:108:0x014b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0155  */
    /* JADX WARN: Code duplicated, block: B:117:0x016e A[PHI: r1 r3 r4 r6 r7 r9 r13 r14 r15
      0x016e: PHI (r1v19 java.lang.String) = (r1v3 java.lang.String), (r1v20 java.lang.String) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r3v26 int) = (r3v22 int), (r3v27 int) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r4v6 float) = (r4v2 float), (r4v7 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r6v10 float) = (r6v6 float), (r6v11 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r7v14 float) = (r7v10 float), (r7v16 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r9v10 float) = (r9v6 float), (r9v11 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r13v6 float) = (r13v3 float), (r13v2 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r14v9 float) = (r14v6 float), (r14v10 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r15v7 float) = (r15v4 float), (r15v3 float) binds: [B:142:0x019d, B:116:0x0162] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:118:0x0171 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0173  */
    /* JADX WARN: Code duplicated, block: B:120:0x0176  */
    /* JADX WARN: Code duplicated, block: B:123:0x017b  */
    /* JADX WARN: Code duplicated, block: B:124:0x017d  */
    /* JADX WARN: Code duplicated, block: B:126:0x0181  */
    /* JADX WARN: Code duplicated, block: B:127:0x0183  */
    /* JADX WARN: Code duplicated, block: B:129:0x0187  */
    /* JADX WARN: Code duplicated, block: B:132:0x018c  */
    /* JADX WARN: Code duplicated, block: B:135:0x0190  */
    /* JADX WARN: Code duplicated, block: B:137:0x0194  */
    /* JADX WARN: Code duplicated, block: B:138:0x0196  */
    /* JADX WARN: Code duplicated, block: B:141:0x019b  */
    /* JADX WARN: Code duplicated, block: B:143:0x019f  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:155:0x0244  */
    /* JADX WARN: Code duplicated, block: B:157:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:48:0x0087  */
    /* JADX WARN: Code duplicated, block: B:50:0x008c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0092  */
    /* JADX WARN: Code duplicated, block: B:54:0x009a  */
    /* JADX WARN: Code duplicated, block: B:55:0x009d  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00da  */
    /* JADX WARN: Code duplicated, block: B:75:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:84:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:89:0x0105  */
    /* JADX WARN: Code duplicated, block: B:92:0x010d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0113  */
    /* JADX WARN: Code duplicated, block: B:97:0x0118  */
    /* JADX WARN: Code duplicated, block: B:99:0x011e  */
    @VectorComposable
    @Composable
    public static final void a(@Nullable String str, float f, float f6, float f7, float f10, float f11, float f12, float f13, @Nullable List<? extends PathNode> list, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        float f14;
        int i16;
        int i17;
        float f15;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        String str2;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        List<? extends PathNode> listE;
        VectorComposeKt$Group$1 vectorComposeKt$Group$1;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        String str3;
        List<? extends PathNode> list2;
        float f26;
        float f27;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(-213417674);
        int i27 = i11 & 1;
        if (i27 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(str) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i28 = i11 & 2;
        if (i28 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.n(f) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.n(f6)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        f14 = f7;
                        if (composerS.n(f14)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((57344 & i10) == 0) {
                            f15 = f10;
                            if (composerS.n(f15)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        i19 = i11 & 32;
                        if (i19 != 0) {
                            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i10 & 458752) == 0) {
                            if (composerS.n(f11)) {
                                i20 = 131072;
                            } else {
                                i20 = 65536;
                            }
                            i12 |= i20;
                        }
                        i21 = i11 & 64;
                        if (i21 != 0) {
                            i12 |= 1572864;
                        } else if ((i10 & 3670016) == 0) {
                            if (composerS.n(f12)) {
                                i22 = 1048576;
                            } else {
                                i22 = 524288;
                            }
                            i12 |= i22;
                        }
                        i23 = i11 & 128;
                        if (i23 != 0) {
                            i12 |= 12582912;
                        } else if ((i10 & 29360128) == 0) {
                            if (composerS.n(f13)) {
                                i24 = 8388608;
                            } else {
                                i24 = 4194304;
                            }
                            i12 |= i24;
                        }
                        i25 = i11 & 256;
                        if (i25 != 0) {
                            i12 |= 33554432;
                        }
                        if ((i11 & 512) != 0) {
                            if ((1879048192 & i10) == 0) {
                                if (composerS.k(content)) {
                                    i26 = 536870912;
                                } else {
                                    i26 = 268435456;
                                }
                            }
                            if (i25 != 256 && (1533916891 & i12) == 306783378 && composerS.b()) {
                                composerS.g();
                                str3 = str;
                                f26 = f;
                                f21 = f6;
                                f23 = f11;
                                f24 = f12;
                                f22 = f13;
                                list2 = list;
                                f27 = f14;
                                f25 = f15;
                            } else {
                                composerS.J();
                                if ((i10 & 1) != 0 || composerS.h()) {
                                    if (i27 != 0) {
                                        str2 = "";
                                    } else {
                                        str2 = str;
                                    }
                                    if (i28 != 0) {
                                        f16 = 0.0f;
                                    } else {
                                        f16 = f;
                                    }
                                    if (i13 != 0) {
                                        f17 = 0.0f;
                                    } else {
                                        f17 = f6;
                                    }
                                    if (i15 != 0) {
                                        f14 = 0.0f;
                                    }
                                    if (i17 != 0) {
                                        f15 = 1.0f;
                                    }
                                    f18 = i19 == 0 ? f11 : 1.0f;
                                    if (i21 != 0) {
                                        f19 = 0.0f;
                                    } else {
                                        f19 = f12;
                                    }
                                    f20 = i23 == 0 ? f13 : 0.0f;
                                    if (i25 != 0) {
                                        listE = VectorKt.e();
                                        i12 &= -234881025;
                                    }
                                    composerS.A();
                                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                                    composerS.G(-548224868);
                                    if (!(composerS.t() instanceof VectorApplier)) {
                                        ComposablesKt.c();
                                    }
                                    composerS.v();
                                    if (composerS.r()) {
                                        composerS.w(vectorComposeKt$Group$1);
                                    } else {
                                        composerS.c();
                                    }
                                    Composer composerA = Updater.a(composerS);
                                    Updater.e(composerA, str2, VectorComposeKt$Group$2$1.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                                    Updater.e(composerA, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                                    Updater.e(composerA, listE, VectorComposeKt$Group$2$9.INSTANCE);
                                    composerS.G(-983907633);
                                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                                    composerS.Q();
                                    composerS.d();
                                    composerS.Q();
                                    f21 = f17;
                                    f22 = f20;
                                    f23 = f18;
                                    f24 = f19;
                                    f25 = f15;
                                    str3 = str2;
                                    list2 = listE;
                                    f26 = f16;
                                    f27 = f14;
                                } else {
                                    composerS.g();
                                    if (i25 != 0) {
                                        i12 &= -234881025;
                                    }
                                    str2 = str;
                                    f16 = f;
                                    f17 = f6;
                                    f18 = f11;
                                    f19 = f12;
                                    f20 = f13;
                                }
                                listE = list;
                                composerS.A();
                                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                                composerS.G(-548224868);
                                if (!(composerS.t() instanceof VectorApplier)) {
                                    ComposablesKt.c();
                                }
                                composerS.v();
                                if (composerS.r()) {
                                    composerS.w(vectorComposeKt$Group$1);
                                } else {
                                    composerS.c();
                                }
                                Composer composerA2 = Updater.a(composerS);
                                Updater.e(composerA2, str2, VectorComposeKt$Group$2$1.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                                Updater.e(composerA2, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                                Updater.e(composerA2, listE, VectorComposeKt$Group$2$9.INSTANCE);
                                composerS.G(-983907633);
                                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                                composerS.Q();
                                composerS.d();
                                composerS.Q();
                                f21 = f17;
                                f22 = f20;
                                f23 = f18;
                                f24 = f19;
                                f25 = f15;
                                str3 = str2;
                                list2 = listE;
                                f26 = f16;
                                f27 = f14;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                        }
                        i26 = 805306368;
                        i12 |= i26;
                        if (i25 != 256) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA3 = Updater.a(composerS);
                            Updater.e(composerA3, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA3, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA3, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA4 = Updater.a(composerS);
                            Updater.e(composerA4, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA4, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA4, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    f15 = f10;
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i10 & 458752) == 0) {
                        if (composerS.n(f11)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    i21 = i11 & 64;
                    if (i21 != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.n(f12)) {
                            i22 = 1048576;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    }
                    i23 = i11 & 128;
                    if (i23 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.n(f13)) {
                            i24 = 8388608;
                        } else {
                            i24 = 4194304;
                        }
                        i12 |= i24;
                    }
                    i25 = i11 & 256;
                    if (i25 != 0) {
                        i12 |= 33554432;
                    }
                    if ((i11 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i26 = 536870912;
                            } else {
                                i26 = 268435456;
                            }
                        }
                        if (i25 != 256) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA5 = Updater.a(composerS);
                            Updater.e(composerA5, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA5, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA5, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA6 = Updater.a(composerS);
                            Updater.e(composerA6, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA6, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA6, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                    }
                    i26 = 805306368;
                    i12 |= i26;
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA7 = Updater.a(composerS);
                        Updater.e(composerA7, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA7, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA7, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA8 = Updater.a(composerS);
                        Updater.e(composerA8, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA8, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA8, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i12 |= 3072;
                f14 = f7;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        f15 = f10;
                        if (composerS.n(f15)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i10 & 458752) == 0) {
                        if (composerS.n(f11)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    i21 = i11 & 64;
                    if (i21 != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.n(f12)) {
                            i22 = 1048576;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    }
                    i23 = i11 & 128;
                    if (i23 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.n(f13)) {
                            i24 = 8388608;
                        } else {
                            i24 = 4194304;
                        }
                        i12 |= i24;
                    }
                    i25 = i11 & 256;
                    if (i25 != 0) {
                        i12 |= 33554432;
                    }
                    if ((i11 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i26 = 536870912;
                            } else {
                                i26 = 268435456;
                            }
                        }
                        if (i25 != 256) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA9 = Updater.a(composerS);
                            Updater.e(composerA9, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA9, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA9, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA10 = Updater.a(composerS);
                            Updater.e(composerA10, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA10, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA10, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                    }
                    i26 = 805306368;
                    i12 |= i26;
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA11 = Updater.a(composerS);
                        Updater.e(composerA11, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA11, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA11, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA12 = Updater.a(composerS);
                        Updater.e(composerA12, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA12, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA12, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                f15 = f10;
                i19 = i11 & 32;
                if (i19 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i10 & 458752) == 0) {
                    if (composerS.n(f11)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                i21 = i11 & 64;
                if (i21 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f12)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                }
                i23 = i11 & 128;
                if (i23 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.n(f13)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i12 |= i24;
                }
                i25 = i11 & 256;
                if (i25 != 0) {
                    i12 |= 33554432;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i26 = 536870912;
                        } else {
                            i26 = 268435456;
                        }
                    }
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA13 = Updater.a(composerS);
                        Updater.e(composerA13, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA13, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA13, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA14 = Updater.a(composerS);
                        Updater.e(composerA14, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA14, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA14, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i26 = 805306368;
                i12 |= i26;
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA15 = Updater.a(composerS);
                    Updater.e(composerA15, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA15, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA15, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA16 = Updater.a(composerS);
                    Updater.e(composerA16, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA16, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA16, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i12 |= 384;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    f14 = f7;
                    if (composerS.n(f14)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        f15 = f10;
                        if (composerS.n(f15)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i10 & 458752) == 0) {
                        if (composerS.n(f11)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    i21 = i11 & 64;
                    if (i21 != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.n(f12)) {
                            i22 = 1048576;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    }
                    i23 = i11 & 128;
                    if (i23 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.n(f13)) {
                            i24 = 8388608;
                        } else {
                            i24 = 4194304;
                        }
                        i12 |= i24;
                    }
                    i25 = i11 & 256;
                    if (i25 != 0) {
                        i12 |= 33554432;
                    }
                    if ((i11 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i26 = 536870912;
                            } else {
                                i26 = 268435456;
                            }
                        }
                        if (i25 != 256) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA17 = Updater.a(composerS);
                            Updater.e(composerA17, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA17, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA17, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA18 = Updater.a(composerS);
                            Updater.e(composerA18, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA18, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA18, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                    }
                    i26 = 805306368;
                    i12 |= i26;
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA19 = Updater.a(composerS);
                        Updater.e(composerA19, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA19, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA19, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA110 = Updater.a(composerS);
                        Updater.e(composerA110, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA110, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA110, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                f15 = f10;
                i19 = i11 & 32;
                if (i19 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i10 & 458752) == 0) {
                    if (composerS.n(f11)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                i21 = i11 & 64;
                if (i21 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f12)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                }
                i23 = i11 & 128;
                if (i23 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.n(f13)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i12 |= i24;
                }
                i25 = i11 & 256;
                if (i25 != 0) {
                    i12 |= 33554432;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i26 = 536870912;
                        } else {
                            i26 = 268435456;
                        }
                    }
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA111 = Updater.a(composerS);
                        Updater.e(composerA111, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA111, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA111, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA112 = Updater.a(composerS);
                        Updater.e(composerA112, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA112, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA112, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i26 = 805306368;
                i12 |= i26;
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA113 = Updater.a(composerS);
                    Updater.e(composerA113, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA113, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA113, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA114 = Updater.a(composerS);
                    Updater.e(composerA114, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA114, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA114, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i12 |= 3072;
            f14 = f7;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    f15 = f10;
                    if (composerS.n(f15)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 32;
                if (i19 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i10 & 458752) == 0) {
                    if (composerS.n(f11)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                i21 = i11 & 64;
                if (i21 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f12)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                }
                i23 = i11 & 128;
                if (i23 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.n(f13)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i12 |= i24;
                }
                i25 = i11 & 256;
                if (i25 != 0) {
                    i12 |= 33554432;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i26 = 536870912;
                        } else {
                            i26 = 268435456;
                        }
                    }
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA115 = Updater.a(composerS);
                        Updater.e(composerA115, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA115, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA115, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA116 = Updater.a(composerS);
                        Updater.e(composerA116, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA116, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA116, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i26 = 805306368;
                i12 |= i26;
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA117 = Updater.a(composerS);
                    Updater.e(composerA117, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA117, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA117, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA118 = Updater.a(composerS);
                    Updater.e(composerA118, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA118, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA118, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            f15 = f10;
            i19 = i11 & 32;
            if (i19 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i10 & 458752) == 0) {
                if (composerS.n(f11)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i12 |= i20;
            }
            i21 = i11 & 64;
            if (i21 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.n(f12)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            }
            i23 = i11 & 128;
            if (i23 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.n(f13)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i12 |= i24;
            }
            i25 = i11 & 256;
            if (i25 != 0) {
                i12 |= 33554432;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i26 = 536870912;
                    } else {
                        i26 = 268435456;
                    }
                }
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA119 = Updater.a(composerS);
                    Updater.e(composerA119, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA119, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA119, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA1110 = Updater.a(composerS);
                    Updater.e(composerA1110, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA1110, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA1110, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i26 = 805306368;
            i12 |= i26;
            if (i25 != 256) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA1111 = Updater.a(composerS);
                Updater.e(composerA1111, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA1111, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA1111, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA1112 = Updater.a(composerS);
                Updater.e(composerA1112, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA1112, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA1112, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.n(f6)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    f14 = f7;
                    if (composerS.n(f14)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        f15 = f10;
                        if (composerS.n(f15)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i10 & 458752) == 0) {
                        if (composerS.n(f11)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    i21 = i11 & 64;
                    if (i21 != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.n(f12)) {
                            i22 = 1048576;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    }
                    i23 = i11 & 128;
                    if (i23 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.n(f13)) {
                            i24 = 8388608;
                        } else {
                            i24 = 4194304;
                        }
                        i12 |= i24;
                    }
                    i25 = i11 & 256;
                    if (i25 != 0) {
                        i12 |= 33554432;
                    }
                    if ((i11 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i26 = 536870912;
                            } else {
                                i26 = 268435456;
                            }
                        }
                        if (i25 != 256) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA1113 = Updater.a(composerS);
                            Updater.e(composerA1113, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA1113, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA1113, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            } else {
                                if (i27 != 0) {
                                    str2 = "";
                                } else {
                                    str2 = str;
                                }
                                if (i28 != 0) {
                                    f16 = 0.0f;
                                } else {
                                    f16 = f;
                                }
                                if (i13 != 0) {
                                    f17 = 0.0f;
                                } else {
                                    f17 = f6;
                                }
                                if (i15 != 0) {
                                    f14 = 0.0f;
                                }
                                if (i17 != 0) {
                                    f15 = 1.0f;
                                }
                                if (i19 == 0) {
                                }
                                if (i21 != 0) {
                                    f19 = 0.0f;
                                } else {
                                    f19 = f12;
                                }
                                if (i23 == 0) {
                                }
                                if (i25 != 0) {
                                    listE = VectorKt.e();
                                    i12 &= -234881025;
                                } else {
                                    listE = list;
                                }
                            }
                            composerS.A();
                            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                            composerS.G(-548224868);
                            if (!(composerS.t() instanceof VectorApplier)) {
                                ComposablesKt.c();
                            }
                            composerS.v();
                            if (composerS.r()) {
                                composerS.w(vectorComposeKt$Group$1);
                            } else {
                                composerS.c();
                            }
                            Composer composerA1114 = Updater.a(composerS);
                            Updater.e(composerA1114, str2, VectorComposeKt$Group$2$1.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                            Updater.e(composerA1114, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                            Updater.e(composerA1114, listE, VectorComposeKt$Group$2$9.INSTANCE);
                            composerS.G(-983907633);
                            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            f21 = f17;
                            f22 = f20;
                            f23 = f18;
                            f24 = f19;
                            f25 = f15;
                            str3 = str2;
                            list2 = listE;
                            f26 = f16;
                            f27 = f14;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                    }
                    i26 = 805306368;
                    i12 |= i26;
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA1115 = Updater.a(composerS);
                        Updater.e(composerA1115, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA1115, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA1115, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA1116 = Updater.a(composerS);
                        Updater.e(composerA1116, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA1116, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA1116, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                f15 = f10;
                i19 = i11 & 32;
                if (i19 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i10 & 458752) == 0) {
                    if (composerS.n(f11)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                i21 = i11 & 64;
                if (i21 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f12)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                }
                i23 = i11 & 128;
                if (i23 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.n(f13)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i12 |= i24;
                }
                i25 = i11 & 256;
                if (i25 != 0) {
                    i12 |= 33554432;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i26 = 536870912;
                        } else {
                            i26 = 268435456;
                        }
                    }
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA1117 = Updater.a(composerS);
                        Updater.e(composerA1117, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA1117, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA1117, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA1118 = Updater.a(composerS);
                        Updater.e(composerA1118, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA1118, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA1118, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i26 = 805306368;
                i12 |= i26;
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA1119 = Updater.a(composerS);
                    Updater.e(composerA1119, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA1119, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA1119, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA11110 = Updater.a(composerS);
                    Updater.e(composerA11110, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA11110, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA11110, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i12 |= 3072;
            f14 = f7;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    f15 = f10;
                    if (composerS.n(f15)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 32;
                if (i19 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i10 & 458752) == 0) {
                    if (composerS.n(f11)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                i21 = i11 & 64;
                if (i21 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f12)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                }
                i23 = i11 & 128;
                if (i23 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.n(f13)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i12 |= i24;
                }
                i25 = i11 & 256;
                if (i25 != 0) {
                    i12 |= 33554432;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i26 = 536870912;
                        } else {
                            i26 = 268435456;
                        }
                    }
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA11111 = Updater.a(composerS);
                        Updater.e(composerA11111, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA11111, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA11111, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA11112 = Updater.a(composerS);
                        Updater.e(composerA11112, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA11112, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA11112, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i26 = 805306368;
                i12 |= i26;
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA11113 = Updater.a(composerS);
                    Updater.e(composerA11113, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA11113, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA11113, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA11114 = Updater.a(composerS);
                    Updater.e(composerA11114, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA11114, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA11114, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            f15 = f10;
            i19 = i11 & 32;
            if (i19 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i10 & 458752) == 0) {
                if (composerS.n(f11)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i12 |= i20;
            }
            i21 = i11 & 64;
            if (i21 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.n(f12)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            }
            i23 = i11 & 128;
            if (i23 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.n(f13)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i12 |= i24;
            }
            i25 = i11 & 256;
            if (i25 != 0) {
                i12 |= 33554432;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i26 = 536870912;
                    } else {
                        i26 = 268435456;
                    }
                }
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA11115 = Updater.a(composerS);
                    Updater.e(composerA11115, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA11115, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA11115, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA11116 = Updater.a(composerS);
                    Updater.e(composerA11116, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA11116, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA11116, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i26 = 805306368;
            i12 |= i26;
            if (i25 != 256) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA11117 = Updater.a(composerS);
                Updater.e(composerA11117, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA11117, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA11117, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA11118 = Updater.a(composerS);
                Updater.e(composerA11118, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA11118, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA11118, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
        }
        i12 |= 384;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                f14 = f7;
                if (composerS.n(f14)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    f15 = f10;
                    if (composerS.n(f15)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 32;
                if (i19 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i10 & 458752) == 0) {
                    if (composerS.n(f11)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                i21 = i11 & 64;
                if (i21 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f12)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                }
                i23 = i11 & 128;
                if (i23 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.n(f13)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i12 |= i24;
                }
                i25 = i11 & 256;
                if (i25 != 0) {
                    i12 |= 33554432;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i26 = 536870912;
                        } else {
                            i26 = 268435456;
                        }
                    }
                    if (i25 != 256) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA11119 = Updater.a(composerS);
                        Updater.e(composerA11119, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA11119, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA11119, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        } else {
                            if (i27 != 0) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            if (i28 != 0) {
                                f16 = 0.0f;
                            } else {
                                f16 = f;
                            }
                            if (i13 != 0) {
                                f17 = 0.0f;
                            } else {
                                f17 = f6;
                            }
                            if (i15 != 0) {
                                f14 = 0.0f;
                            }
                            if (i17 != 0) {
                                f15 = 1.0f;
                            }
                            if (i19 == 0) {
                            }
                            if (i21 != 0) {
                                f19 = 0.0f;
                            } else {
                                f19 = f12;
                            }
                            if (i23 == 0) {
                            }
                            if (i25 != 0) {
                                listE = VectorKt.e();
                                i12 &= -234881025;
                            } else {
                                listE = list;
                            }
                        }
                        composerS.A();
                        vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                        composerS.G(-548224868);
                        if (!(composerS.t() instanceof VectorApplier)) {
                            ComposablesKt.c();
                        }
                        composerS.v();
                        if (composerS.r()) {
                            composerS.w(vectorComposeKt$Group$1);
                        } else {
                            composerS.c();
                        }
                        Composer composerA111110 = Updater.a(composerS);
                        Updater.e(composerA111110, str2, VectorComposeKt$Group$2$1.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                        Updater.e(composerA111110, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                        Updater.e(composerA111110, listE, VectorComposeKt$Group$2$9.INSTANCE);
                        composerS.G(-983907633);
                        content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        f21 = f17;
                        f22 = f20;
                        f23 = f18;
                        f24 = f19;
                        f25 = f15;
                        str3 = str2;
                        list2 = listE;
                        f26 = f16;
                        f27 = f14;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
                }
                i26 = 805306368;
                i12 |= i26;
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA111111 = Updater.a(composerS);
                    Updater.e(composerA111111, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA111111, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA111111, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA111112 = Updater.a(composerS);
                    Updater.e(composerA111112, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA111112, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA111112, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            f15 = f10;
            i19 = i11 & 32;
            if (i19 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i10 & 458752) == 0) {
                if (composerS.n(f11)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i12 |= i20;
            }
            i21 = i11 & 64;
            if (i21 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.n(f12)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            }
            i23 = i11 & 128;
            if (i23 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.n(f13)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i12 |= i24;
            }
            i25 = i11 & 256;
            if (i25 != 0) {
                i12 |= 33554432;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i26 = 536870912;
                    } else {
                        i26 = 268435456;
                    }
                }
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA111113 = Updater.a(composerS);
                    Updater.e(composerA111113, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA111113, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA111113, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA111114 = Updater.a(composerS);
                    Updater.e(composerA111114, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA111114, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA111114, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i26 = 805306368;
            i12 |= i26;
            if (i25 != 256) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA111115 = Updater.a(composerS);
                Updater.e(composerA111115, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA111115, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA111115, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA111116 = Updater.a(composerS);
                Updater.e(composerA111116, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA111116, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA111116, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
        }
        i12 |= 3072;
        f14 = f7;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((57344 & i10) == 0) {
                f15 = f10;
                if (composerS.n(f15)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            i19 = i11 & 32;
            if (i19 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i10 & 458752) == 0) {
                if (composerS.n(f11)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i12 |= i20;
            }
            i21 = i11 & 64;
            if (i21 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.n(f12)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            }
            i23 = i11 & 128;
            if (i23 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.n(f13)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i12 |= i24;
            }
            i25 = i11 & 256;
            if (i25 != 0) {
                i12 |= 33554432;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i26 = 536870912;
                    } else {
                        i26 = 268435456;
                    }
                }
                if (i25 != 256) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA111117 = Updater.a(composerS);
                    Updater.e(composerA111117, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA111117, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA111117, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    } else {
                        if (i27 != 0) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        if (i28 != 0) {
                            f16 = 0.0f;
                        } else {
                            f16 = f;
                        }
                        if (i13 != 0) {
                            f17 = 0.0f;
                        } else {
                            f17 = f6;
                        }
                        if (i15 != 0) {
                            f14 = 0.0f;
                        }
                        if (i17 != 0) {
                            f15 = 1.0f;
                        }
                        if (i19 == 0) {
                        }
                        if (i21 != 0) {
                            f19 = 0.0f;
                        } else {
                            f19 = f12;
                        }
                        if (i23 == 0) {
                        }
                        if (i25 != 0) {
                            listE = VectorKt.e();
                            i12 &= -234881025;
                        } else {
                            listE = list;
                        }
                    }
                    composerS.A();
                    vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                    composerS.G(-548224868);
                    if (!(composerS.t() instanceof VectorApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(vectorComposeKt$Group$1);
                    } else {
                        composerS.c();
                    }
                    Composer composerA111118 = Updater.a(composerS);
                    Updater.e(composerA111118, str2, VectorComposeKt$Group$2$1.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                    Updater.e(composerA111118, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                    Updater.e(composerA111118, listE, VectorComposeKt$Group$2$9.INSTANCE);
                    composerS.G(-983907633);
                    content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    f21 = f17;
                    f22 = f20;
                    f23 = f18;
                    f24 = f19;
                    f25 = f15;
                    str3 = str2;
                    list2 = listE;
                    f26 = f16;
                    f27 = f14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
            }
            i26 = 805306368;
            i12 |= i26;
            if (i25 != 256) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA111119 = Updater.a(composerS);
                Updater.e(composerA111119, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA111119, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA111119, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA1111110 = Updater.a(composerS);
                Updater.e(composerA1111110, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA1111110, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA1111110, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        f15 = f10;
        i19 = i11 & 32;
        if (i19 != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i10 & 458752) == 0) {
            if (composerS.n(f11)) {
                i20 = 131072;
            } else {
                i20 = 65536;
            }
            i12 |= i20;
        }
        i21 = i11 & 64;
        if (i21 != 0) {
            i12 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.n(f12)) {
                i22 = 1048576;
            } else {
                i22 = 524288;
            }
            i12 |= i22;
        }
        i23 = i11 & 128;
        if (i23 != 0) {
            i12 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.n(f13)) {
                i24 = 8388608;
            } else {
                i24 = 4194304;
            }
            i12 |= i24;
        }
        i25 = i11 & 256;
        if (i25 != 0) {
            i12 |= 33554432;
        }
        if ((i11 & 512) != 0) {
            if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i26 = 536870912;
                } else {
                    i26 = 268435456;
                }
            }
            if (i25 != 256) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA1111111 = Updater.a(composerS);
                Updater.e(composerA1111111, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA1111111, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA1111111, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                } else {
                    if (i27 != 0) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    if (i28 != 0) {
                        f16 = 0.0f;
                    } else {
                        f16 = f;
                    }
                    if (i13 != 0) {
                        f17 = 0.0f;
                    } else {
                        f17 = f6;
                    }
                    if (i15 != 0) {
                        f14 = 0.0f;
                    }
                    if (i17 != 0) {
                        f15 = 1.0f;
                    }
                    if (i19 == 0) {
                    }
                    if (i21 != 0) {
                        f19 = 0.0f;
                    } else {
                        f19 = f12;
                    }
                    if (i23 == 0) {
                    }
                    if (i25 != 0) {
                        listE = VectorKt.e();
                        i12 &= -234881025;
                    } else {
                        listE = list;
                    }
                }
                composerS.A();
                vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
                composerS.G(-548224868);
                if (!(composerS.t() instanceof VectorApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(vectorComposeKt$Group$1);
                } else {
                    composerS.c();
                }
                Composer composerA1111112 = Updater.a(composerS);
                Updater.e(composerA1111112, str2, VectorComposeKt$Group$2$1.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
                Updater.e(composerA1111112, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
                Updater.e(composerA1111112, listE, VectorComposeKt$Group$2$9.INSTANCE);
                composerS.G(-983907633);
                content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                f21 = f17;
                f22 = f20;
                f23 = f18;
                f24 = f19;
                f25 = f15;
                str3 = str2;
                list2 = listE;
                f26 = f16;
                f27 = f14;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
        }
        i26 = 805306368;
        i12 |= i26;
        if (i25 != 256) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i27 != 0) {
                    str2 = "";
                } else {
                    str2 = str;
                }
                if (i28 != 0) {
                    f16 = 0.0f;
                } else {
                    f16 = f;
                }
                if (i13 != 0) {
                    f17 = 0.0f;
                } else {
                    f17 = f6;
                }
                if (i15 != 0) {
                    f14 = 0.0f;
                }
                if (i17 != 0) {
                    f15 = 1.0f;
                }
                if (i19 == 0) {
                }
                if (i21 != 0) {
                    f19 = 0.0f;
                } else {
                    f19 = f12;
                }
                if (i23 == 0) {
                }
                if (i25 != 0) {
                    listE = VectorKt.e();
                    i12 &= -234881025;
                } else {
                    listE = list;
                }
            } else {
                if (i27 != 0) {
                    str2 = "";
                } else {
                    str2 = str;
                }
                if (i28 != 0) {
                    f16 = 0.0f;
                } else {
                    f16 = f;
                }
                if (i13 != 0) {
                    f17 = 0.0f;
                } else {
                    f17 = f6;
                }
                if (i15 != 0) {
                    f14 = 0.0f;
                }
                if (i17 != 0) {
                    f15 = 1.0f;
                }
                if (i19 == 0) {
                }
                if (i21 != 0) {
                    f19 = 0.0f;
                } else {
                    f19 = f12;
                }
                if (i23 == 0) {
                }
                if (i25 != 0) {
                    listE = VectorKt.e();
                    i12 &= -234881025;
                } else {
                    listE = list;
                }
            }
            composerS.A();
            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
            composerS.G(-548224868);
            if (!(composerS.t() instanceof VectorApplier)) {
                ComposablesKt.c();
            }
            composerS.v();
            if (composerS.r()) {
                composerS.w(vectorComposeKt$Group$1);
            } else {
                composerS.c();
            }
            Composer composerA1111113 = Updater.a(composerS);
            Updater.e(composerA1111113, str2, VectorComposeKt$Group$2$1.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
            Updater.e(composerA1111113, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
            Updater.e(composerA1111113, listE, VectorComposeKt$Group$2$9.INSTANCE);
            composerS.G(-983907633);
            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
            f21 = f17;
            f22 = f20;
            f23 = f18;
            f24 = f19;
            f25 = f15;
            str3 = str2;
            list2 = listE;
            f26 = f16;
            f27 = f14;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i27 != 0) {
                    str2 = "";
                } else {
                    str2 = str;
                }
                if (i28 != 0) {
                    f16 = 0.0f;
                } else {
                    f16 = f;
                }
                if (i13 != 0) {
                    f17 = 0.0f;
                } else {
                    f17 = f6;
                }
                if (i15 != 0) {
                    f14 = 0.0f;
                }
                if (i17 != 0) {
                    f15 = 1.0f;
                }
                if (i19 == 0) {
                }
                if (i21 != 0) {
                    f19 = 0.0f;
                } else {
                    f19 = f12;
                }
                if (i23 == 0) {
                }
                if (i25 != 0) {
                    listE = VectorKt.e();
                    i12 &= -234881025;
                } else {
                    listE = list;
                }
            } else {
                if (i27 != 0) {
                    str2 = "";
                } else {
                    str2 = str;
                }
                if (i28 != 0) {
                    f16 = 0.0f;
                } else {
                    f16 = f;
                }
                if (i13 != 0) {
                    f17 = 0.0f;
                } else {
                    f17 = f6;
                }
                if (i15 != 0) {
                    f14 = 0.0f;
                }
                if (i17 != 0) {
                    f15 = 1.0f;
                }
                if (i19 == 0) {
                }
                if (i21 != 0) {
                    f19 = 0.0f;
                } else {
                    f19 = f12;
                }
                if (i23 == 0) {
                }
                if (i25 != 0) {
                    listE = VectorKt.e();
                    i12 &= -234881025;
                } else {
                    listE = list;
                }
            }
            composerS.A();
            vectorComposeKt$Group$1 = VectorComposeKt$Group$1.INSTANCE;
            composerS.G(-548224868);
            if (!(composerS.t() instanceof VectorApplier)) {
                ComposablesKt.c();
            }
            composerS.v();
            if (composerS.r()) {
                composerS.w(vectorComposeKt$Group$1);
            } else {
                composerS.c();
            }
            Composer composerA1111114 = Updater.a(composerS);
            Updater.e(composerA1111114, str2, VectorComposeKt$Group$2$1.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f16), VectorComposeKt$Group$2$2.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f17), VectorComposeKt$Group$2$3.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f14), VectorComposeKt$Group$2$4.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f15), VectorComposeKt$Group$2$5.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f18), VectorComposeKt$Group$2$6.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f19), VectorComposeKt$Group$2$7.INSTANCE);
            Updater.e(composerA1111114, Float.valueOf(f20), VectorComposeKt$Group$2$8.INSTANCE);
            Updater.e(composerA1111114, listE, VectorComposeKt$Group$2$9.INSTANCE);
            composerS.G(-983907633);
            content.invoke(composerS, Integer.valueOf((i12 >> 27) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
            f21 = f17;
            f22 = f20;
            f23 = f18;
            f24 = f19;
            f25 = f15;
            str3 = str2;
            list2 = listE;
            f26 = f16;
            f27 = f14;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new VectorComposeKt$Group$4(str3, f26, f21, f27, f25, f23, f24, f22, list2, content, i10, i11));
    }
}
