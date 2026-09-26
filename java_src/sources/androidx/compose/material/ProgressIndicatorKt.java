package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ProgressIndicatorKt {
    private static final float BaseRotationAngle = 286.0f;
    private static final int FirstLineHeadDelay = 0;
    private static final int FirstLineHeadDuration = 750;
    private static final int FirstLineTailDelay = 333;
    private static final int FirstLineTailDuration = 850;
    private static final int HeadAndTailAnimationDuration = 666;
    private static final int HeadAndTailDelayDuration = 666;
    private static final float JumpRotationAngle = 290.0f;
    private static final int LinearAnimationDuration = 1800;
    private static final float RotationAngleOffset = 216.0f;
    private static final int RotationDuration = 1332;
    private static final int RotationsPerCycle = 5;
    private static final int SecondLineHeadDelay = 1000;
    private static final int SecondLineHeadDuration = 567;
    private static final int SecondLineTailDelay = 1267;
    private static final int SecondLineTailDuration = 533;
    private static final float StartAngleOffset = -90.0f;
    private static final float LinearIndicatorHeight = ProgressIndicatorDefaults.INSTANCE.a();
    private static final float LinearIndicatorWidth = Dp.f(240);
    private static final float CircularIndicatorDiameter = Dp.f(40);

    @NotNull
    private static final CubicBezierEasing FirstLineHeadEasing = new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);

    @NotNull
    private static final CubicBezierEasing FirstLineTailEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);

    @NotNull
    private static final CubicBezierEasing SecondLineHeadEasing = new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);

    @NotNull
    private static final CubicBezierEasing SecondLineTailEasing = new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);

    @NotNull
    private static final CubicBezierEasing CircularEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(DrawScope drawScope, long j6, float f) {
        G(drawScope, 0.0f, 1.0f, j6, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(DrawScope drawScope, float f, float f6, float f7, long j6, Stroke stroke) {
        D(drawScope, f + (((f6 / Dp.f(CircularIndicatorDiameter / 2)) * 57.29578f) / 2.0f), Math.max(f7, 0.1f), j6, stroke);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0043  */
    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    /* JADX WARN: Code duplicated, block: B:30:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    /* JADX WARN: Code duplicated, block: B:37:0x005e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0063  */
    /* JADX WARN: Code duplicated, block: B:41:0x0067  */
    /* JADX WARN: Code duplicated, block: B:43:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0072  */
    /* JADX WARN: Code duplicated, block: B:48:0x007b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:72:0x010f  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    @ComposableTarget
    @Composable
    public static final void a(float f, @Nullable Modifier modifier, long j6, float f6, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        long j10;
        int i13;
        float f7;
        int i14;
        Modifier modifier3;
        long j11;
        long j12;
        float fA;
        Modifier modifier4;
        float f10;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(-409649739);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.n(f) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i15 = i11 & 2;
        if (i15 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            if ((i10 & 896) == 0) {
                if ((i11 & 4) == 0) {
                    j10 = j6;
                    int i16 = composerS.q(j10) ? 256 : 128;
                    i12 |= i16;
                } else {
                    j10 = j6;
                }
                i12 |= i16;
            } else {
                j10 = j6;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    f7 = f6;
                    if (composerS.n(f7)) {
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
                        if ((i11 & 4) != 0) {
                            j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                        } else {
                            j11 = j10;
                        }
                        if (i13 != 0) {
                            modifier4 = modifier3;
                            j12 = j11;
                            fA = ProgressIndicatorDefaults.INSTANCE.a();
                        } else {
                            j12 = j11;
                            fA = f7;
                            modifier4 = modifier3;
                        }
                    } else {
                        composerS.g();
                        j12 = j10;
                        fA = f7;
                        modifier4 = modifier2;
                    }
                    composerS.A();
                    CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
                    modifier2 = modifier4;
                    j10 = j12;
                    f10 = fA;
                } else {
                    composerS.g();
                    f10 = f7;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ProgressIndicatorKt$CircularProgressIndicator$2(f, modifier2, j10, f10, i10, i11));
            }
            i12 |= 3072;
            f7 = f6;
            if ((i12 & 5851) == 1170) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
                modifier2 = modifier4;
                j10 = j12;
                f10 = fA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
                modifier2 = modifier4;
                j10 = j12;
                f10 = fA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ProgressIndicatorKt$CircularProgressIndicator$2(f, modifier2, j10, f10, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                j10 = j6;
                if (composerS.q(j10)) {
                }
                i12 |= i16;
            } else {
                j10 = j6;
            }
            i12 |= i16;
        } else {
            j10 = j6;
        }
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                f7 = f6;
                if (composerS.n(f7)) {
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
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
                modifier2 = modifier4;
                j10 = j12;
                f10 = fA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i13 != 0) {
                        modifier4 = modifier3;
                        j12 = j11;
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    } else {
                        j12 = j11;
                        fA = f7;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
                modifier2 = modifier4;
                j10 = j12;
                f10 = fA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ProgressIndicatorKt$CircularProgressIndicator$2(f, modifier2, j10, f10, i10, i11));
        }
        i12 |= 3072;
        f7 = f6;
        if ((i12 & 5851) == 1170) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    j12 = j11;
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    j12 = j11;
                    fA = f7;
                    modifier4 = modifier3;
                }
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    j12 = j11;
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    j12 = j11;
                    fA = f7;
                    modifier4 = modifier3;
                }
            }
            composerS.A();
            CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
            modifier2 = modifier4;
            j10 = j12;
            f10 = fA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    j12 = j11;
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    j12 = j11;
                    fA = f7;
                    modifier4 = modifier3;
                }
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i13 != 0) {
                    modifier4 = modifier3;
                    j12 = j11;
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    j12 = j11;
                    fA = f7;
                    modifier4 = modifier3;
                }
            }
            composerS.A();
            CanvasKt.a(SizeKt.y(ProgressSemanticsKt.c(modifier4, f, null, 0, 6, null), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$1(f, j12, new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.a(), 0, null, 26, null)), composerS, 0);
            modifier2 = modifier4;
            j10 = j12;
            f10 = fA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ProgressIndicatorKt$CircularProgressIndicator$2(f, modifier2, j10, f10, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0088 A[PHI: r1 r3
      0x0088: PHI (r1v8 androidx.compose.ui.Modifier) = (r1v3 androidx.compose.ui.Modifier), (r1v9 androidx.compose.ui.Modifier) binds: [B:55:0x00a1, B:46:0x0083] A[DONT_GENERATE, DONT_INLINE]
      0x0088: PHI (r3v12 long) = (r3v6 long), (r3v13 long) binds: [B:55:0x00a1, B:46:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x008a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:61:0x019e  */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    @ComposableTarget
    @Composable
    public static final void b(@Nullable Modifier modifier, long j6, float f, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long j10;
        float f6;
        Modifier modifier3;
        long j11;
        float fA;
        Modifier modifier4;
        long j12;
        float f7;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(-392089979);
        int i13 = i11 & 1;
        if (i13 != 0) {
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
                int i14 = composerS.q(j10) ? 32 : 16;
                i12 |= i14;
            } else {
                j10 = j6;
            }
            i12 |= i14;
        } else {
            j10 = j6;
        }
        int i15 = i11 & 4;
        if (i15 == 0) {
            if ((i10 & 896) == 0) {
                f6 = f;
                i12 |= composerS.n(f6) ? 256 : 128;
            }
            if ((i12 & 731) == 146 || !composerS.b()) {
                composerS.J();
                if ((i10 & 1) != 0 || composerS.h()) {
                    if (i13 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j11 = j10;
                    }
                    if (i15 != 0) {
                        fA = ProgressIndicatorDefaults.INSTANCE.a();
                    }
                    composerS.A();
                    Stroke stroke = new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.c(), 0, null, 26, null);
                    InfiniteTransition infiniteTransitionC = InfiniteTransitionKt.c(composerS, 0);
                    TwoWayConverter<Integer, AnimationVector1D> twoWayConverterJ = VectorConvertersKt.j(s.INSTANCE);
                    InfiniteRepeatableSpec infiniteRepeatableSpecD = AnimationSpecKt.d(AnimationSpecKt.k(6660, 0, EasingKt.b(), 2, null), null, 0L, 6, null);
                    int i16 = InfiniteTransition.$stable;
                    int i17 = InfiniteRepeatableSpec.$stable;
                    CanvasKt.a(SizeKt.y(ProgressSemanticsKt.a(modifier3), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$3(fA, j11, stroke, InfiniteTransitionKt.b(infiniteTransitionC, 0, 5, twoWayConverterJ, infiniteRepeatableSpecD, composerS, i16 | 4528 | (i17 << 12)), InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$endAngle$2.INSTANCE), null, 0L, 6, null), composerS, i16 | 432 | (i17 << 9)), InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$startAngle$2.INSTANCE), null, 0L, 6, null), composerS, i16 | 432 | (i17 << 9)), InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, BaseRotationAngle, AnimationSpecKt.d(AnimationSpecKt.k(RotationDuration, 0, EasingKt.b(), 2, null), null, 0L, 6, null), composerS, i16 | 432 | (i17 << 9))), composerS, 0);
                    modifier4 = modifier3;
                    j12 = j11;
                    f7 = fA;
                } else {
                    composerS.g();
                    modifier3 = modifier2;
                    j11 = j10;
                }
                fA = f6;
                composerS.A();
                Stroke stroke2 = new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.c(), 0, null, 26, null);
                InfiniteTransition infiniteTransitionC2 = InfiniteTransitionKt.c(composerS, 0);
                TwoWayConverter<Integer, AnimationVector1D> twoWayConverterJ2 = VectorConvertersKt.j(s.INSTANCE);
                InfiniteRepeatableSpec infiniteRepeatableSpecD2 = AnimationSpecKt.d(AnimationSpecKt.k(6660, 0, EasingKt.b(), 2, null), null, 0L, 6, null);
                int i18 = InfiniteTransition.$stable;
                int i19 = InfiniteRepeatableSpec.$stable;
                CanvasKt.a(SizeKt.y(ProgressSemanticsKt.a(modifier3), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$3(fA, j11, stroke2, InfiniteTransitionKt.b(infiniteTransitionC2, 0, 5, twoWayConverterJ2, infiniteRepeatableSpecD2, composerS, i18 | 4528 | (i19 << 12)), InfiniteTransitionKt.a(infiniteTransitionC2, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$endAngle$2.INSTANCE), null, 0L, 6, null), composerS, i18 | 432 | (i19 << 9)), InfiniteTransitionKt.a(infiniteTransitionC2, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$startAngle$2.INSTANCE), null, 0L, 6, null), composerS, i18 | 432 | (i19 << 9)), InfiniteTransitionKt.a(infiniteTransitionC2, 0.0f, BaseRotationAngle, AnimationSpecKt.d(AnimationSpecKt.k(RotationDuration, 0, EasingKt.b(), 2, null), null, 0L, 6, null), composerS, i18 | 432 | (i19 << 9))), composerS, 0);
                modifier4 = modifier3;
                j12 = j11;
                f7 = fA;
            } else {
                composerS.g();
                modifier4 = modifier2;
                j12 = j10;
                f7 = f6;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ProgressIndicatorKt$CircularProgressIndicator$4(modifier4, j12, f7, i10, i11));
        }
        i12 |= 384;
        f6 = f;
        if ((i12 & 731) == 146) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i15 != 0) {
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            } else {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i15 != 0) {
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            }
            composerS.A();
            Stroke stroke3 = new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.c(), 0, null, 26, null);
            InfiniteTransition infiniteTransitionC3 = InfiniteTransitionKt.c(composerS, 0);
            TwoWayConverter<Integer, AnimationVector1D> twoWayConverterJ3 = VectorConvertersKt.j(s.INSTANCE);
            InfiniteRepeatableSpec infiniteRepeatableSpecD3 = AnimationSpecKt.d(AnimationSpecKt.k(6660, 0, EasingKt.b(), 2, null), null, 0L, 6, null);
            int i110 = InfiniteTransition.$stable;
            int i111 = InfiniteRepeatableSpec.$stable;
            CanvasKt.a(SizeKt.y(ProgressSemanticsKt.a(modifier3), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$3(fA, j11, stroke3, InfiniteTransitionKt.b(infiniteTransitionC3, 0, 5, twoWayConverterJ3, infiniteRepeatableSpecD3, composerS, i110 | 4528 | (i111 << 12)), InfiniteTransitionKt.a(infiniteTransitionC3, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$endAngle$2.INSTANCE), null, 0L, 6, null), composerS, i110 | 432 | (i111 << 9)), InfiniteTransitionKt.a(infiniteTransitionC3, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$startAngle$2.INSTANCE), null, 0L, 6, null), composerS, i110 | 432 | (i111 << 9)), InfiniteTransitionKt.a(infiniteTransitionC3, 0.0f, BaseRotationAngle, AnimationSpecKt.d(AnimationSpecKt.k(RotationDuration, 0, EasingKt.b(), 2, null), null, 0L, 6, null), composerS, i110 | 432 | (i111 << 9))), composerS, 0);
            modifier4 = modifier3;
            j12 = j11;
            f7 = fA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i15 != 0) {
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            } else {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    j11 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j11 = j10;
                }
                if (i15 != 0) {
                    fA = ProgressIndicatorDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            }
            composerS.A();
            Stroke stroke4 = new Stroke(((Density) composerS.x(CompositionLocalsKt.e())).H0(fA), 0.0f, StrokeCap.Companion.c(), 0, null, 26, null);
            InfiniteTransition infiniteTransitionC4 = InfiniteTransitionKt.c(composerS, 0);
            TwoWayConverter<Integer, AnimationVector1D> twoWayConverterJ4 = VectorConvertersKt.j(s.INSTANCE);
            InfiniteRepeatableSpec infiniteRepeatableSpecD4 = AnimationSpecKt.d(AnimationSpecKt.k(6660, 0, EasingKt.b(), 2, null), null, 0L, 6, null);
            int i112 = InfiniteTransition.$stable;
            int i113 = InfiniteRepeatableSpec.$stable;
            CanvasKt.a(SizeKt.y(ProgressSemanticsKt.a(modifier3), CircularIndicatorDiameter), new ProgressIndicatorKt$CircularProgressIndicator$3(fA, j11, stroke4, InfiniteTransitionKt.b(infiniteTransitionC4, 0, 5, twoWayConverterJ4, infiniteRepeatableSpecD4, composerS, i112 | 4528 | (i113 << 12)), InfiniteTransitionKt.a(infiniteTransitionC4, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$endAngle$2.INSTANCE), null, 0L, 6, null), composerS, i112 | 432 | (i113 << 9)), InfiniteTransitionKt.a(infiniteTransitionC4, 0.0f, JumpRotationAngle, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$CircularProgressIndicator$startAngle$2.INSTANCE), null, 0L, 6, null), composerS, i112 | 432 | (i113 << 9)), InfiniteTransitionKt.a(infiniteTransitionC4, 0.0f, BaseRotationAngle, AnimationSpecKt.d(AnimationSpecKt.k(RotationDuration, 0, EasingKt.b(), 2, null), null, 0L, 6, null), composerS, i112 | 432 | (i113 << 9))), composerS, 0);
            modifier4 = modifier3;
            j12 = j11;
            f7 = fA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ProgressIndicatorKt$CircularProgressIndicator$4(modifier4, j12, f7, i10, i11));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @ComposableTarget
    @Composable
    public static final void g(@Nullable Modifier modifier, long j6, long j10, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long j11;
        long jL;
        Modifier modifier3;
        long j12;
        long j13;
        Composer composerS = composer.s(-819397058);
        int i13 = i11 & 1;
        if (i13 != 0) {
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
                j11 = j6;
                int i14 = composerS.q(j11) ? 32 : 16;
                i12 |= i14;
            } else {
                j11 = j6;
            }
            i12 |= i14;
        } else {
            j11 = j6;
        }
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                jL = j10;
                int i15 = composerS.q(jL) ? 256 : 128;
                i12 |= i15;
            } else {
                jL = j10;
            }
            i12 |= i15;
        } else {
            jL = j10;
        }
        if ((i12 & 731) == 146 && composerS.b()) {
            composerS.g();
            modifier3 = modifier2;
            j13 = j11;
        } else {
            composerS.J();
            if ((i10 & 1) == 0 || composerS.h()) {
                modifier3 = i13 != 0 ? Modifier.Companion : modifier2;
                j12 = (i11 & 2) != 0 ? MaterialTheme.INSTANCE.a(composerS, 6).j() : j11;
                if ((i11 & 4) != 0) {
                    jL = Color.l(j12, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                }
            } else {
                composerS.g();
                modifier3 = modifier2;
                j12 = j11;
            }
            composerS.A();
            InfiniteTransition infiniteTransitionC = InfiniteTransitionKt.c(composerS, 0);
            InfiniteRepeatableSpec infiniteRepeatableSpecD = AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2.INSTANCE), null, 0L, 6, null);
            int i16 = InfiniteTransition.$stable;
            int i17 = InfiniteRepeatableSpec.$stable;
            State<Float> stateA = InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, 1.0f, infiniteRepeatableSpecD, composerS, i16 | 432 | (i17 << 9));
            State<Float> stateA2 = InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, 1.0f, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2.INSTANCE), null, 0L, 6, null), composerS, i16 | 432 | (i17 << 9));
            State<Float> stateA3 = InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, 1.0f, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2.INSTANCE), null, 0L, 6, null), composerS, i16 | 432 | (i17 << 9));
            State<Float> stateA4 = InfiniteTransitionKt.a(infiniteTransitionC, 0.0f, 1.0f, AnimationSpecKt.d(AnimationSpecKt.e(ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2.INSTANCE), null, 0L, 6, null), composerS, i16 | 432 | (i17 << 9));
            Modifier modifierA = SizeKt.A(ProgressSemanticsKt.a(modifier3), LinearIndicatorWidth, LinearIndicatorHeight);
            Object[] objArr = {Color.h(jL), stateA, stateA2, Color.h(j12), stateA3, stateA4};
            composerS.G(-568225417);
            boolean zK = false;
            for (int i18 = 0; i18 < 6; i18++) {
                zK |= composerS.k(objArr[i18]);
            }
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new ProgressIndicatorKt$LinearProgressIndicator$3$1(jL, j12, stateA, stateA2, stateA3, stateA4);
                composerS.z(objH);
            }
            composerS.Q();
            CanvasKt.a(modifierA, (l) objH, composerS, 0);
            j13 = j12;
        }
        long j14 = jL;
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ProgressIndicatorKt$LinearProgressIndicator$4(modifier3, j13, j14, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:34:0x005d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:68:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x0112  */
    /* JADX WARN: Code duplicated, block: B:73:0x011a  */
    /* JADX WARN: Code duplicated, block: B:78:0x013c  */
    /* JADX WARN: Code duplicated, block: B:80:? A[RETURN, SYNTHETIC] */
    @ComposableTarget
    @Composable
    public static final void h(float f, @Nullable Modifier modifier, long j6, long j10, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        long j11;
        long jL;
        Modifier modifier3;
        long j12;
        boolean zK;
        Object objH;
        long j13;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(-850309746);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.n(f) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i13 = i11 & 2;
        if (i13 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            if ((i10 & 896) == 0) {
                if ((i11 & 4) == 0) {
                    j11 = j6;
                    int i14 = composerS.q(j11) ? 256 : 128;
                    i12 |= i14;
                } else {
                    j11 = j6;
                }
                i12 |= i14;
            } else {
                j11 = j6;
            }
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    jL = j10;
                    int i15 = composerS.q(jL) ? 2048 : 1024;
                    i12 |= i15;
                } else {
                    jL = j10;
                }
                i12 |= i15;
            } else {
                jL = j10;
            }
            if ((i12 & 5851) == 1170 || !composerS.b()) {
                composerS.J();
                if ((i10 & 1) != 0 || composerS.h()) {
                    if (i13 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        j12 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                    } else {
                        j12 = j11;
                    }
                    if ((i11 & 8) != 0) {
                        jL = Color.l(j12, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                    }
                } else {
                    composerS.g();
                    modifier3 = modifier2;
                    j12 = j11;
                }
                composerS.A();
                Modifier modifierA = SizeKt.A(ProgressSemanticsKt.c(modifier3, f, null, 0, 6, null), LinearIndicatorWidth, LinearIndicatorHeight);
                Color colorH = Color.h(jL);
                Float fValueOf = Float.valueOf(f);
                Color colorH2 = Color.h(j12);
                composerS.G(1618982084);
                zK = composerS.k(colorH) | composerS.k(fValueOf) | composerS.k(colorH2);
                objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = new ProgressIndicatorKt$LinearProgressIndicator$1$1(jL, f, j12);
                    composerS.z(objH);
                }
                composerS.Q();
                CanvasKt.a(modifierA, (l) objH, composerS, 0);
            } else {
                composerS.g();
                modifier3 = modifier2;
                j12 = j11;
            }
            j13 = jL;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ProgressIndicatorKt$LinearProgressIndicator$2(f, modifier3, j12, j13, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                j11 = j6;
                if (composerS.q(j11)) {
                }
                i12 |= i14;
            } else {
                j11 = j6;
            }
            i12 |= i14;
        } else {
            j11 = j6;
        }
        if ((i10 & 7168) == 0) {
            if ((i11 & 8) == 0) {
                jL = j10;
                if (composerS.q(jL)) {
                }
                i12 |= i15;
            } else {
                jL = j10;
            }
            i12 |= i15;
        } else {
            jL = j10;
        }
        if ((i12 & 5851) == 1170) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j12 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j12 = j11;
                }
                if ((i11 & 8) != 0) {
                    jL = Color.l(j12, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                }
            } else {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j12 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j12 = j11;
                }
                if ((i11 & 8) != 0) {
                    jL = Color.l(j12, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                }
            }
            composerS.A();
            Modifier modifierA2 = SizeKt.A(ProgressSemanticsKt.c(modifier3, f, null, 0, 6, null), LinearIndicatorWidth, LinearIndicatorHeight);
            Color colorH3 = Color.h(jL);
            Float fValueOf2 = Float.valueOf(f);
            Color colorH4 = Color.h(j12);
            composerS.G(1618982084);
            zK = composerS.k(colorH3) | composerS.k(fValueOf2) | composerS.k(colorH4);
            objH = composerS.H();
            if (zK) {
                objH = new ProgressIndicatorKt$LinearProgressIndicator$1$1(jL, f, j12);
                composerS.z(objH);
            } else {
                objH = new ProgressIndicatorKt$LinearProgressIndicator$1$1(jL, f, j12);
                composerS.z(objH);
            }
            composerS.Q();
            CanvasKt.a(modifierA2, (l) objH, composerS, 0);
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j12 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j12 = j11;
                }
                if ((i11 & 8) != 0) {
                    jL = Color.l(j12, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                }
            } else {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    j12 = MaterialTheme.INSTANCE.a(composerS, 6).j();
                } else {
                    j12 = j11;
                }
                if ((i11 & 8) != 0) {
                    jL = Color.l(j12, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
                }
            }
            composerS.A();
            Modifier modifierA3 = SizeKt.A(ProgressSemanticsKt.c(modifier3, f, null, 0, 6, null), LinearIndicatorWidth, LinearIndicatorHeight);
            Color colorH5 = Color.h(jL);
            Float fValueOf3 = Float.valueOf(f);
            Color colorH6 = Color.h(j12);
            composerS.G(1618982084);
            zK = composerS.k(colorH5) | composerS.k(fValueOf3) | composerS.k(colorH6);
            objH = composerS.H();
            if (zK) {
                objH = new ProgressIndicatorKt$LinearProgressIndicator$1$1(jL, f, j12);
                composerS.z(objH);
            } else {
                objH = new ProgressIndicatorKt$LinearProgressIndicator$1$1(jL, f, j12);
                composerS.z(objH);
            }
            composerS.Q();
            CanvasKt.a(modifierA3, (l) objH, composerS, 0);
        }
        j13 = jL;
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ProgressIndicatorKt$LinearProgressIndicator$2(f, modifier3, j12, j13, i10, i11));
    }

    private static final void D(DrawScope drawScope, float f, float f6, long j6, Stroke stroke) {
        float f7 = 2;
        float f10 = stroke.f() / f7;
        float fI = Size.i(drawScope.c()) - (f7 * f10);
        a.d(drawScope, j6, f, f6, false, OffsetKt.a(f10, f10), androidx.compose.ui.geometry.SizeKt.a(fI, fI), 0.0f, stroke, null, 0, 832, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(DrawScope drawScope, float f, float f6, long j6, Stroke stroke) {
        D(drawScope, f, f6, j6, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(DrawScope drawScope, float f, float f6, long j6, float f7) {
        boolean z6;
        float f10;
        float f11;
        float fI = Size.i(drawScope.c());
        float fG = Size.g(drawScope.c()) / 2;
        if (drawScope.getLayoutDirection() == LayoutDirection.Ltr) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            f10 = f;
        } else {
            f10 = 1.0f - f6;
        }
        float f12 = f10 * fI;
        if (z6) {
            f11 = f6;
        } else {
            f11 = 1.0f - f;
        }
        a.i(drawScope, j6, OffsetKt.a(f12, fG), OffsetKt.a(f11 * fI, fG), f7, 0, null, 0.0f, null, 0, 496, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float d(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(State<Integer> state) {
        return state.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float f(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float i(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float j(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float k(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float l(State<Float> state) {
        return state.getValue().floatValue();
    }
}
