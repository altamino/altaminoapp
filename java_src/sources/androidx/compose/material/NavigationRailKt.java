package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import e8.q;
import g8.c;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class NavigationRailKt {
    private static final float HeaderPadding;
    private static final float NavigationRailPadding;

    @NotNull
    private static final TweenSpec<Float> NavigationRailAnimationSpec = new TweenSpec<>(300, 0, EasingKt.a(), 2, null);
    private static final float NavigationRailItemSize = Dp.f(72);
    private static final float NavigationRailItemCompactSize = Dp.f(56);
    private static final float ItemLabelBaselineBottomOffset = Dp.f(16);
    private static final float ItemIconTopOffset = Dp.f(14);

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult n(MeasureScope measureScope, Placeable placeable, Placeable placeable2, long j6, float f) {
        int iM = (Constraints.m(j6) - placeable.c0(AlignmentLineKt.b())) - measureScope.j0(ItemLabelBaselineBottomOffset);
        int iN = (Constraints.n(j6) - placeable.Q0()) / 2;
        int iJ0 = measureScope.j0(ItemIconTopOffset);
        int iM2 = (Constraints.m(j6) - placeable2.B0()) / 2;
        return MeasureScope.CC.b(measureScope, Constraints.n(j6), Constraints.m(j6), null, new NavigationRailKt$placeLabelAndIcon$1(f, placeable, iN, iM, c.c((iM2 - iJ0) * (1 - f)), placeable2, (Constraints.n(j6) - placeable2.Q0()) / 2, iJ0), 4, null);
    }

    static {
        float f = 8;
        NavigationRailPadding = Dp.f(f);
        HeaderPadding = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0169  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:73:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00da  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1 A[PHI: r1 r3 r4 r6 r11
      0x00f1: PHI (r1v6 androidx.compose.ui.Modifier) = (r1v3 androidx.compose.ui.Modifier), (r1v9 androidx.compose.ui.Modifier) binds: [B:97:0x0123, B:84:0x00f0] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r3v20 int) = (r3v15 int), (r3v23 int) binds: [B:97:0x0123, B:84:0x00f0] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r4v7 long) = (r4v3 long), (r4v2 long) binds: [B:97:0x0123, B:84:0x00f0] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r6v7 long) = (r6v3 long), (r6v2 long) binds: [B:97:0x0123, B:84:0x00f0] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r11v6 float) = (r11v3 float), (r11v2 float) binds: [B:97:0x0123, B:84:0x00f0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:86:0x00f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:91:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:94:0x010f  */
    /* JADX WARN: Code duplicated, block: B:96:0x011c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0125  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Modifier modifier, long j6, long j10, float f, @Nullable q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long jN;
        long jB;
        float fA;
        int i13;
        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar2;
        int i14;
        int i15;
        Modifier modifier3;
        int i16;
        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar3;
        float f6;
        float f7;
        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar4;
        long j11;
        long j12;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(1790971523);
        int i17 = i11 & 1;
        if (i17 != 0) {
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
                jN = j6;
                int i18 = composerS.q(jN) ? 32 : 16;
                i12 |= i18;
            } else {
                jN = j6;
            }
            i12 |= i18;
        } else {
            jN = j6;
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
                fA = f;
                i12 |= composerS.n(fA) ? 2048 : 1024;
            }
            i13 = i11 & 16;
            if (i13 != 0) {
                if ((57344 & i10) == 0) {
                    qVar2 = qVar;
                    if (composerS.k(qVar2)) {
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
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 2) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -113;
                            }
                            if ((i11 & 4) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                                i12 &= -897;
                            }
                            if (i20 != 0) {
                                fA = NavigationRailDefaults.INSTANCE.a();
                            }
                            if (i13 != 0) {
                                i16 = i12;
                                qVar3 = null;
                                f6 = fA;
                            }
                            composerS.A();
                            int i21 = i16 << 3;
                            SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i21 & 896) | (i21 & 7168) | ((i16 << 6) & 458752), 18);
                            long j13 = jB;
                            f7 = f6;
                            qVar4 = qVar3;
                            j11 = jN;
                            j12 = j13;
                        } else {
                            composerS.g();
                            if ((i11 & 2) != 0) {
                                i12 &= -113;
                            }
                            if ((i11 & 4) != 0) {
                                i12 &= -897;
                            }
                            modifier3 = modifier2;
                        }
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                        composerS.A();
                        int i22 = i16 << 3;
                        SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i22 & 896) | (i22 & 7168) | ((i16 << 6) & 458752), 18);
                        long j14 = jB;
                        f7 = f6;
                        qVar4 = qVar3;
                        j11 = jN;
                        j12 = j14;
                    } else {
                        composerS.g();
                        modifier3 = modifier2;
                        j11 = jN;
                        j12 = jB;
                        f7 = fA;
                        qVar4 = qVar2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
                }
                i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i15;
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    }
                    composerS.A();
                    int i23 = i16 << 3;
                    SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i23 & 896) | (i23 & 7168) | ((i16 << 6) & 458752), 18);
                    long j15 = jB;
                    f7 = f6;
                    qVar4 = qVar3;
                    j11 = jN;
                    j12 = j15;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    }
                    composerS.A();
                    int i24 = i16 << 3;
                    SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i24 & 896) | (i24 & 7168) | ((i16 << 6) & 458752), 18);
                    long j16 = jB;
                    f7 = f6;
                    qVar4 = qVar3;
                    j11 = jN;
                    j12 = j16;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            qVar2 = qVar;
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
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    }
                    composerS.A();
                    int i25 = i16 << 3;
                    SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i25 & 896) | (i25 & 7168) | ((i16 << 6) & 458752), 18);
                    long j17 = jB;
                    f7 = f6;
                    qVar4 = qVar3;
                    j11 = jN;
                    j12 = j17;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    }
                    composerS.A();
                    int i26 = i16 << 3;
                    SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i26 & 896) | (i26 & 7168) | ((i16 << 6) & 458752), 18);
                    long j18 = jB;
                    f7 = f6;
                    qVar4 = qVar3;
                    j11 = jN;
                    j12 = j18;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
            }
            i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i15;
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                }
                composerS.A();
                int i27 = i16 << 3;
                SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i27 & 896) | (i27 & 7168) | ((i16 << 6) & 458752), 18);
                long j19 = jB;
                f7 = f6;
                qVar4 = qVar3;
                j11 = jN;
                j12 = j19;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                }
                composerS.A();
                int i28 = i16 << 3;
                SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i28 & 896) | (i28 & 7168) | ((i16 << 6) & 458752), 18);
                long j110 = jB;
                f7 = f6;
                qVar4 = qVar3;
                j11 = jN;
                j12 = j110;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
        }
        i12 |= 3072;
        fA = f;
        i13 = i11 & 16;
        if (i13 != 0) {
            if ((57344 & i10) == 0) {
                qVar2 = qVar;
                if (composerS.k(qVar2)) {
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
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    }
                    composerS.A();
                    int i29 = i16 << 3;
                    SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i29 & 896) | (i29 & 7168) | ((i16 << 6) & 458752), 18);
                    long j111 = jB;
                    f7 = f6;
                    qVar4 = qVar3;
                    j11 = jN;
                    j12 = j111;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 2) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -113;
                        }
                        if ((i11 & 4) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                            i12 &= -897;
                        }
                        if (i20 != 0) {
                            fA = NavigationRailDefaults.INSTANCE.a();
                        }
                        if (i13 != 0) {
                            i16 = i12;
                            qVar3 = null;
                            f6 = fA;
                        } else {
                            i16 = i12;
                            f6 = fA;
                            qVar3 = qVar2;
                        }
                    }
                    composerS.A();
                    int i210 = i16 << 3;
                    SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i210 & 896) | (i210 & 7168) | ((i16 << 6) & 458752), 18);
                    long j112 = jB;
                    f7 = f6;
                    qVar4 = qVar3;
                    j11 = jN;
                    j12 = j112;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
            }
            i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i15;
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                }
                composerS.A();
                int i211 = i16 << 3;
                SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i211 & 896) | (i211 & 7168) | ((i16 << 6) & 458752), 18);
                long j113 = jB;
                f7 = f6;
                qVar4 = qVar3;
                j11 = jN;
                j12 = j113;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                }
                composerS.A();
                int i212 = i16 << 3;
                SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i212 & 896) | (i212 & 7168) | ((i16 << 6) & 458752), 18);
                long j114 = jB;
                f7 = f6;
                qVar4 = qVar3;
                j11 = jN;
                j12 = j114;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        qVar2 = qVar;
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
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                }
                composerS.A();
                int i213 = i16 << 3;
                SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i213 & 896) | (i213 & 7168) | ((i16 << 6) & 458752), 18);
                long j115 = jB;
                f7 = f6;
                qVar4 = qVar3;
                j11 = jN;
                j12 = j115;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i20 != 0) {
                        fA = NavigationRailDefaults.INSTANCE.a();
                    }
                    if (i13 != 0) {
                        i16 = i12;
                        qVar3 = null;
                        f6 = fA;
                    } else {
                        i16 = i12;
                        f6 = fA;
                        qVar3 = qVar2;
                    }
                }
                composerS.A();
                int i214 = i16 << 3;
                SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i214 & 896) | (i214 & 7168) | ((i16 << 6) & 458752), 18);
                long j116 = jB;
                f7 = f6;
                qVar4 = qVar3;
                j11 = jN;
                j12 = j116;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
        }
        i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i15;
        if ((374491 & i12) == 74898) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    fA = NavigationRailDefaults.INSTANCE.a();
                }
                if (i13 != 0) {
                    i16 = i12;
                    qVar3 = null;
                    f6 = fA;
                } else {
                    i16 = i12;
                    f6 = fA;
                    qVar3 = qVar2;
                }
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    fA = NavigationRailDefaults.INSTANCE.a();
                }
                if (i13 != 0) {
                    i16 = i12;
                    qVar3 = null;
                    f6 = fA;
                } else {
                    i16 = i12;
                    f6 = fA;
                    qVar3 = qVar2;
                }
            }
            composerS.A();
            int i215 = i16 << 3;
            SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i215 & 896) | (i215 & 7168) | ((i16 << 6) & 458752), 18);
            long j117 = jB;
            f7 = f6;
            qVar4 = qVar3;
            j11 = jN;
            j12 = j117;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    fA = NavigationRailDefaults.INSTANCE.a();
                }
                if (i13 != 0) {
                    i16 = i12;
                    qVar3 = null;
                    f6 = fA;
                } else {
                    i16 = i12;
                    f6 = fA;
                    qVar3 = qVar2;
                }
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i20 != 0) {
                    fA = NavigationRailDefaults.INSTANCE.a();
                }
                if (i13 != 0) {
                    i16 = i12;
                    qVar3 = null;
                    f6 = fA;
                } else {
                    i16 = i12;
                    f6 = fA;
                    qVar3 = qVar2;
                }
            }
            composerS.A();
            int i216 = i16 << 3;
            SurfaceKt.b(modifier3, null, jN, jB, null, f6, ComposableLambdaKt.b(composerS, -1571506489, true, new NavigationRailKt$NavigationRail$1(qVar3, i16, content)), composerS, (i16 & 14) | 1572864 | (i216 & 896) | (i216 & 7168) | ((i16 << 6) & 458752), 18);
            long j118 = jB;
            f7 = f6;
            qVar4 = qVar3;
            j11 = jN;
            j12 = j118;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new NavigationRailKt$NavigationRail$2(modifier3, j11, j12, f7, qVar4, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0121  */
    /* JADX WARN: Code duplicated, block: B:105:0x012c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:108:0x0133  */
    /* JADX WARN: Code duplicated, block: B:111:0x013f  */
    /* JADX WARN: Code duplicated, block: B:115:0x0155  */
    /* JADX WARN: Code duplicated, block: B:117:0x0163  */
    /* JADX WARN: Code duplicated, block: B:127:0x0182 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0184  */
    /* JADX WARN: Code duplicated, block: B:129:0x0187  */
    /* JADX WARN: Code duplicated, block: B:131:0x018a  */
    /* JADX WARN: Code duplicated, block: B:133:0x018d  */
    /* JADX WARN: Code duplicated, block: B:135:0x0190  */
    /* JADX WARN: Code duplicated, block: B:137:0x0193  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:145:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:148:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:149:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:152:0x0205  */
    /* JADX WARN: Code duplicated, block: B:153:0x0212  */
    /* JADX WARN: Code duplicated, block: B:155:0x0215  */
    /* JADX WARN: Code duplicated, block: B:156:0x0218  */
    /* JADX WARN: Code duplicated, block: B:159:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:162:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:163:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:168:0x0353  */
    /* JADX WARN: Code duplicated, block: B:170:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0086  */
    /* JADX WARN: Code duplicated, block: B:48:0x008b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0091  */
    /* JADX WARN: Code duplicated, block: B:52:0x0099  */
    /* JADX WARN: Code duplicated, block: B:53:0x009c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:91:0x0103  */
    /* JADX WARN: Code duplicated, block: B:94:0x010e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:97:0x0115  */
    @Composable
    @ComposableInferredTarget
    public static final void b(boolean z6, @NotNull a<l0> onClick, @NotNull p<? super Composer, ? super Integer, l0> icon, @Nullable Modifier modifier, boolean z10, @Nullable p<? super Composer, ? super Integer, l0> pVar, boolean z11, @Nullable MutableInteractionSource mutableInteractionSource, long j6, long j10, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z12;
        int i14;
        int i15;
        p<? super Composer, ? super Integer, l0> pVar2;
        int i16;
        int i17;
        boolean z13;
        int i18;
        int i19;
        int i20;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource2;
        long j11;
        long jL;
        Object objH;
        ComposableLambda composableLambdaB;
        float f;
        a<ComposeUiNode> aVarA;
        Modifier modifier4;
        long j12;
        boolean z14;
        MutableInteractionSource mutableInteractionSource3;
        long j13;
        boolean z15;
        p<? super Composer, ? super Integer, l0> pVar3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onClick, "onClick");
        t.j(icon, "icon");
        Composer composerS = composer.s(-1813548445);
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
            i12 |= composerS.k(onClick) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(icon) ? 256 : 128;
        }
        int i21 = i11 & 8;
        if (i21 == 0) {
            if ((i10 & 7168) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 2048 : 1024;
            }
            i13 = i11 & 16;
            if (i13 != 0) {
                if ((57344 & i10) == 0) {
                    z12 = z10;
                    if (composerS.m(z12)) {
                        i14 = 16384;
                    } else {
                        i14 = 8192;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar2 = pVar;
                        if (composerS.k(pVar2)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 64;
                    if (i17 != 0) {
                        if ((3670016 & i10) == 0) {
                            z13 = z11;
                            if (composerS.m(z13)) {
                                i18 = 1048576;
                            } else {
                                i18 = 524288;
                            }
                            i12 |= i18;
                        }
                        i19 = i11 & 128;
                        if (i19 != 0) {
                            i12 |= 12582912;
                        } else if ((i10 & 29360128) == 0) {
                            if (composerS.k(mutableInteractionSource)) {
                                i20 = 8388608;
                            } else {
                                i20 = 4194304;
                            }
                            i12 |= i20;
                        }
                        if ((i10 & 234881024) != 0) {
                            i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                        }
                        if ((i10 & 1879048192) != 0) {
                            i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                        }
                        if ((i12 & 1533916891) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i21 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    z12 = true;
                                }
                                if (i15 != 0) {
                                    pVar2 = null;
                                }
                                if (i17 != 0) {
                                    z13 = true;
                                }
                                if (i19 != 0) {
                                    composerS.G(-492369756);
                                    objH = composerS.H();
                                    if (objH == Composer.Companion.a()) {
                                        objH = InteractionSourceKt.a();
                                        composerS.z(objH);
                                    }
                                    composerS.Q();
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 256) != 0) {
                                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                    i12 &= -234881025;
                                } else {
                                    j11 = j6;
                                }
                                if ((i11 & 512) != 0) {
                                    jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                    i12 &= -1879048193;
                                } else {
                                    jL = j10;
                                }
                            } else {
                                composerS.g();
                                if ((i11 & 256) != 0) {
                                    i12 &= -234881025;
                                }
                                if ((i11 & 512) != 0) {
                                    i12 &= -1879048193;
                                }
                                mutableInteractionSource2 = mutableInteractionSource;
                                jL = j10;
                                modifier3 = modifier2;
                                j11 = j6;
                            }
                            composerS.A();
                            if (pVar2 != null) {
                                composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                            } else {
                                composableLambdaB = null;
                            }
                            if (pVar2 == null) {
                                f = NavigationRailItemCompactSize;
                            } else {
                                f = NavigationRailItemSize;
                            }
                            Modifier modifierY = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                            Alignment alignmentE = Alignment.Companion.e();
                            composerS.G(733328855);
                            Modifier modifier5 = modifier3;
                            MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composerS, 6);
                            composerS.G(-1323940314);
                            Density density = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource2;
                            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            boolean z16 = z12;
                            aVarA = companion.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierY);
                            p<? super Composer, ? super Integer, l0> pVar4 = pVar2;
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(aVarA);
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA = Updater.a(composerS);
                            Updater.e(composerA, measurePolicyH, companion.d());
                            Updater.e(composerA, density, companion.b());
                            Updater.e(composerA, layoutDirection, companion.c());
                            Updater.e(composerA, viewConfiguration, companion.f());
                            composerS.o();
                            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-2137368960);
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            composerS.G(-172871267);
                            int i22 = i12 >> 24;
                            d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i22 & 112) | (i22 & 14) | 3072 | ((i12 << 6) & 896));
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            modifier4 = modifier5;
                            j12 = j11;
                            z14 = z13;
                            mutableInteractionSource3 = mutableInteractionSource4;
                            j13 = jL;
                            z15 = z16;
                            pVar3 = pVar4;
                        } else {
                            composerS.g();
                            modifier4 = modifier2;
                            z15 = z12;
                            pVar3 = pVar2;
                            z14 = z13;
                            mutableInteractionSource3 = mutableInteractionSource;
                            j12 = j6;
                            j13 = j10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
                    }
                    i12 |= 1572864;
                    z13 = z11;
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i10 & 234881024) != 0) {
                        i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                    }
                    if ((i10 & 1879048192) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY2 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE2 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier6 = modifier3;
                        MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentE2, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        boolean z17 = z12;
                        aVarA = companion2.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierY2);
                        p<? super Composer, ? super Integer, l0> pVar5 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA2 = Updater.a(composerS);
                        Updater.e(composerA2, measurePolicyH2, companion2.d());
                        Updater.e(composerA2, density2, companion2.b());
                        Updater.e(composerA2, layoutDirection2, companion2.c());
                        Updater.e(composerA2, viewConfiguration2, companion2.f());
                        composerS.o();
                        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i23 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i23 & 112) | (i23 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier6;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource5;
                        j13 = jL;
                        z15 = z17;
                        pVar3 = pVar5;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY3 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE3 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier7 = modifier3;
                        MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentE3, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource6 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        boolean z18 = z12;
                        aVarA = companion3.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierY3);
                        p<? super Composer, ? super Integer, l0> pVar6 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA3 = Updater.a(composerS);
                        Updater.e(composerA3, measurePolicyH3, companion3.d());
                        Updater.e(composerA3, density3, companion3.b());
                        Updater.e(composerA3, layoutDirection3, companion3.c());
                        Updater.e(composerA3, viewConfiguration3, companion3.f());
                        composerS.o();
                        qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i24 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i24 & 112) | (i24 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier7;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource6;
                        j13 = jL;
                        z15 = z18;
                        pVar3 = pVar6;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar2 = pVar;
                i17 = i11 & 64;
                if (i17 != 0) {
                    if ((3670016 & i10) == 0) {
                        z13 = z11;
                        if (composerS.m(z13)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i10 & 234881024) != 0) {
                        i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                    }
                    if ((i10 & 1879048192) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY4 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE4 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier8 = modifier3;
                        MeasurePolicy measurePolicyH4 = BoxKt.h(alignmentE4, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource7 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                        boolean z19 = z12;
                        aVarA = companion4.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierY4);
                        p<? super Composer, ? super Integer, l0> pVar7 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA4 = Updater.a(composerS);
                        Updater.e(composerA4, measurePolicyH4, companion4.d());
                        Updater.e(composerA4, density4, companion4.b());
                        Updater.e(composerA4, layoutDirection4, companion4.c());
                        Updater.e(composerA4, viewConfiguration4, companion4.f());
                        composerS.o();
                        qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i25 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i25 & 112) | (i25 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier8;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource7;
                        j13 = jL;
                        z15 = z19;
                        pVar3 = pVar7;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY5 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE5 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier9 = modifier3;
                        MeasurePolicy measurePolicyH5 = BoxKt.h(alignmentE5, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        boolean z110 = z12;
                        aVarA = companion5.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierY5);
                        p<? super Composer, ? super Integer, l0> pVar8 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA5 = Updater.a(composerS);
                        Updater.e(composerA5, measurePolicyH5, companion5.d());
                        Updater.e(composerA5, density5, companion5.b());
                        Updater.e(composerA5, layoutDirection5, companion5.c());
                        Updater.e(composerA5, viewConfiguration5, companion5.f());
                        composerS.o();
                        qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i26 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i26 & 112) | (i26 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier9;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource8;
                        j13 = jL;
                        z15 = z110;
                        pVar3 = pVar8;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
                }
                i12 |= 1572864;
                z13 = z11;
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                }
                if ((i10 & 1879048192) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY6 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE6 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier10 = modifier3;
                    MeasurePolicy measurePolicyH6 = BoxKt.h(alignmentE6, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource9 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    boolean z111 = z12;
                    aVarA = companion6.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierY6);
                    p<? super Composer, ? super Integer, l0> pVar9 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA6 = Updater.a(composerS);
                    Updater.e(composerA6, measurePolicyH6, companion6.d());
                    Updater.e(composerA6, density6, companion6.b());
                    Updater.e(composerA6, layoutDirection6, companion6.c());
                    Updater.e(composerA6, viewConfiguration6, companion6.f());
                    composerS.o();
                    qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i27 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i27 & 112) | (i27 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier10;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource9;
                    j13 = jL;
                    z15 = z111;
                    pVar3 = pVar9;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY7 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE7 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier11 = modifier3;
                    MeasurePolicy measurePolicyH7 = BoxKt.h(alignmentE7, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource10 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    boolean z112 = z12;
                    aVarA = companion7.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierY7);
                    p<? super Composer, ? super Integer, l0> pVar10 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA7 = Updater.a(composerS);
                    Updater.e(composerA7, measurePolicyH7, companion7.d());
                    Updater.e(composerA7, density7, companion7.b());
                    Updater.e(composerA7, layoutDirection7, companion7.c());
                    Updater.e(composerA7, viewConfiguration7, companion7.f());
                    composerS.o();
                    qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i28 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i28 & 112) | (i28 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier11;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource10;
                    j13 = jL;
                    z15 = z112;
                    pVar3 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            z12 = z10;
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((458752 & i10) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    if ((3670016 & i10) == 0) {
                        z13 = z11;
                        if (composerS.m(z13)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i10 & 234881024) != 0) {
                        i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                    }
                    if ((i10 & 1879048192) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY8 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE8 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier12 = modifier3;
                        MeasurePolicy measurePolicyH8 = BoxKt.h(alignmentE8, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource11 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                        boolean z113 = z12;
                        aVarA = companion8.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierY8);
                        p<? super Composer, ? super Integer, l0> pVar11 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA8 = Updater.a(composerS);
                        Updater.e(composerA8, measurePolicyH8, companion8.d());
                        Updater.e(composerA8, density8, companion8.b());
                        Updater.e(composerA8, layoutDirection8, companion8.c());
                        Updater.e(composerA8, viewConfiguration8, companion8.f());
                        composerS.o();
                        qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i29 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i29 & 112) | (i29 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier12;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource11;
                        j13 = jL;
                        z15 = z113;
                        pVar3 = pVar11;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY9 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE9 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier13 = modifier3;
                        MeasurePolicy measurePolicyH9 = BoxKt.h(alignmentE9, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource12 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        boolean z114 = z12;
                        aVarA = companion9.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierY9);
                        p<? super Composer, ? super Integer, l0> pVar12 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA9 = Updater.a(composerS);
                        Updater.e(composerA9, measurePolicyH9, companion9.d());
                        Updater.e(composerA9, density9, companion9.b());
                        Updater.e(composerA9, layoutDirection9, companion9.c());
                        Updater.e(composerA9, viewConfiguration9, companion9.f());
                        composerS.o();
                        qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i210 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i210 & 112) | (i210 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier13;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource12;
                        j13 = jL;
                        z15 = z114;
                        pVar3 = pVar12;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
                }
                i12 |= 1572864;
                z13 = z11;
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                }
                if ((i10 & 1879048192) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY10 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE10 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier14 = modifier3;
                    MeasurePolicy measurePolicyH10 = BoxKt.h(alignmentE10, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource13 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    boolean z115 = z12;
                    aVarA = companion10.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierY10);
                    p<? super Composer, ? super Integer, l0> pVar13 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA10 = Updater.a(composerS);
                    Updater.e(composerA10, measurePolicyH10, companion10.d());
                    Updater.e(composerA10, density10, companion10.b());
                    Updater.e(composerA10, layoutDirection10, companion10.c());
                    Updater.e(composerA10, viewConfiguration10, companion10.f());
                    composerS.o();
                    qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i211 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i211 & 112) | (i211 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier14;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource13;
                    j13 = jL;
                    z15 = z115;
                    pVar3 = pVar13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY11 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE11 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier15 = modifier3;
                    MeasurePolicy measurePolicyH11 = BoxKt.h(alignmentE11, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource14 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    boolean z116 = z12;
                    aVarA = companion11.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierY11);
                    p<? super Composer, ? super Integer, l0> pVar14 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA11 = Updater.a(composerS);
                    Updater.e(composerA11, measurePolicyH11, companion11.d());
                    Updater.e(composerA11, density11, companion11.b());
                    Updater.e(composerA11, layoutDirection11, companion11.c());
                    Updater.e(composerA11, viewConfiguration11, companion11.f());
                    composerS.o();
                    qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i212 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i212 & 112) | (i212 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier15;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource14;
                    j13 = jL;
                    z15 = z116;
                    pVar3 = pVar14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar2 = pVar;
            i17 = i11 & 64;
            if (i17 != 0) {
                if ((3670016 & i10) == 0) {
                    z13 = z11;
                    if (composerS.m(z13)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                }
                if ((i10 & 1879048192) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY12 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE12 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier16 = modifier3;
                    MeasurePolicy measurePolicyH12 = BoxKt.h(alignmentE12, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource15 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                    boolean z117 = z12;
                    aVarA = companion12.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierY12);
                    p<? super Composer, ? super Integer, l0> pVar15 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA12 = Updater.a(composerS);
                    Updater.e(composerA12, measurePolicyH12, companion12.d());
                    Updater.e(composerA12, density12, companion12.b());
                    Updater.e(composerA12, layoutDirection12, companion12.c());
                    Updater.e(composerA12, viewConfiguration12, companion12.f());
                    composerS.o();
                    qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i213 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i213 & 112) | (i213 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier16;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource15;
                    j13 = jL;
                    z15 = z117;
                    pVar3 = pVar15;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY13 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE13 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier17 = modifier3;
                    MeasurePolicy measurePolicyH13 = BoxKt.h(alignmentE13, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource16 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    boolean z118 = z12;
                    aVarA = companion13.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierY13);
                    p<? super Composer, ? super Integer, l0> pVar16 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA13 = Updater.a(composerS);
                    Updater.e(composerA13, measurePolicyH13, companion13.d());
                    Updater.e(composerA13, density13, companion13.b());
                    Updater.e(composerA13, layoutDirection13, companion13.c());
                    Updater.e(composerA13, viewConfiguration13, companion13.f());
                    composerS.o();
                    qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i214 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i214 & 112) | (i214 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier17;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource16;
                    j13 = jL;
                    z15 = z118;
                    pVar3 = pVar16;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
            }
            i12 |= 1572864;
            z13 = z11;
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
            }
            if ((i10 & 1879048192) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY14 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE14 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier18 = modifier3;
                MeasurePolicy measurePolicyH14 = BoxKt.h(alignmentE14, false, composerS, 6);
                composerS.G(-1323940314);
                Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource17 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                boolean z119 = z12;
                aVarA = companion14.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierY14);
                p<? super Composer, ? super Integer, l0> pVar17 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA14 = Updater.a(composerS);
                Updater.e(composerA14, measurePolicyH14, companion14.d());
                Updater.e(composerA14, density14, companion14.b());
                Updater.e(composerA14, layoutDirection14, companion14.c());
                Updater.e(composerA14, viewConfiguration14, companion14.f());
                composerS.o();
                qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i215 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i215 & 112) | (i215 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier18;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource17;
                j13 = jL;
                z15 = z119;
                pVar3 = pVar17;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY15 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE15 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier19 = modifier3;
                MeasurePolicy measurePolicyH15 = BoxKt.h(alignmentE15, false, composerS, 6);
                composerS.G(-1323940314);
                Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource18 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                boolean z1110 = z12;
                aVarA = companion15.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierY15);
                p<? super Composer, ? super Integer, l0> pVar18 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA15 = Updater.a(composerS);
                Updater.e(composerA15, measurePolicyH15, companion15.d());
                Updater.e(composerA15, density15, companion15.b());
                Updater.e(composerA15, layoutDirection15, companion15.c());
                Updater.e(composerA15, viewConfiguration15, companion15.f());
                composerS.o();
                qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i216 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i216 & 112) | (i216 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier19;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource18;
                j13 = jL;
                z15 = z1110;
                pVar3 = pVar18;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
        }
        i12 |= 3072;
        modifier2 = modifier;
        i13 = i11 & 16;
        if (i13 != 0) {
            if ((57344 & i10) == 0) {
                z12 = z10;
                if (composerS.m(z12)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i12 |= i14;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((458752 & i10) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    if ((3670016 & i10) == 0) {
                        z13 = z11;
                        if (composerS.m(z13)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i10 & 234881024) != 0) {
                        i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                    }
                    if ((i10 & 1879048192) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY16 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE16 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier110 = modifier3;
                        MeasurePolicy measurePolicyH16 = BoxKt.h(alignmentE16, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource19 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                        boolean z1111 = z12;
                        aVarA = companion16.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierY16);
                        p<? super Composer, ? super Integer, l0> pVar19 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA16 = Updater.a(composerS);
                        Updater.e(composerA16, measurePolicyH16, companion16.d());
                        Updater.e(composerA16, density16, companion16.b());
                        Updater.e(composerA16, layoutDirection16, companion16.c());
                        Updater.e(composerA16, viewConfiguration16, companion16.f());
                        composerS.o();
                        qVarC16.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i217 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i217 & 112) | (i217 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier110;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource19;
                        j13 = jL;
                        z15 = z1111;
                        pVar3 = pVar19;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i21 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            }
                            if (i15 != 0) {
                                pVar2 = null;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 256) != 0) {
                                j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                                i12 &= -234881025;
                            } else {
                                j11 = j6;
                            }
                            if ((i11 & 512) != 0) {
                                jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -1879048193;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                        } else {
                            composableLambdaB = null;
                        }
                        if (pVar2 == null) {
                            f = NavigationRailItemCompactSize;
                        } else {
                            f = NavigationRailItemSize;
                        }
                        Modifier modifierY17 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                        Alignment alignmentE17 = Alignment.Companion.e();
                        composerS.G(733328855);
                        Modifier modifier111 = modifier3;
                        MeasurePolicy measurePolicyH17 = BoxKt.h(alignmentE17, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection17 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        MutableInteractionSource mutableInteractionSource110 = mutableInteractionSource2;
                        ViewConfiguration viewConfiguration17 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                        boolean z1112 = z12;
                        aVarA = companion17.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC17 = LayoutKt.c(modifierY17);
                        p<? super Composer, ? super Integer, l0> pVar110 = pVar2;
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA17 = Updater.a(composerS);
                        Updater.e(composerA17, measurePolicyH17, companion17.d());
                        Updater.e(composerA17, density17, companion17.b());
                        Updater.e(composerA17, layoutDirection17, companion17.c());
                        Updater.e(composerA17, viewConfiguration17, companion17.f());
                        composerS.o();
                        qVarC17.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance17 = BoxScopeInstance.INSTANCE;
                        composerS.G(-172871267);
                        int i218 = i12 >> 24;
                        d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i218 & 112) | (i218 & 14) | 3072 | ((i12 << 6) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier4 = modifier111;
                        j12 = j11;
                        z14 = z13;
                        mutableInteractionSource3 = mutableInteractionSource110;
                        j13 = jL;
                        z15 = z1112;
                        pVar3 = pVar110;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
                }
                i12 |= 1572864;
                z13 = z11;
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                }
                if ((i10 & 1879048192) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY18 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE18 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier112 = modifier3;
                    MeasurePolicy measurePolicyH18 = BoxKt.h(alignmentE18, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection18 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource111 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration18 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                    boolean z1113 = z12;
                    aVarA = companion18.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC18 = LayoutKt.c(modifierY18);
                    p<? super Composer, ? super Integer, l0> pVar111 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA18 = Updater.a(composerS);
                    Updater.e(composerA18, measurePolicyH18, companion18.d());
                    Updater.e(composerA18, density18, companion18.b());
                    Updater.e(composerA18, layoutDirection18, companion18.c());
                    Updater.e(composerA18, viewConfiguration18, companion18.f());
                    composerS.o();
                    qVarC18.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance18 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i219 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i219 & 112) | (i219 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier112;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource111;
                    j13 = jL;
                    z15 = z1113;
                    pVar3 = pVar111;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY19 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE19 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier113 = modifier3;
                    MeasurePolicy measurePolicyH19 = BoxKt.h(alignmentE19, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection19 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource112 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration19 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                    boolean z1114 = z12;
                    aVarA = companion19.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC19 = LayoutKt.c(modifierY19);
                    p<? super Composer, ? super Integer, l0> pVar112 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA19 = Updater.a(composerS);
                    Updater.e(composerA19, measurePolicyH19, companion19.d());
                    Updater.e(composerA19, density19, companion19.b());
                    Updater.e(composerA19, layoutDirection19, companion19.c());
                    Updater.e(composerA19, viewConfiguration19, companion19.f());
                    composerS.o();
                    qVarC19.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance19 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i2110 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2110 & 112) | (i2110 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier113;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource112;
                    j13 = jL;
                    z15 = z1114;
                    pVar3 = pVar112;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar2 = pVar;
            i17 = i11 & 64;
            if (i17 != 0) {
                if ((3670016 & i10) == 0) {
                    z13 = z11;
                    if (composerS.m(z13)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                }
                if ((i10 & 1879048192) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY110 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE110 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier114 = modifier3;
                    MeasurePolicy measurePolicyH110 = BoxKt.h(alignmentE110, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource113 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                    boolean z1115 = z12;
                    aVarA = companion110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC110 = LayoutKt.c(modifierY110);
                    p<? super Composer, ? super Integer, l0> pVar113 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA110 = Updater.a(composerS);
                    Updater.e(composerA110, measurePolicyH110, companion110.d());
                    Updater.e(composerA110, density110, companion110.b());
                    Updater.e(composerA110, layoutDirection110, companion110.c());
                    Updater.e(composerA110, viewConfiguration110, companion110.f());
                    composerS.o();
                    qVarC110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance110 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i2111 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2111 & 112) | (i2111 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier114;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource113;
                    j13 = jL;
                    z15 = z1115;
                    pVar3 = pVar113;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY111 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE111 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier115 = modifier3;
                    MeasurePolicy measurePolicyH111 = BoxKt.h(alignmentE111, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource114 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                    boolean z1116 = z12;
                    aVarA = companion111.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111 = LayoutKt.c(modifierY111);
                    p<? super Composer, ? super Integer, l0> pVar114 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111 = Updater.a(composerS);
                    Updater.e(composerA111, measurePolicyH111, companion111.d());
                    Updater.e(composerA111, density111, companion111.b());
                    Updater.e(composerA111, layoutDirection111, companion111.c());
                    Updater.e(composerA111, viewConfiguration111, companion111.f());
                    composerS.o();
                    qVarC111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance111 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i2112 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2112 & 112) | (i2112 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier115;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource114;
                    j13 = jL;
                    z15 = z1116;
                    pVar3 = pVar114;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
            }
            i12 |= 1572864;
            z13 = z11;
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
            }
            if ((i10 & 1879048192) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY112 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE112 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier116 = modifier3;
                MeasurePolicy measurePolicyH112 = BoxKt.h(alignmentE112, false, composerS, 6);
                composerS.G(-1323940314);
                Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource115 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                boolean z1117 = z12;
                aVarA = companion112.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC112 = LayoutKt.c(modifierY112);
                p<? super Composer, ? super Integer, l0> pVar115 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA112 = Updater.a(composerS);
                Updater.e(composerA112, measurePolicyH112, companion112.d());
                Updater.e(composerA112, density112, companion112.b());
                Updater.e(composerA112, layoutDirection112, companion112.c());
                Updater.e(composerA112, viewConfiguration112, companion112.f());
                composerS.o();
                qVarC112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance112 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i2113 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2113 & 112) | (i2113 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier116;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource115;
                j13 = jL;
                z15 = z1117;
                pVar3 = pVar115;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY113 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE113 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier117 = modifier3;
                MeasurePolicy measurePolicyH113 = BoxKt.h(alignmentE113, false, composerS, 6);
                composerS.G(-1323940314);
                Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource116 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                boolean z1118 = z12;
                aVarA = companion113.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC113 = LayoutKt.c(modifierY113);
                p<? super Composer, ? super Integer, l0> pVar116 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA113 = Updater.a(composerS);
                Updater.e(composerA113, measurePolicyH113, companion113.d());
                Updater.e(composerA113, density113, companion113.b());
                Updater.e(composerA113, layoutDirection113, companion113.c());
                Updater.e(composerA113, viewConfiguration113, companion113.f());
                composerS.o();
                qVarC113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance113 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i2114 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2114 & 112) | (i2114 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier117;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource116;
                j13 = jL;
                z15 = z1118;
                pVar3 = pVar116;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        z12 = z10;
        i15 = i11 & 32;
        if (i15 != 0) {
            if ((458752 & i10) == 0) {
                pVar2 = pVar;
                if (composerS.k(pVar2)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                if ((3670016 & i10) == 0) {
                    z13 = z11;
                    if (composerS.m(z13)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
                }
                if ((i10 & 1879048192) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY114 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE114 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier118 = modifier3;
                    MeasurePolicy measurePolicyH114 = BoxKt.h(alignmentE114, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource117 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                    boolean z1119 = z12;
                    aVarA = companion114.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC114 = LayoutKt.c(modifierY114);
                    p<? super Composer, ? super Integer, l0> pVar117 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA114 = Updater.a(composerS);
                    Updater.e(composerA114, measurePolicyH114, companion114.d());
                    Updater.e(composerA114, density114, companion114.b());
                    Updater.e(composerA114, layoutDirection114, companion114.c());
                    Updater.e(composerA114, viewConfiguration114, companion114.f());
                    composerS.o();
                    qVarC114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance114 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i2115 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2115 & 112) | (i2115 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier118;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource117;
                    j13 = jL;
                    z15 = z1119;
                    pVar3 = pVar117;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i21 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        }
                        if (i15 != 0) {
                            pVar2 = null;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 256) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                            i12 &= -234881025;
                        } else {
                            j11 = j6;
                        }
                        if ((i11 & 512) != 0) {
                            jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -1879048193;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                    } else {
                        composableLambdaB = null;
                    }
                    if (pVar2 == null) {
                        f = NavigationRailItemCompactSize;
                    } else {
                        f = NavigationRailItemSize;
                    }
                    Modifier modifierY115 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                    Alignment alignmentE115 = Alignment.Companion.e();
                    composerS.G(733328855);
                    Modifier modifier119 = modifier3;
                    MeasurePolicy measurePolicyH115 = BoxKt.h(alignmentE115, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    MutableInteractionSource mutableInteractionSource118 = mutableInteractionSource2;
                    ViewConfiguration viewConfiguration115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                    boolean z11110 = z12;
                    aVarA = companion115.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC115 = LayoutKt.c(modifierY115);
                    p<? super Composer, ? super Integer, l0> pVar118 = pVar2;
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA115 = Updater.a(composerS);
                    Updater.e(composerA115, measurePolicyH115, companion115.d());
                    Updater.e(composerA115, density115, companion115.b());
                    Updater.e(composerA115, layoutDirection115, companion115.c());
                    Updater.e(composerA115, viewConfiguration115, companion115.f());
                    composerS.o();
                    qVarC115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance115 = BoxScopeInstance.INSTANCE;
                    composerS.G(-172871267);
                    int i2116 = i12 >> 24;
                    d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2116 & 112) | (i2116 & 14) | 3072 | ((i12 << 6) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier4 = modifier119;
                    j12 = j11;
                    z14 = z13;
                    mutableInteractionSource3 = mutableInteractionSource118;
                    j13 = jL;
                    z15 = z11110;
                    pVar3 = pVar118;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
            }
            i12 |= 1572864;
            z13 = z11;
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
            }
            if ((i10 & 1879048192) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY116 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE116 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier1110 = modifier3;
                MeasurePolicy measurePolicyH116 = BoxKt.h(alignmentE116, false, composerS, 6);
                composerS.G(-1323940314);
                Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource119 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                boolean z11111 = z12;
                aVarA = companion116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC116 = LayoutKt.c(modifierY116);
                p<? super Composer, ? super Integer, l0> pVar119 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA116 = Updater.a(composerS);
                Updater.e(composerA116, measurePolicyH116, companion116.d());
                Updater.e(composerA116, density116, companion116.b());
                Updater.e(composerA116, layoutDirection116, companion116.c());
                Updater.e(composerA116, viewConfiguration116, companion116.f());
                composerS.o();
                qVarC116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance116 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i2117 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2117 & 112) | (i2117 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier1110;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource119;
                j13 = jL;
                z15 = z11111;
                pVar3 = pVar119;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY117 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE117 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier1111 = modifier3;
                MeasurePolicy measurePolicyH117 = BoxKt.h(alignmentE117, false, composerS, 6);
                composerS.G(-1323940314);
                Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource1110 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                boolean z11112 = z12;
                aVarA = companion117.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC117 = LayoutKt.c(modifierY117);
                p<? super Composer, ? super Integer, l0> pVar1110 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA117 = Updater.a(composerS);
                Updater.e(composerA117, measurePolicyH117, companion117.d());
                Updater.e(composerA117, density117, companion117.b());
                Updater.e(composerA117, layoutDirection117, companion117.c());
                Updater.e(composerA117, viewConfiguration117, companion117.f());
                composerS.o();
                qVarC117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance117 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i2118 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2118 & 112) | (i2118 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier1111;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource1110;
                j13 = jL;
                z15 = z11112;
                pVar3 = pVar1110;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        pVar2 = pVar;
        i17 = i11 & 64;
        if (i17 != 0) {
            if ((3670016 & i10) == 0) {
                z13 = z11;
                if (composerS.m(z13)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
            }
            if ((i10 & 1879048192) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY118 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE118 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier1112 = modifier3;
                MeasurePolicy measurePolicyH118 = BoxKt.h(alignmentE118, false, composerS, 6);
                composerS.G(-1323940314);
                Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource1111 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                boolean z11113 = z12;
                aVarA = companion118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC118 = LayoutKt.c(modifierY118);
                p<? super Composer, ? super Integer, l0> pVar1111 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA118 = Updater.a(composerS);
                Updater.e(composerA118, measurePolicyH118, companion118.d());
                Updater.e(composerA118, density118, companion118.b());
                Updater.e(composerA118, layoutDirection118, companion118.c());
                Updater.e(composerA118, viewConfiguration118, companion118.f());
                composerS.o();
                qVarC118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance118 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i2119 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i2119 & 112) | (i2119 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier1112;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource1111;
                j13 = jL;
                z15 = z11113;
                pVar3 = pVar1111;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i21 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    }
                    if (i15 != 0) {
                        pVar2 = null;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 256) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        i12 &= -234881025;
                    } else {
                        j11 = j6;
                    }
                    if ((i11 & 512) != 0) {
                        jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -1879048193;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
                } else {
                    composableLambdaB = null;
                }
                if (pVar2 == null) {
                    f = NavigationRailItemCompactSize;
                } else {
                    f = NavigationRailItemSize;
                }
                Modifier modifierY119 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
                Alignment alignmentE119 = Alignment.Companion.e();
                composerS.G(733328855);
                Modifier modifier1113 = modifier3;
                MeasurePolicy measurePolicyH119 = BoxKt.h(alignmentE119, false, composerS, 6);
                composerS.G(-1323940314);
                Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                MutableInteractionSource mutableInteractionSource1112 = mutableInteractionSource2;
                ViewConfiguration viewConfiguration119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                boolean z11114 = z12;
                aVarA = companion119.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC119 = LayoutKt.c(modifierY119);
                p<? super Composer, ? super Integer, l0> pVar1112 = pVar2;
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA119 = Updater.a(composerS);
                Updater.e(composerA119, measurePolicyH119, companion119.d());
                Updater.e(composerA119, density119, companion119.b());
                Updater.e(composerA119, layoutDirection119, companion119.c());
                Updater.e(composerA119, viewConfiguration119, companion119.f());
                composerS.o();
                qVarC119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance119 = BoxScopeInstance.INSTANCE;
                composerS.G(-172871267);
                int i21110 = i12 >> 24;
                d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i21110 & 112) | (i21110 & 14) | 3072 | ((i12 << 6) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier1113;
                j12 = j11;
                z14 = z13;
                mutableInteractionSource3 = mutableInteractionSource1112;
                j13 = jL;
                z15 = z11114;
                pVar3 = pVar1112;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
        }
        i12 |= 1572864;
        z13 = z11;
        i19 = i11 & 128;
        if (i19 != 0) {
            i12 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i20 = 8388608;
            } else {
                i20 = 4194304;
            }
            i12 |= i20;
        }
        if ((i10 & 234881024) != 0) {
            i12 |= ((i11 & 256) == 0 || !composerS.q(j6)) ? 33554432 : 67108864;
        }
        if ((i10 & 1879048192) != 0) {
            i12 |= ((i11 & 512) == 0 || !composerS.q(j10)) ? 268435456 : 536870912;
        }
        if ((i12 & 1533916891) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                }
                if (i15 != 0) {
                    pVar2 = null;
                }
                if (i17 != 0) {
                    z13 = true;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 256) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    i12 &= -234881025;
                } else {
                    j11 = j6;
                }
                if ((i11 & 512) != 0) {
                    jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -1879048193;
                } else {
                    jL = j10;
                }
            } else {
                if (i21 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                }
                if (i15 != 0) {
                    pVar2 = null;
                }
                if (i17 != 0) {
                    z13 = true;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 256) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    i12 &= -234881025;
                } else {
                    j11 = j6;
                }
                if ((i11 & 512) != 0) {
                    jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -1879048193;
                } else {
                    jL = j10;
                }
            }
            composerS.A();
            if (pVar2 != null) {
                composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
            } else {
                composableLambdaB = null;
            }
            if (pVar2 == null) {
                f = NavigationRailItemCompactSize;
            } else {
                f = NavigationRailItemSize;
            }
            Modifier modifierY1110 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
            Alignment alignmentE1110 = Alignment.Companion.e();
            composerS.G(733328855);
            Modifier modifier1114 = modifier3;
            MeasurePolicy measurePolicyH1110 = BoxKt.h(alignmentE1110, false, composerS, 6);
            composerS.G(-1323940314);
            Density density1110 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            MutableInteractionSource mutableInteractionSource1113 = mutableInteractionSource2;
            ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
            boolean z11115 = z12;
            aVarA = companion1110.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1110 = LayoutKt.c(modifierY1110);
            p<? super Composer, ? super Integer, l0> pVar1113 = pVar2;
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA1110 = Updater.a(composerS);
            Updater.e(composerA1110, measurePolicyH1110, companion1110.d());
            Updater.e(composerA1110, density1110, companion1110.b());
            Updater.e(composerA1110, layoutDirection1110, companion1110.c());
            Updater.e(composerA1110, viewConfiguration1110, companion1110.f());
            composerS.o();
            qVarC1110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance1110 = BoxScopeInstance.INSTANCE;
            composerS.G(-172871267);
            int i21111 = i12 >> 24;
            d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i21111 & 112) | (i21111 & 14) | 3072 | ((i12 << 6) & 896));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier1114;
            j12 = j11;
            z14 = z13;
            mutableInteractionSource3 = mutableInteractionSource1113;
            j13 = jL;
            z15 = z11115;
            pVar3 = pVar1113;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                }
                if (i15 != 0) {
                    pVar2 = null;
                }
                if (i17 != 0) {
                    z13 = true;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 256) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    i12 &= -234881025;
                } else {
                    j11 = j6;
                }
                if ((i11 & 512) != 0) {
                    jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -1879048193;
                } else {
                    jL = j10;
                }
            } else {
                if (i21 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                }
                if (i15 != 0) {
                    pVar2 = null;
                }
                if (i17 != 0) {
                    z13 = true;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 256) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    i12 &= -234881025;
                } else {
                    j11 = j6;
                }
                if ((i11 & 512) != 0) {
                    jL = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -1879048193;
                } else {
                    jL = j10;
                }
            }
            composerS.A();
            if (pVar2 != null) {
                composableLambdaB = ComposableLambdaKt.b(composerS, -180398615, true, new NavigationRailKt$NavigationRailItem$styledLabel$1$1(pVar2, i12));
            } else {
                composableLambdaB = null;
            }
            if (pVar2 == null) {
                f = NavigationRailItemCompactSize;
            } else {
                f = NavigationRailItemSize;
            }
            Modifier modifierY1111 = SizeKt.y(SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, j11, composerS, ((i12 >> 18) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), f);
            Alignment alignmentE1111 = Alignment.Companion.e();
            composerS.G(733328855);
            Modifier modifier1115 = modifier3;
            MeasurePolicy measurePolicyH1111 = BoxKt.h(alignmentE1111, false, composerS, 6);
            composerS.G(-1323940314);
            Density density1111 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            MutableInteractionSource mutableInteractionSource1114 = mutableInteractionSource2;
            ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
            boolean z11116 = z12;
            aVarA = companion1111.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111 = LayoutKt.c(modifierY1111);
            p<? super Composer, ? super Integer, l0> pVar1114 = pVar2;
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA1111 = Updater.a(composerS);
            Updater.e(composerA1111, measurePolicyH1111, companion1111.d());
            Updater.e(composerA1111, density1111, companion1111.b());
            Updater.e(composerA1111, layoutDirection1111, companion1111.c());
            Updater.e(composerA1111, viewConfiguration1111, companion1111.f());
            composerS.o();
            qVarC1111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance1111 = BoxScopeInstance.INSTANCE;
            composerS.G(-172871267);
            int i21112 = i12 >> 24;
            d(j11, jL, z6, ComposableLambdaKt.b(composerS, 670576792, true, new NavigationRailKt$NavigationRailItem$2$1(z13, icon, composableLambdaB, i12)), composerS, (i21112 & 112) | (i21112 & 14) | 3072 | ((i12 << 6) & 896));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier1115;
            j12 = j11;
            z14 = z13;
            mutableInteractionSource3 = mutableInteractionSource1114;
            j13 = jL;
            z15 = z11116;
            pVar3 = pVar1114;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItem$3(z6, onClick, icon, modifier4, z15, pVar3, z14, mutableInteractionSource3, j12, j13, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void c(p<? super Composer, ? super Integer, l0> pVar, final p<? super Composer, ? super Integer, l0> pVar2, final float f, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-1903861684);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(pVar) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(pVar2) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.n(f) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.NavigationRailKt$NavigationRailItemBaselineLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    Placeable placeableB0;
                    Measurable measurable;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable2 : list) {
                        if (t.e(LayoutIdKt.a(measurable2), "icon")) {
                            Placeable placeableB1 = measurable2.b0(j6);
                            if (pVar2 != null) {
                                Iterator<T> it = list.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                    }
                                    measurable = (Measurable) it.next();
                                } while (!t.e(LayoutIdKt.a(measurable), "label"));
                                placeableB0 = measurable.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                            } else {
                                placeableB0 = null;
                            }
                            if (pVar2 == null) {
                                return NavigationRailKt.m(Layout, placeableB1, j6);
                            }
                            t.g(placeableB0);
                            return NavigationRailKt.n(Layout, placeableB0, placeableB1, j6, f);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return androidx.compose.ui.layout.c.c(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return androidx.compose.ui.layout.c.d(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return androidx.compose.ui.layout.c.a(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return androidx.compose.ui.layout.c.b(this, intrinsicMeasureScope, list, i12);
                }
            };
            composerS.G(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(companion);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA = Updater.a(composerS);
            Updater.e(composerA, measurePolicy, companion2.d());
            Updater.e(composerA, density, companion2.b());
            Updater.e(composerA, layoutDirection, companion2.c());
            Updater.e(composerA, viewConfiguration, companion2.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(1943278197);
            Modifier modifierB = LayoutIdKt.b(companion, "icon");
            composerS.G(733328855);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy measurePolicyH = BoxKt.h(companion3.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            a<ComposeUiNode> aVarA2 = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA2);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA2 = Updater.a(composerS);
            Updater.e(composerA2, measurePolicyH, companion2.d());
            Updater.e(composerA2, density2, companion2.b());
            Updater.e(composerA2, layoutDirection2, companion2.c());
            Updater.e(composerA2, viewConfiguration2, companion2.f());
            composerS.o();
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composerS.G(1405563567);
            pVar.invoke(composerS, Integer.valueOf(i11 & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            if (pVar2 != null) {
                Modifier modifierA = AlphaKt.a(LayoutIdKt.b(companion, "label"), f);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(companion3.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA3 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierA);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA3);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA3 = Updater.a(composerS);
                Updater.e(composerA3, measurePolicyH2, companion2.d());
                Updater.e(composerA3, density3, companion2.b());
                Updater.e(composerA3, layoutDirection3, companion2.c());
                Updater.e(composerA3, viewConfiguration3, companion2.f());
                composerS.o();
                qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                composerS.G(2107148020);
                pVar2.invoke(composerS, Integer.valueOf((i11 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailItemBaselineLayout$3(pVar, pVar2, f, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void d(long j6, long j10, boolean z6, q<? super Float, ? super Composer, ? super Integer, l0> qVar, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-207161906);
        if ((i10 & 14) == 0) {
            i11 = (composerS.q(j6) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.q(j10) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.m(z6) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.k(qVar) ? 2048 : 1024;
        }
        int i12 = i11;
        if ((i12 & 5851) == 1170 && composerS.b()) {
            composerS.g();
        } else {
            State<Float> stateD = AnimateAsStateKt.d(z6 ? 1.0f : 0.0f, NavigationRailAnimationSpec, 0.0f, null, composerS, 48, 12);
            long jI = ColorKt.i(j10, j6, e(stateD));
            CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(Color.l(jI, 1.0f, 0.0f, 0.0f, 0.0f, 14, null))), ContentAlphaKt.a().c(Float.valueOf(Color.o(jI)))}, ComposableLambdaKt.b(composerS, -1688205042, true, new NavigationRailKt$NavigationRailTransition$1(qVar, i12, stateD)), composerS, 56);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new NavigationRailKt$NavigationRailTransition$2(j6, j10, z6, qVar, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult m(MeasureScope measureScope, Placeable placeable, long j6) {
        return MeasureScope.CC.b(measureScope, Constraints.n(j6), Constraints.m(j6), null, new NavigationRailKt$placeIcon$1(placeable, Math.max(0, (Constraints.n(j6) - placeable.Q0()) / 2), Math.max(0, (Constraints.m(j6) - placeable.B0()) / 2)), 4, null);
    }
}
