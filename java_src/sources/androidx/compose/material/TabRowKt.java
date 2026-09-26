package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class TabRowKt {
    private static final float ScrollableTabRowMinimumTabWidth = Dp.f(90);

    @NotNull
    private static final AnimationSpec<Float> ScrollableTabRowScrollSpec = AnimationSpecKt.k(250, 0, EasingKt.a(), 2, null);

    /* JADX WARN: Code duplicated, block: B:106:0x0133 A[PHI: r2 r3 r4 r5 r7 r9
      0x0133: PHI (r2v28 int) = (r2v22 int), (r2v31 int) binds: [B:123:0x017d, B:105:0x012d] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r3v6 androidx.compose.ui.Modifier) = (r3v2 androidx.compose.ui.Modifier), (r3v9 androidx.compose.ui.Modifier) binds: [B:123:0x017d, B:105:0x012d] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r4v23 float) = (r4v15 float), (r4v25 float) binds: [B:123:0x017d, B:105:0x012d] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r5v12 long) = (r5v8 long), (r5v13 long) binds: [B:123:0x017d, B:105:0x012d] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r7v7 long) = (r7v3 long), (r7v2 long) binds: [B:123:0x017d, B:105:0x012d] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r9v7 e8.q<? super java.util.List<androidx.compose.material.TabPosition>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>) = 
      (r9v2 e8.q<? super java.util.List<androidx.compose.material.TabPosition>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>)
      (r9v8 e8.q<? super java.util.List<androidx.compose.material.TabPosition>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>)
     binds: [B:123:0x017d, B:105:0x012d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:107:0x0137 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x0139  */
    /* JADX WARN: Code duplicated, block: B:109:0x013c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0142  */
    /* JADX WARN: Code duplicated, block: B:113:0x0152  */
    /* JADX WARN: Code duplicated, block: B:116:0x0158  */
    /* JADX WARN: Code duplicated, block: B:118:0x0164  */
    /* JADX WARN: Code duplicated, block: B:119:0x016b  */
    /* JADX WARN: Code duplicated, block: B:121:0x016e  */
    /* JADX WARN: Code duplicated, block: B:122:0x017c  */
    /* JADX WARN: Code duplicated, block: B:124:0x017f  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0061  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0095  */
    /* JADX WARN: Code duplicated, block: B:55:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:94:0x0110  */
    /* JADX WARN: Code duplicated, block: B:96:0x0117  */
    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:117)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    @Composable
    @UiComposable
    public static final void a(int i10, @Nullable Modifier modifier, long j6, long j10, float f, @Nullable q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, @Nullable p<? super Composer, ? super Integer, l0> pVar, @NotNull p<? super Composer, ? super Integer, l0> tabs, @Nullable Composer composer, int i11, int i12) {
        int i13;
        long jB;
        int i14;
        float f6;
        int i15;
        int i16;
        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar2;
        int i17;
        int i18;
        int i19;
        int i20;
        Modifier modifier2;
        long jF;
        float fD;
        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVarB;
        int i21;
        p<? super Composer, ? super Integer, l0> pVarB;
        p<? super Composer, ? super Integer, l0> pVar2;
        Modifier modifier3;
        float f7;
        long j11;
        long j12;
        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(tabs, "tabs");
        Composer composerS = composer.s(-1473476840);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i13 = (composerS.p(i10) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        int i22 = i12 & 2;
        if (i22 == 0) {
            if ((i11 & 112) == 0) {
                i13 |= composerS.k(modifier) ? 32 : 16;
            }
            if ((i11 & 896) != 0) {
                i13 |= ((i12 & 4) == 0 || !composerS.q(j6)) ? 128 : 256;
            }
            if ((i11 & 7168) == 0) {
                if ((i12 & 8) == 0) {
                    jB = j10;
                    int i23 = composerS.q(jB) ? 2048 : 1024;
                    i13 |= i23;
                } else {
                    jB = j10;
                }
                i13 |= i23;
            } else {
                jB = j10;
            }
            i14 = i12 & 16;
            if (i14 != 0) {
                if ((57344 & i11) == 0) {
                    f6 = f;
                    if (composerS.n(f6)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i13 |= i15;
                }
                i16 = i12 & 32;
                if (i16 != 0) {
                    if ((458752 & i11) == 0) {
                        qVar2 = qVar;
                        if (composerS.k(qVar2)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                        i13 |= i17;
                    }
                    i18 = i12 & 64;
                    if (i18 != 0) {
                        i13 |= 1572864;
                    } else if ((i11 & 3670016) == 0) {
                        if (composerS.k(pVar)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                        i13 |= i19;
                    }
                    if ((i12 & 128) != 0) {
                        if ((29360128 & i11) == 0) {
                            if (composerS.k(tabs)) {
                                i20 = 8388608;
                            } else {
                                i20 = 4194304;
                            }
                        }
                        if ((23967451 & i13) == 4793490 || !composerS.b()) {
                            composerS.J();
                            if ((i11 & 1) != 0 || composerS.h()) {
                                if (i22 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if ((i12 & 4) != 0) {
                                    i13 &= -897;
                                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                                } else {
                                    jF = j6;
                                }
                                if ((i12 & 8) != 0) {
                                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                    i13 &= -7169;
                                }
                                if (i14 != 0) {
                                    fD = TabRowDefaults.INSTANCE.d();
                                } else {
                                    fD = f6;
                                }
                                if (i16 != 0) {
                                    qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                                } else {
                                    qVarB = qVar2;
                                }
                                if (i18 != 0) {
                                    i21 = i13;
                                    pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                                }
                                composerS.A();
                                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar4 = qVarB;
                                pVar2 = pVarB;
                                modifier3 = modifier2;
                                long j13 = jB;
                                f7 = fD;
                                j11 = jF;
                                j12 = j13;
                                qVar3 = qVar4;
                            } else {
                                composerS.g();
                                if ((i12 & 4) != 0) {
                                    i13 &= -897;
                                }
                                if ((i12 & 8) != 0) {
                                    i13 &= -7169;
                                }
                                modifier2 = modifier;
                                jF = j6;
                                fD = f6;
                                qVarB = qVar2;
                            }
                            i21 = i13;
                            pVarB = pVar;
                            composerS.A();
                            SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                            q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar5 = qVarB;
                            pVar2 = pVarB;
                            modifier3 = modifier2;
                            long j14 = jB;
                            f7 = fD;
                            j11 = jF;
                            j12 = j14;
                            qVar3 = qVar5;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            j11 = j6;
                            pVar2 = pVar;
                            j12 = jB;
                            f7 = f6;
                            qVar3 = qVar2;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
                    }
                    i20 = 12582912;
                    i13 |= i20;
                    if ((23967451 & i13) == 4793490) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar6 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j15 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j15;
                        qVar3 = qVar6;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar7 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j16 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j16;
                        qVar3 = qVar7;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
                }
                i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                qVar2 = qVar;
                i18 = i12 & 64;
                if (i18 != 0) {
                    i13 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(pVar)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i13 |= i19;
                }
                if ((i12 & 128) != 0) {
                    if ((29360128 & i11) == 0) {
                        if (composerS.k(tabs)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                    }
                    if ((23967451 & i13) == 4793490) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar8 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j17 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j17;
                        qVar3 = qVar8;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar9 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j18 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j18;
                        qVar3 = qVar9;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
                }
                i20 = 12582912;
                i13 |= i20;
                if ((23967451 & i13) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar10 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j19 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j19;
                    qVar3 = qVar10;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar11 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j110 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j110;
                    qVar3 = qVar11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
            }
            i13 |= CpioConstants.C_ISBLK;
            f6 = f;
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    qVar2 = qVar;
                    if (composerS.k(qVar2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i13 |= i17;
                }
                i18 = i12 & 64;
                if (i18 != 0) {
                    i13 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(pVar)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i13 |= i19;
                }
                if ((i12 & 128) != 0) {
                    if ((29360128 & i11) == 0) {
                        if (composerS.k(tabs)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                    }
                    if ((23967451 & i13) == 4793490) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar12 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j111 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j111;
                        qVar3 = qVar12;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar13 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j112 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j112;
                        qVar3 = qVar13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
                }
                i20 = 12582912;
                i13 |= i20;
                if ((23967451 & i13) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar14 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j113 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j113;
                    qVar3 = qVar14;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar15 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j114 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j114;
                    qVar3 = qVar15;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            qVar2 = qVar;
            i18 = i12 & 64;
            if (i18 != 0) {
                i13 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i13 |= i19;
            }
            if ((i12 & 128) != 0) {
                if ((29360128 & i11) == 0) {
                    if (composerS.k(tabs)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                }
                if ((23967451 & i13) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar16 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j115 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j115;
                    qVar3 = qVar16;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar17 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j116 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j116;
                    qVar3 = qVar17;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
            }
            i20 = 12582912;
            i13 |= i20;
            if ((23967451 & i13) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar18 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j117 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j117;
                qVar3 = qVar18;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar19 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j118 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j118;
                qVar3 = qVar19;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
        }
        i13 |= 48;
        if ((i11 & 896) != 0) {
            i13 |= ((i12 & 4) == 0 || !composerS.q(j6)) ? 128 : 256;
        }
        if ((i11 & 7168) == 0) {
            if ((i12 & 8) == 0) {
                jB = j10;
                if (composerS.q(jB)) {
                }
                i13 |= i23;
            } else {
                jB = j10;
            }
            i13 |= i23;
        } else {
            jB = j10;
        }
        i14 = i12 & 16;
        if (i14 != 0) {
            if ((57344 & i11) == 0) {
                f6 = f;
                if (composerS.n(f6)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    qVar2 = qVar;
                    if (composerS.k(qVar2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i13 |= i17;
                }
                i18 = i12 & 64;
                if (i18 != 0) {
                    i13 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(pVar)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i13 |= i19;
                }
                if ((i12 & 128) != 0) {
                    if ((29360128 & i11) == 0) {
                        if (composerS.k(tabs)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                    }
                    if ((23967451 & i13) == 4793490) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar110 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j119 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j119;
                        qVar3 = qVar110;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            } else {
                                jF = j6;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            }
                            if (i14 != 0) {
                                fD = TabRowDefaults.INSTANCE.d();
                            } else {
                                fD = f6;
                            }
                            if (i16 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i18 != 0) {
                                i21 = i13;
                                pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                            } else {
                                i21 = i13;
                                pVarB = pVar;
                            }
                        }
                        composerS.A();
                        SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar111 = qVarB;
                        pVar2 = pVarB;
                        modifier3 = modifier2;
                        long j1110 = jB;
                        f7 = fD;
                        j11 = jF;
                        j12 = j1110;
                        qVar3 = qVar111;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
                }
                i20 = 12582912;
                i13 |= i20;
                if ((23967451 & i13) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar112 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j1111 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j1111;
                    qVar3 = qVar112;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar113 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j1112 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j1112;
                    qVar3 = qVar113;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            qVar2 = qVar;
            i18 = i12 & 64;
            if (i18 != 0) {
                i13 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i13 |= i19;
            }
            if ((i12 & 128) != 0) {
                if ((29360128 & i11) == 0) {
                    if (composerS.k(tabs)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                }
                if ((23967451 & i13) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar114 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j1113 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j1113;
                    qVar3 = qVar114;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar115 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j1114 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j1114;
                    qVar3 = qVar115;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
            }
            i20 = 12582912;
            i13 |= i20;
            if ((23967451 & i13) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar116 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j1115 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j1115;
                qVar3 = qVar116;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar117 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j1116 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j1116;
                qVar3 = qVar117;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
        }
        i13 |= CpioConstants.C_ISBLK;
        f6 = f;
        i16 = i12 & 32;
        if (i16 != 0) {
            if ((458752 & i11) == 0) {
                qVar2 = qVar;
                if (composerS.k(qVar2)) {
                    i17 = 131072;
                } else {
                    i17 = 65536;
                }
                i13 |= i17;
            }
            i18 = i12 & 64;
            if (i18 != 0) {
                i13 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i13 |= i19;
            }
            if ((i12 & 128) != 0) {
                if ((29360128 & i11) == 0) {
                    if (composerS.k(tabs)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                }
                if ((23967451 & i13) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar118 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j1117 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j1117;
                    qVar3 = qVar118;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            i13 &= -897;
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        } else {
                            jF = j6;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        }
                        if (i14 != 0) {
                            fD = TabRowDefaults.INSTANCE.d();
                        } else {
                            fD = f6;
                        }
                        if (i16 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i18 != 0) {
                            i21 = i13;
                            pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                        } else {
                            i21 = i13;
                            pVarB = pVar;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar119 = qVarB;
                    pVar2 = pVarB;
                    modifier3 = modifier2;
                    long j1118 = jB;
                    f7 = fD;
                    j11 = jF;
                    j12 = j1118;
                    qVar3 = qVar119;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
            }
            i20 = 12582912;
            i13 |= i20;
            if ((23967451 & i13) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar1110 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j1119 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j1119;
                qVar3 = qVar1110;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar1111 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j11110 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j11110;
                qVar3 = qVar1111;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
        }
        i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        qVar2 = qVar;
        i18 = i12 & 64;
        if (i18 != 0) {
            i13 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(pVar)) {
                i19 = 1048576;
            } else {
                i19 = 524288;
            }
            i13 |= i19;
        }
        if ((i12 & 128) != 0) {
            if ((29360128 & i11) == 0) {
                if (composerS.k(tabs)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
            }
            if ((23967451 & i13) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar1112 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j11111 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j11111;
                qVar3 = qVar1112;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        i13 &= -897;
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    } else {
                        jF = j6;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    }
                    if (i14 != 0) {
                        fD = TabRowDefaults.INSTANCE.d();
                    } else {
                        fD = f6;
                    }
                    if (i16 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i18 != 0) {
                        i21 = i13;
                        pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                    } else {
                        i21 = i13;
                        pVarB = pVar;
                    }
                }
                composerS.A();
                SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar1113 = qVarB;
                pVar2 = pVarB;
                modifier3 = modifier2;
                long j11112 = jB;
                f7 = fD;
                j11 = jF;
                j12 = j11112;
                qVar3 = qVar1113;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
        }
        i20 = 12582912;
        i13 |= i20;
        if ((23967451 & i13) == 4793490) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    i13 &= -897;
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                } else {
                    jF = j6;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                }
                if (i14 != 0) {
                    fD = TabRowDefaults.INSTANCE.d();
                } else {
                    fD = f6;
                }
                if (i16 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i18 != 0) {
                    i21 = i13;
                    pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                } else {
                    i21 = i13;
                    pVarB = pVar;
                }
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    i13 &= -897;
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                } else {
                    jF = j6;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                }
                if (i14 != 0) {
                    fD = TabRowDefaults.INSTANCE.d();
                } else {
                    fD = f6;
                }
                if (i16 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i18 != 0) {
                    i21 = i13;
                    pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                } else {
                    i21 = i13;
                    pVarB = pVar;
                }
            }
            composerS.A();
            SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
            q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar1114 = qVarB;
            pVar2 = pVarB;
            modifier3 = modifier2;
            long j11113 = jB;
            f7 = fD;
            j11 = jF;
            j12 = j11113;
            qVar3 = qVar1114;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    i13 &= -897;
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                } else {
                    jF = j6;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                }
                if (i14 != 0) {
                    fD = TabRowDefaults.INSTANCE.d();
                } else {
                    fD = f6;
                }
                if (i16 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i18 != 0) {
                    i21 = i13;
                    pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                } else {
                    i21 = i13;
                    pVarB = pVar;
                }
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    i13 &= -897;
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                } else {
                    jF = j6;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                }
                if (i14 != 0) {
                    fD = TabRowDefaults.INSTANCE.d();
                } else {
                    fD = f6;
                }
                if (i16 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -655609869, true, new TabRowKt$ScrollableTabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i18 != 0) {
                    i21 = i13;
                    pVarB = ComposableSingletons$TabRowKt.INSTANCE.b();
                } else {
                    i21 = i13;
                    pVarB = pVar;
                }
            }
            composerS.A();
            SurfaceKt.b(modifier2, null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, 1455860572, true, new TabRowKt$ScrollableTabRow$2(fD, tabs, pVarB, i10, qVarB, i21)), composerS, ((i21 >> 3) & 14) | 1572864 | (i21 & 896) | (i21 & 7168), 50);
            q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar1115 = qVarB;
            pVar2 = pVarB;
            modifier3 = modifier2;
            long j11114 = jB;
            f7 = fD;
            j11 = jF;
            j12 = j11114;
            qVar3 = qVar1115;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabRowKt$ScrollableTabRow$3(i10, modifier3, j11, j12, f7, qVar3, pVar2, tabs, i11, i12));
    }

    /* JADX WARN: Code duplicated, block: B:102:0x011c  */
    /* JADX WARN: Code duplicated, block: B:103:0x012a  */
    /* JADX WARN: Code duplicated, block: B:106:0x012f  */
    /* JADX WARN: Code duplicated, block: B:107:0x013a  */
    /* JADX WARN: Code duplicated, block: B:109:0x013d  */
    /* JADX WARN: Code duplicated, block: B:110:0x014a  */
    /* JADX WARN: Code duplicated, block: B:112:0x014d  */
    /* JADX WARN: Code duplicated, block: B:113:0x0159  */
    /* JADX WARN: Code duplicated, block: B:118:0x0194  */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:34:0x005f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:45:0x007a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093  */
    /* JADX WARN: Code duplicated, block: B:55:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:97:0x0111 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0113  */
    /* JADX WARN: Code duplicated, block: B:99:0x0116  */
    @Composable
    @UiComposable
    public static final void b(int i10, @Nullable Modifier modifier, long j6, long j10, @Nullable q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, @Nullable p<? super Composer, ? super Integer, l0> pVar, @NotNull p<? super Composer, ? super Integer, l0> tabs, @Nullable Composer composer, int i11, int i12) {
        int i13;
        long j11;
        long j12;
        int i14;
        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar2;
        int i15;
        int i16;
        p<? super Composer, ? super Integer, l0> pVar2;
        int i17;
        int i18;
        Modifier modifier2;
        long jF;
        long jB;
        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVarB;
        int i19;
        p<? super Composer, ? super Integer, l0> pVarA;
        p<? super Composer, ? super Integer, l0> pVar3;
        Modifier modifier3;
        long j13;
        long j14;
        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(tabs, "tabs");
        Composer composerS = composer.s(-249175289);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i13 = (composerS.p(i10) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        int i20 = i12 & 2;
        if (i20 == 0) {
            if ((i11 & 112) == 0) {
                i13 |= composerS.k(modifier) ? 32 : 16;
            }
            if ((i11 & 896) == 0) {
                if ((i12 & 4) == 0) {
                    j11 = j6;
                    int i21 = composerS.q(j11) ? 256 : 128;
                    i13 |= i21;
                } else {
                    j11 = j6;
                }
                i13 |= i21;
            } else {
                j11 = j6;
            }
            if ((i11 & 7168) == 0) {
                if ((i12 & 8) == 0) {
                    j12 = j10;
                    int i22 = composerS.q(j12) ? 2048 : 1024;
                    i13 |= i22;
                } else {
                    j12 = j10;
                }
                i13 |= i22;
            } else {
                j12 = j10;
            }
            i14 = i12 & 16;
            if (i14 != 0) {
                if ((57344 & i11) == 0) {
                    qVar2 = qVar;
                    if (composerS.k(qVar2)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i13 |= i15;
                }
                i16 = i12 & 32;
                if (i16 != 0) {
                    if ((458752 & i11) == 0) {
                        pVar2 = pVar;
                        if (composerS.k(pVar2)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                        i13 |= i17;
                    }
                    if ((i12 & 64) != 0) {
                        i13 |= 1572864;
                    } else if ((3670016 & i11) == 0) {
                        if (composerS.k(tabs)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i13 |= i18;
                    }
                    if ((2995931 & i13) == 599186 || !composerS.b()) {
                        composerS.J();
                        if ((i11 & 1) != 0 || composerS.h()) {
                            if (i20 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i12 & 4) != 0) {
                                jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                                i13 &= -897;
                            } else {
                                jF = j11;
                            }
                            if ((i12 & 8) != 0) {
                                jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                                i13 &= -7169;
                            } else {
                                jB = j12;
                            }
                            if (i14 != 0) {
                                qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                            } else {
                                qVarB = qVar2;
                            }
                            if (i16 != 0) {
                                i19 = i13;
                                pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                            } else {
                                i19 = i13;
                            }
                            composerS.A();
                            SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                            q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar4 = qVarB;
                            pVar3 = pVarA;
                            modifier3 = modifier2;
                            j13 = jF;
                            j14 = jB;
                            qVar3 = qVar4;
                        } else {
                            composerS.g();
                            if ((i12 & 4) != 0) {
                                i13 &= -897;
                            }
                            if ((i12 & 8) != 0) {
                                i13 &= -7169;
                            }
                            modifier2 = modifier;
                            i19 = i13;
                            jF = j11;
                            jB = j12;
                            qVarB = qVar2;
                        }
                        pVarA = pVar2;
                        composerS.A();
                        SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                        q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar5 = qVarB;
                        pVar3 = pVarA;
                        modifier3 = modifier2;
                        j13 = jF;
                        j14 = jB;
                        qVar3 = qVar5;
                    } else {
                        composerS.g();
                        modifier3 = modifier;
                        j13 = j11;
                        j14 = j12;
                        qVar3 = qVar2;
                        pVar3 = pVar2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
                }
                i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar2 = pVar;
                if ((i12 & 64) != 0) {
                    i13 |= 1572864;
                } else if ((3670016 & i11) == 0) {
                    if (composerS.k(tabs)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                if ((2995931 & i13) == 599186) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar6 = qVarB;
                    pVar3 = pVarA;
                    modifier3 = modifier2;
                    j13 = jF;
                    j14 = jB;
                    qVar3 = qVar6;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar7 = qVarB;
                    pVar3 = pVarA;
                    modifier3 = modifier2;
                    j13 = jF;
                    j14 = jB;
                    qVar3 = qVar7;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
            }
            i13 |= CpioConstants.C_ISBLK;
            qVar2 = qVar;
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i13 |= i17;
                }
                if ((i12 & 64) != 0) {
                    i13 |= 1572864;
                } else if ((3670016 & i11) == 0) {
                    if (composerS.k(tabs)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                if ((2995931 & i13) == 599186) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar8 = qVarB;
                    pVar3 = pVarA;
                    modifier3 = modifier2;
                    j13 = jF;
                    j14 = jB;
                    qVar3 = qVar8;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar9 = qVarB;
                    pVar3 = pVarA;
                    modifier3 = modifier2;
                    j13 = jF;
                    j14 = jB;
                    qVar3 = qVar9;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar2 = pVar;
            if ((i12 & 64) != 0) {
                i13 |= 1572864;
            } else if ((3670016 & i11) == 0) {
                if (composerS.k(tabs)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            if ((2995931 & i13) == 599186) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                }
                composerS.A();
                SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar10 = qVarB;
                pVar3 = pVarA;
                modifier3 = modifier2;
                j13 = jF;
                j14 = jB;
                qVar3 = qVar10;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                }
                composerS.A();
                SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar11 = qVarB;
                pVar3 = pVarA;
                modifier3 = modifier2;
                j13 = jF;
                j14 = jB;
                qVar3 = qVar11;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
        }
        i13 |= 48;
        if ((i11 & 896) == 0) {
            if ((i12 & 4) == 0) {
                j11 = j6;
                if (composerS.q(j11)) {
                }
                i13 |= i21;
            } else {
                j11 = j6;
            }
            i13 |= i21;
        } else {
            j11 = j6;
        }
        if ((i11 & 7168) == 0) {
            if ((i12 & 8) == 0) {
                j12 = j10;
                if (composerS.q(j12)) {
                }
                i13 |= i22;
            } else {
                j12 = j10;
            }
            i13 |= i22;
        } else {
            j12 = j10;
        }
        i14 = i12 & 16;
        if (i14 != 0) {
            if ((57344 & i11) == 0) {
                qVar2 = qVar;
                if (composerS.k(qVar2)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                    i13 |= i17;
                }
                if ((i12 & 64) != 0) {
                    i13 |= 1572864;
                } else if ((3670016 & i11) == 0) {
                    if (composerS.k(tabs)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                if ((2995931 & i13) == 599186) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar12 = qVarB;
                    pVar3 = pVarA;
                    modifier3 = modifier2;
                    j13 = jF;
                    j14 = jB;
                    qVar3 = qVar12;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    } else {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i12 & 4) != 0) {
                            jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                            i13 &= -897;
                        } else {
                            jF = j11;
                        }
                        if ((i12 & 8) != 0) {
                            jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                            i13 &= -7169;
                        } else {
                            jB = j12;
                        }
                        if (i14 != 0) {
                            qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                        } else {
                            qVarB = qVar2;
                        }
                        if (i16 != 0) {
                            i19 = i13;
                            pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                        } else {
                            i19 = i13;
                            pVarA = pVar2;
                        }
                    }
                    composerS.A();
                    SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                    q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar13 = qVarB;
                    pVar3 = pVarA;
                    modifier3 = modifier2;
                    j13 = jF;
                    j14 = jB;
                    qVar3 = qVar13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar2 = pVar;
            if ((i12 & 64) != 0) {
                i13 |= 1572864;
            } else if ((3670016 & i11) == 0) {
                if (composerS.k(tabs)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            if ((2995931 & i13) == 599186) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                }
                composerS.A();
                SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar14 = qVarB;
                pVar3 = pVarA;
                modifier3 = modifier2;
                j13 = jF;
                j14 = jB;
                qVar3 = qVar14;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                }
                composerS.A();
                SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar15 = qVarB;
                pVar3 = pVarA;
                modifier3 = modifier2;
                j13 = jF;
                j14 = jB;
                qVar3 = qVar15;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
        }
        i13 |= CpioConstants.C_ISBLK;
        qVar2 = qVar;
        i16 = i12 & 32;
        if (i16 != 0) {
            if ((458752 & i11) == 0) {
                pVar2 = pVar;
                if (composerS.k(pVar2)) {
                    i17 = 131072;
                } else {
                    i17 = 65536;
                }
                i13 |= i17;
            }
            if ((i12 & 64) != 0) {
                i13 |= 1572864;
            } else if ((3670016 & i11) == 0) {
                if (composerS.k(tabs)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            if ((2995931 & i13) == 599186) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                }
                composerS.A();
                SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar16 = qVarB;
                pVar3 = pVarA;
                modifier3 = modifier2;
                j13 = jF;
                j14 = jB;
                qVar3 = qVar16;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i12 & 4) != 0) {
                        jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                        i13 &= -897;
                    } else {
                        jF = j11;
                    }
                    if ((i12 & 8) != 0) {
                        jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                        i13 &= -7169;
                    } else {
                        jB = j12;
                    }
                    if (i14 != 0) {
                        qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                    } else {
                        qVarB = qVar2;
                    }
                    if (i16 != 0) {
                        i19 = i13;
                        pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                    } else {
                        i19 = i13;
                        pVarA = pVar2;
                    }
                }
                composerS.A();
                SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
                q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar17 = qVarB;
                pVar3 = pVarA;
                modifier3 = modifier2;
                j13 = jF;
                j14 = jB;
                qVar3 = qVar17;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
        }
        i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        pVar2 = pVar;
        if ((i12 & 64) != 0) {
            i13 |= 1572864;
        } else if ((3670016 & i11) == 0) {
            if (composerS.k(tabs)) {
                i18 = 1048576;
            } else {
                i18 = 524288;
            }
            i13 |= i18;
        }
        if ((2995931 & i13) == 599186) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i13 &= -897;
                } else {
                    jF = j11;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                } else {
                    jB = j12;
                }
                if (i14 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i16 != 0) {
                    i19 = i13;
                    pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                } else {
                    i19 = i13;
                    pVarA = pVar2;
                }
            } else {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i13 &= -897;
                } else {
                    jF = j11;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                } else {
                    jB = j12;
                }
                if (i14 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i16 != 0) {
                    i19 = i13;
                    pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                } else {
                    i19 = i13;
                    pVarA = pVar2;
                }
            }
            composerS.A();
            SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
            q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar18 = qVarB;
            pVar3 = pVarA;
            modifier3 = modifier2;
            j13 = jF;
            j14 = jB;
            qVar3 = qVar18;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i13 &= -897;
                } else {
                    jF = j11;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                } else {
                    jB = j12;
                }
                if (i14 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i16 != 0) {
                    i19 = i13;
                    pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                } else {
                    i19 = i13;
                    pVarA = pVar2;
                }
            } else {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i12 & 4) != 0) {
                    jF = ColorsKt.f(MaterialTheme.INSTANCE.a(composerS, 6));
                    i13 &= -897;
                } else {
                    jF = j11;
                }
                if ((i12 & 8) != 0) {
                    jB = ColorsKt.b(jF, composerS, (i13 >> 6) & 14);
                    i13 &= -7169;
                } else {
                    jB = j12;
                }
                if (i14 != 0) {
                    qVarB = ComposableLambdaKt.b(composerS, -553782708, true, new TabRowKt$TabRow$1(i10));
                } else {
                    qVarB = qVar2;
                }
                if (i16 != 0) {
                    i19 = i13;
                    pVarA = ComposableSingletons$TabRowKt.INSTANCE.a();
                } else {
                    i19 = i13;
                    pVarA = pVar2;
                }
            }
            composerS.A();
            SurfaceKt.b(SelectableGroupKt.a(modifier2), null, jF, jB, null, 0.0f, ComposableLambdaKt.b(composerS, -1961746365, true, new TabRowKt$TabRow$2(tabs, pVarA, qVarB, i19)), composerS, (i19 & 896) | 1572864 | (i19 & 7168), 50);
            q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar19 = qVarB;
            pVar3 = pVarA;
            modifier3 = modifier2;
            j13 = jF;
            j14 = jB;
            qVar3 = qVar19;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabRowKt$TabRow$3(i10, modifier3, j13, j14, qVar3, pVar3, tabs, i11, i12));
    }
}
