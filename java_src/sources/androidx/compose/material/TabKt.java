package androidx.compose.material;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import e8.q;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class TabKt {
    private static final int TabFadeInAnimationDelay = 100;
    private static final int TabFadeInAnimationDuration = 150;
    private static final int TabFadeOutAnimationDuration = 100;
    private static final float SmallTabHeight = Dp.f(48);
    private static final float LargeTabHeight = Dp.f(72);
    private static final float HorizontalTextPadding = Dp.f(16);
    private static final float SingleLineTextBaselineWithIcon = Dp.f(14);
    private static final float DoubleLineTextBaselineWithIcon = Dp.f(6);
    private static final long IconDistanceFromBaseline = TextUnitKt.e(20);
    private static final float TextDistanceFromLeadingIcon = Dp.f(8);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(Placeable.PlacementScope placementScope, Density density, Placeable placeable, Placeable placeable2, int i10, int i11, int i12, int i13) {
        int iJ0 = density.j0(i12 == i13 ? SingleLineTextBaselineWithIcon : DoubleLineTextBaselineWithIcon) + density.j0(TabRowDefaults.INSTANCE.c());
        int iB0 = (placeable2.B0() + density.L0(IconDistanceFromBaseline)) - i12;
        int i14 = (i11 - i13) - iJ0;
        Placeable.PlacementScope.n(placementScope, placeable, (i10 - placeable.Q0()) / 2, i14, 0.0f, 4, null);
        Placeable.PlacementScope.n(placementScope, placeable2, (i10 - placeable2.Q0()) / 2, i14 - iB0, 0.0f, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x012e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0139  */
    /* JADX WARN: Code duplicated, block: B:115:0x015f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0161  */
    /* JADX WARN: Code duplicated, block: B:117:0x0164  */
    /* JADX WARN: Code duplicated, block: B:119:0x0168  */
    /* JADX WARN: Code duplicated, block: B:121:0x016b  */
    /* JADX WARN: Code duplicated, block: B:123:0x017d  */
    /* JADX WARN: Code duplicated, block: B:125:0x018a  */
    /* JADX WARN: Code duplicated, block: B:128:0x0190  */
    /* JADX WARN: Code duplicated, block: B:129:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:134:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:139:0x0241  */
    /* JADX WARN: Code duplicated, block: B:141:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00de  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:91:0x0102  */
    /* JADX WARN: Code duplicated, block: B:94:0x010b  */
    /* JADX WARN: Code duplicated, block: B:96:0x010f  */
    /* JADX WARN: Code duplicated, block: B:99:0x011a  */
    @Composable
    @ComposableInferredTarget
    public static final void a(boolean z6, @NotNull a<l0> onClick, @NotNull p<? super Composer, ? super Integer, l0> text, @NotNull p<? super Composer, ? super Integer, l0> icon, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, long j6, long j10, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        boolean z11;
        int i14;
        int i15;
        int i16;
        long j11;
        Modifier modifier2;
        MutableInteractionSource mutableInteractionSource2;
        long jV;
        int i17;
        long jL;
        long j12;
        MutableInteractionSource mutableInteractionSource3;
        boolean z12;
        Object objH;
        Modifier modifier3;
        boolean z13;
        MutableInteractionSource mutableInteractionSource4;
        long j13;
        long j14;
        ScopeUpdateScope scopeUpdateScopeU;
        int i18;
        t.j(onClick, "onClick");
        t.j(text, "text");
        t.j(icon, "icon");
        Composer composerS = composer.s(-1499861761);
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
            i12 |= composerS.k(text) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(icon) ? 2048 : 1024;
        }
        int i19 = i11 & 16;
        if (i19 == 0) {
            if ((57344 & i10) == 0) {
                i12 |= composerS.k(modifier) ? 16384 : 8192;
            }
            i13 = i11 & 32;
            if (i13 != 0) {
                if ((458752 & i10) == 0) {
                    z11 = z10;
                    if (composerS.m(z11)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 64;
                if (i15 != 0) {
                    if ((3670016 & i10) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i12 |= i16;
                    }
                    if ((29360128 & i10) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        j11 = j10;
                        if ((i11 & 256) == 0 || !composerS.q(j11)) {
                            i18 = 33554432;
                        } else {
                            i18 = 67108864;
                        }
                        i12 |= i18;
                    } else {
                        j11 = j10;
                    }
                    if ((191739611 & i12) == 38347922 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                j12 = jV;
                                i17 = i12 & (-234881025);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i17 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            composerS.g();
                            if ((i11 & 128) != 0) {
                                i12 &= -29360129;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                            }
                            modifier2 = modifier;
                            mutableInteractionSource3 = mutableInteractionSource;
                            j12 = j6;
                            i17 = i12;
                            z12 = z11;
                            jL = j11;
                        }
                        composerS.A();
                        int i20 = i17 >> 21;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i20 & 112) | (i20 & 14) | 3072 | ((i17 << 6) & 896));
                        modifier3 = modifier2;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    } else {
                        composerS.g();
                        modifier3 = modifier;
                        j13 = j6;
                        j14 = j11;
                        mutableInteractionSource4 = mutableInteractionSource;
                        z13 = z11;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
                }
                i12 |= 1572864;
                if ((29360128 & i10) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    j11 = j10;
                    if ((i11 & 256) == 0) {
                        i18 = 33554432;
                    } else {
                        i18 = 33554432;
                    }
                    i12 |= i18;
                } else {
                    j11 = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i21 = i17 >> 21;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i21 & 112) | (i21 & 14) | 3072 | ((i17 << 6) & 896));
                    modifier3 = modifier2;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i22 = i17 >> 21;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i22 & 112) | (i22 & 14) | 3072 | ((i17 << 6) & 896));
                    modifier3 = modifier2;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z11 = z10;
            i15 = i11 & 64;
            if (i15 != 0) {
                if ((3670016 & i10) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i12 |= i16;
                }
                if ((29360128 & i10) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    j11 = j10;
                    if ((i11 & 256) == 0) {
                        i18 = 33554432;
                    } else {
                        i18 = 33554432;
                    }
                    i12 |= i18;
                } else {
                    j11 = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i23 = i17 >> 21;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i23 & 112) | (i23 & 14) | 3072 | ((i17 << 6) & 896));
                    modifier3 = modifier2;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i24 = i17 >> 21;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i24 & 112) | (i24 & 14) | 3072 | ((i17 << 6) & 896));
                    modifier3 = modifier2;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
            }
            i12 |= 1572864;
            if ((29360128 & i10) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                j11 = j10;
                if ((i11 & 256) == 0) {
                    i18 = 33554432;
                } else {
                    i18 = 33554432;
                }
                i12 |= i18;
            } else {
                j11 = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i25 = i17 >> 21;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i25 & 112) | (i25 & 14) | 3072 | ((i17 << 6) & 896));
                modifier3 = modifier2;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i26 = i17 >> 21;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i26 & 112) | (i26 & 14) | 3072 | ((i17 << 6) & 896));
                modifier3 = modifier2;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        i13 = i11 & 32;
        if (i13 != 0) {
            if ((458752 & i10) == 0) {
                z11 = z10;
                if (composerS.m(z11)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i12 |= i14;
            }
            i15 = i11 & 64;
            if (i15 != 0) {
                if ((3670016 & i10) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i12 |= i16;
                }
                if ((29360128 & i10) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    j11 = j10;
                    if ((i11 & 256) == 0) {
                        i18 = 33554432;
                    } else {
                        i18 = 33554432;
                    }
                    i12 |= i18;
                } else {
                    j11 = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i27 = i17 >> 21;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i27 & 112) | (i27 & 14) | 3072 | ((i17 << 6) & 896));
                    modifier3 = modifier2;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            j12 = jV;
                            i17 = i12 & (-234881025);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i17 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i28 = i17 >> 21;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i28 & 112) | (i28 & 14) | 3072 | ((i17 << 6) & 896));
                    modifier3 = modifier2;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
            }
            i12 |= 1572864;
            if ((29360128 & i10) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                j11 = j10;
                if ((i11 & 256) == 0) {
                    i18 = 33554432;
                } else {
                    i18 = 33554432;
                }
                i12 |= i18;
            } else {
                j11 = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i29 = i17 >> 21;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i29 & 112) | (i29 & 14) | 3072 | ((i17 << 6) & 896));
                modifier3 = modifier2;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i210 = i17 >> 21;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i210 & 112) | (i210 & 14) | 3072 | ((i17 << 6) & 896));
                modifier3 = modifier2;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z11 = z10;
        i15 = i11 & 64;
        if (i15 != 0) {
            if ((3670016 & i10) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i12 |= i16;
            }
            if ((29360128 & i10) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                j11 = j10;
                if ((i11 & 256) == 0) {
                    i18 = 33554432;
                } else {
                    i18 = 33554432;
                }
                i12 |= i18;
            } else {
                j11 = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i211 = i17 >> 21;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i211 & 112) | (i211 & 14) | 3072 | ((i17 << 6) & 896));
                modifier3 = modifier2;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        j12 = jV;
                        i17 = i12 & (-234881025);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i17 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i212 = i17 >> 21;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i212 & 112) | (i212 & 14) | 3072 | ((i17 << 6) & 896));
                modifier3 = modifier2;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
        }
        i12 |= 1572864;
        if ((29360128 & i10) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
        }
        if ((i10 & 234881024) == 0) {
            j11 = j10;
            if ((i11 & 256) == 0) {
                i18 = 33554432;
            } else {
                i18 = 33554432;
            }
            i12 |= i18;
        } else {
            j11 = j10;
        }
        if ((191739611 & i12) == 38347922) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    j12 = jV;
                    i17 = i12 & (-234881025);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i17 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    j12 = jV;
                    i17 = i12 & (-234881025);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i17 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            }
            composerS.A();
            int i213 = i17 >> 21;
            e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i213 & 112) | (i213 & 14) | 3072 | ((i17 << 6) & 896));
            modifier3 = modifier2;
            z13 = z12;
            mutableInteractionSource4 = mutableInteractionSource3;
            j13 = j12;
            j14 = jL;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    j12 = jV;
                    i17 = i12 & (-234881025);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i17 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    j12 = jV;
                    i17 = i12 & (-234881025);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i17 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            }
            composerS.A();
            int i214 = i17 >> 21;
            e(j12, jL, z6, ComposableLambdaKt.b(composerS, 866677691, true, new TabKt$LeadingIconTab$2(modifier2, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i17 >> 15) & 896) | 6, 2), z12, onClick, icon, i17, text)), composerS, (i214 & 112) | (i214 & 14) | 3072 | ((i17 << 6) & 896));
            modifier3 = modifier2;
            z13 = z12;
            mutableInteractionSource4 = mutableInteractionSource3;
            j13 = j12;
            j14 = jL;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabKt$LeadingIconTab$3(z6, onClick, text, icon, modifier3, z13, mutableInteractionSource4, j13, j14, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0137  */
    /* JADX WARN: Code duplicated, block: B:106:0x0143  */
    /* JADX WARN: Code duplicated, block: B:116:0x016a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x016c  */
    /* JADX WARN: Code duplicated, block: B:118:0x016f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0173  */
    /* JADX WARN: Code duplicated, block: B:121:0x0175  */
    /* JADX WARN: Code duplicated, block: B:123:0x0179  */
    /* JADX WARN: Code duplicated, block: B:124:0x017c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0180  */
    /* JADX WARN: Code duplicated, block: B:128:0x0184  */
    /* JADX WARN: Code duplicated, block: B:130:0x0196  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:136:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:139:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:143:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:145:0x0205  */
    /* JADX WARN: Code duplicated, block: B:150:0x0265  */
    /* JADX WARN: Code duplicated, block: B:152:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006a  */
    /* JADX WARN: Code duplicated, block: B:40:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:43:0x0079  */
    /* JADX WARN: Code duplicated, block: B:47:0x0083  */
    /* JADX WARN: Code duplicated, block: B:49:0x0088  */
    /* JADX WARN: Code duplicated, block: B:51:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:54:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00df  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ee A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:87:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:92:0x0103  */
    /* JADX WARN: Code duplicated, block: B:95:0x010c  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110  */
    @Composable
    @ComposableInferredTarget
    public static final void b(boolean z6, @NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z10, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable MutableInteractionSource mutableInteractionSource, long j6, long j10, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        p<? super Composer, ? super Integer, l0> pVar3;
        int i18;
        int i19;
        MutableInteractionSource mutableInteractionSource2;
        int i20;
        long jL;
        ComposableLambda composableLambdaB;
        Modifier modifier2;
        boolean z11;
        p<? super Composer, ? super Integer, l0> pVar4;
        MutableInteractionSource mutableInteractionSource3;
        long jV;
        Modifier modifier3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource4;
        long j11;
        long j12;
        p<? super Composer, ? super Integer, l0> pVar5;
        p<? super Composer, ? super Integer, l0> pVar6;
        Object objH;
        boolean z13;
        p<? super Composer, ? super Integer, l0> pVar7;
        Modifier modifier4;
        p<? super Composer, ? super Integer, l0> pVar8;
        boolean z14;
        MutableInteractionSource mutableInteractionSource5;
        long j13;
        long j14;
        ScopeUpdateScope scopeUpdateScopeU;
        int i21;
        t.j(onClick, "onClick");
        Composer composerS = composer.s(-1486097588);
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
        int i22 = i11 & 4;
        if (i22 == 0) {
            if ((i10 & 896) == 0) {
                i12 |= composerS.k(modifier) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    if (composerS.m(z10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        if (composerS.k(pVar)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 32;
                    if (i17 != 0) {
                        if ((i10 & 458752) == 0) {
                            pVar3 = pVar2;
                            if (composerS.k(pVar3)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        i19 = i11 & 64;
                        if (i19 != 0) {
                            i12 |= 1572864;
                            mutableInteractionSource2 = mutableInteractionSource;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                            if ((i10 & 3670016) == 0) {
                                if (composerS.k(mutableInteractionSource2)) {
                                    i20 = 1048576;
                                } else {
                                    i20 = 524288;
                                }
                                i12 |= i20;
                            }
                        }
                        if ((i10 & 29360128) != 0) {
                            i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                        }
                        if ((i10 & 234881024) == 0) {
                            jL = j10;
                            if ((i11 & 256) == 0 || !composerS.q(jL)) {
                                i21 = 33554432;
                            } else {
                                i21 = 67108864;
                            }
                            i12 |= i21;
                        } else {
                            jL = j10;
                        }
                        if ((191739611 & i12) == 38347922 || !composerS.b()) {
                            composerS.J();
                            composableLambdaB = null;
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i22 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i13 != 0) {
                                    z11 = true;
                                } else {
                                    z11 = z10;
                                }
                                if (i15 != 0) {
                                    pVar4 = null;
                                } else {
                                    pVar4 = pVar;
                                }
                                if (i17 != 0) {
                                    pVar3 = null;
                                }
                                if (i19 != 0) {
                                    composerS.G(-492369756);
                                    objH = composerS.H();
                                    if (objH == Composer.Companion.a()) {
                                        objH = InteractionSourceKt.a();
                                        composerS.z(objH);
                                    }
                                    composerS.Q();
                                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource2;
                                }
                                if ((i11 & 128) != 0) {
                                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                    i12 &= -29360129;
                                } else {
                                    jV = j6;
                                }
                                if ((i11 & 256) != 0) {
                                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                    i12 &= -234881025;
                                }
                                modifier3 = modifier2;
                                z12 = z11;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                j11 = jL;
                                j12 = jV;
                                pVar5 = pVar3;
                                pVar6 = pVar4;
                            } else {
                                composerS.g();
                                if ((i11 & 128) != 0) {
                                    i12 &= -29360129;
                                }
                                if ((i11 & 256) != 0) {
                                    i12 &= -234881025;
                                }
                                modifier3 = modifier;
                                z12 = z10;
                                j12 = j6;
                                j11 = jL;
                                mutableInteractionSource4 = mutableInteractionSource2;
                                pVar5 = pVar3;
                                pVar6 = pVar;
                            }
                            composerS.A();
                            if (pVar6 != null) {
                                z13 = true;
                                composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                            } else {
                                z13 = true;
                            }
                            ComposableLambda composableLambdaB2 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                            int i23 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                            int i24 = i12 >> 6;
                            c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB2, composerS, i23 | (57344 & i24) | (458752 & i24) | (i24 & 3670016), 0);
                            pVar7 = pVar6;
                            modifier4 = modifier3;
                            pVar8 = pVar5;
                            z14 = z12;
                            mutableInteractionSource5 = mutableInteractionSource4;
                            j13 = j12;
                            j14 = j11;
                        } else {
                            composerS.g();
                            modifier4 = modifier;
                            z14 = z10;
                            pVar7 = pVar;
                            long j15 = jL;
                            mutableInteractionSource5 = mutableInteractionSource2;
                            j13 = j6;
                            pVar8 = pVar3;
                            j14 = j15;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar3 = pVar2;
                    i19 = i11 & 64;
                    if (i19 != 0) {
                        i12 |= 1572864;
                        mutableInteractionSource2 = mutableInteractionSource;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(mutableInteractionSource2)) {
                                i20 = 1048576;
                            } else {
                                i20 = 524288;
                            }
                            i12 |= i20;
                        }
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jL = j10;
                        if ((i11 & 256) == 0) {
                            i21 = 33554432;
                        } else {
                            i21 = 33554432;
                        }
                        i12 |= i21;
                    } else {
                        jL = j10;
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB3 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i25 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i26 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB3, composerS, i25 | (57344 & i26) | (458752 & i26) | (i26 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    } else {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB4 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i27 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i28 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB4, composerS, i27 | (57344 & i28) | (458752 & i28) | (i28 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        pVar3 = pVar2;
                        if (composerS.k(pVar3)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 64;
                    if (i19 != 0) {
                        i12 |= 1572864;
                        mutableInteractionSource2 = mutableInteractionSource;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(mutableInteractionSource2)) {
                                i20 = 1048576;
                            } else {
                                i20 = 524288;
                            }
                            i12 |= i20;
                        }
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jL = j10;
                        if ((i11 & 256) == 0) {
                            i21 = 33554432;
                        } else {
                            i21 = 33554432;
                        }
                        i12 |= i21;
                    } else {
                        jL = j10;
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB5 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i29 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i210 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB5, composerS, i29 | (57344 & i210) | (458752 & i210) | (i210 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    } else {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB6 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i211 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i212 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB6, composerS, i211 | (57344 & i212) | (458752 & i212) | (i212 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar3 = pVar2;
                i19 = i11 & 64;
                if (i19 != 0) {
                    i12 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(mutableInteractionSource2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jL = j10;
                    if ((i11 & 256) == 0) {
                        i21 = 33554432;
                    } else {
                        i21 = 33554432;
                    }
                    i12 |= i21;
                } else {
                    jL = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB7 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i213 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i214 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB7, composerS, i213 | (57344 & i214) | (458752 & i214) | (i214 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                } else {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB8 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i215 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i216 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB8, composerS, i215 | (57344 & i216) | (458752 & i216) | (i216 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
            }
            i12 |= 3072;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    if (composerS.k(pVar)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        pVar3 = pVar2;
                        if (composerS.k(pVar3)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 64;
                    if (i19 != 0) {
                        i12 |= 1572864;
                        mutableInteractionSource2 = mutableInteractionSource;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(mutableInteractionSource2)) {
                                i20 = 1048576;
                            } else {
                                i20 = 524288;
                            }
                            i12 |= i20;
                        }
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jL = j10;
                        if ((i11 & 256) == 0) {
                            i21 = 33554432;
                        } else {
                            i21 = 33554432;
                        }
                        i12 |= i21;
                    } else {
                        jL = j10;
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB9 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i217 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i218 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB9, composerS, i217 | (57344 & i218) | (458752 & i218) | (i218 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    } else {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB10 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i219 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i2110 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB10, composerS, i219 | (57344 & i2110) | (458752 & i2110) | (i2110 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar3 = pVar2;
                i19 = i11 & 64;
                if (i19 != 0) {
                    i12 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(mutableInteractionSource2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jL = j10;
                    if ((i11 & 256) == 0) {
                        i21 = 33554432;
                    } else {
                        i21 = 33554432;
                    }
                    i12 |= i21;
                } else {
                    jL = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB11 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i2111 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i2112 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB11, composerS, i2111 | (57344 & i2112) | (458752 & i2112) | (i2112 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                } else {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB12 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i2113 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i2114 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB12, composerS, i2113 | (57344 & i2114) | (458752 & i2114) | (i2114 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    pVar3 = pVar2;
                    if (composerS.k(pVar3)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 64;
                if (i19 != 0) {
                    i12 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(mutableInteractionSource2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jL = j10;
                    if ((i11 & 256) == 0) {
                        i21 = 33554432;
                    } else {
                        i21 = 33554432;
                    }
                    i12 |= i21;
                } else {
                    jL = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB13 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i2115 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i2116 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB13, composerS, i2115 | (57344 & i2116) | (458752 & i2116) | (i2116 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                } else {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB14 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i2117 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i2118 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB14, composerS, i2117 | (57344 & i2118) | (458752 & i2118) | (i2118 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar3 = pVar2;
            i19 = i11 & 64;
            if (i19 != 0) {
                i12 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jL = j10;
                if ((i11 & 256) == 0) {
                    i21 = 33554432;
                } else {
                    i21 = 33554432;
                }
                i12 |= i21;
            } else {
                jL = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB15 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i2119 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i21110 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB15, composerS, i2119 | (57344 & i21110) | (458752 & i21110) | (i21110 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            } else {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB16 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i21111 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i21112 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB16, composerS, i21111 | (57344 & i21112) | (458752 & i21112) | (i21112 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
        }
        i12 |= 384;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                if (composerS.m(z10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    if (composerS.k(pVar)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        pVar3 = pVar2;
                        if (composerS.k(pVar3)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 64;
                    if (i19 != 0) {
                        i12 |= 1572864;
                        mutableInteractionSource2 = mutableInteractionSource;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(mutableInteractionSource2)) {
                                i20 = 1048576;
                            } else {
                                i20 = 524288;
                            }
                            i12 |= i20;
                        }
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jL = j10;
                        if ((i11 & 256) == 0) {
                            i21 = 33554432;
                        } else {
                            i21 = 33554432;
                        }
                        i12 |= i21;
                    } else {
                        jL = j10;
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB17 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i21113 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i21114 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB17, composerS, i21113 | (57344 & i21114) | (458752 & i21114) | (i21114 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    } else {
                        composerS.J();
                        composableLambdaB = null;
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i17 != 0) {
                                pVar3 = null;
                            }
                            if (i19 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 128) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -29360129;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i12 &= -234881025;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j11 = jL;
                            j12 = jV;
                            pVar5 = pVar3;
                            pVar6 = pVar4;
                        }
                        composerS.A();
                        if (pVar6 != null) {
                            z13 = true;
                            composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                        } else {
                            z13 = true;
                        }
                        ComposableLambda composableLambdaB18 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                        int i21115 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                        int i21116 = i12 >> 6;
                        c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB18, composerS, i21115 | (57344 & i21116) | (458752 & i21116) | (i21116 & 3670016), 0);
                        pVar7 = pVar6;
                        modifier4 = modifier3;
                        pVar8 = pVar5;
                        z14 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        j13 = j12;
                        j14 = j11;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar3 = pVar2;
                i19 = i11 & 64;
                if (i19 != 0) {
                    i12 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(mutableInteractionSource2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jL = j10;
                    if ((i11 & 256) == 0) {
                        i21 = 33554432;
                    } else {
                        i21 = 33554432;
                    }
                    i12 |= i21;
                } else {
                    jL = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB19 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i21117 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i21118 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB19, composerS, i21117 | (57344 & i21118) | (458752 & i21118) | (i21118 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                } else {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB110 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i21119 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i211110 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB110, composerS, i21119 | (57344 & i211110) | (458752 & i211110) | (i211110 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    pVar3 = pVar2;
                    if (composerS.k(pVar3)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 64;
                if (i19 != 0) {
                    i12 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(mutableInteractionSource2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jL = j10;
                    if ((i11 & 256) == 0) {
                        i21 = 33554432;
                    } else {
                        i21 = 33554432;
                    }
                    i12 |= i21;
                } else {
                    jL = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB111 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i211111 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i211112 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB111, composerS, i211111 | (57344 & i211112) | (458752 & i211112) | (i211112 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                } else {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB112 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i211113 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i211114 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB112, composerS, i211113 | (57344 & i211114) | (458752 & i211114) | (i211114 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar3 = pVar2;
            i19 = i11 & 64;
            if (i19 != 0) {
                i12 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jL = j10;
                if ((i11 & 256) == 0) {
                    i21 = 33554432;
                } else {
                    i21 = 33554432;
                }
                i12 |= i21;
            } else {
                jL = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB113 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i211115 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i211116 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB113, composerS, i211115 | (57344 & i211116) | (458752 & i211116) | (i211116 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            } else {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB114 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i211117 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i211118 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB114, composerS, i211117 | (57344 & i211118) | (458752 & i211118) | (i211118 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
        }
        i12 |= 3072;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                if (composerS.k(pVar)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    pVar3 = pVar2;
                    if (composerS.k(pVar3)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 64;
                if (i19 != 0) {
                    i12 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(mutableInteractionSource2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jL = j10;
                    if ((i11 & 256) == 0) {
                        i21 = 33554432;
                    } else {
                        i21 = 33554432;
                    }
                    i12 |= i21;
                } else {
                    jL = j10;
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB115 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i211119 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i2111110 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB115, composerS, i211119 | (57344 & i2111110) | (458752 & i2111110) | (i2111110 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                } else {
                    composerS.J();
                    composableLambdaB = null;
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i17 != 0) {
                            pVar3 = null;
                        }
                        if (i19 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 128) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -29360129;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -234881025;
                        }
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j11 = jL;
                        j12 = jV;
                        pVar5 = pVar3;
                        pVar6 = pVar4;
                    }
                    composerS.A();
                    if (pVar6 != null) {
                        z13 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                    } else {
                        z13 = true;
                    }
                    ComposableLambda composableLambdaB116 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                    int i2111111 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                    int i2111112 = i12 >> 6;
                    c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB116, composerS, i2111111 | (57344 & i2111112) | (458752 & i2111112) | (i2111112 & 3670016), 0);
                    pVar7 = pVar6;
                    modifier4 = modifier3;
                    pVar8 = pVar5;
                    z14 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    j13 = j12;
                    j14 = j11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar3 = pVar2;
            i19 = i11 & 64;
            if (i19 != 0) {
                i12 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jL = j10;
                if ((i11 & 256) == 0) {
                    i21 = 33554432;
                } else {
                    i21 = 33554432;
                }
                i12 |= i21;
            } else {
                jL = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB117 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i2111113 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i2111114 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB117, composerS, i2111113 | (57344 & i2111114) | (458752 & i2111114) | (i2111114 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            } else {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB118 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i2111115 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i2111116 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB118, composerS, i2111115 | (57344 & i2111116) | (458752 & i2111116) | (i2111116 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        i17 = i11 & 32;
        if (i17 != 0) {
            if ((i10 & 458752) == 0) {
                pVar3 = pVar2;
                if (composerS.k(pVar3)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            i19 = i11 & 64;
            if (i19 != 0) {
                i12 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jL = j10;
                if ((i11 & 256) == 0) {
                    i21 = 33554432;
                } else {
                    i21 = 33554432;
                }
                i12 |= i21;
            } else {
                jL = j10;
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB119 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i2111117 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i2111118 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB119, composerS, i2111117 | (57344 & i2111118) | (458752 & i2111118) | (i2111118 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            } else {
                composerS.J();
                composableLambdaB = null;
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i17 != 0) {
                        pVar3 = null;
                    }
                    if (i19 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 128) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -29360129;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -234881025;
                    }
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j11 = jL;
                    j12 = jV;
                    pVar5 = pVar3;
                    pVar6 = pVar4;
                }
                composerS.A();
                if (pVar6 != null) {
                    z13 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
                } else {
                    z13 = true;
                }
                ComposableLambda composableLambdaB1110 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
                int i2111119 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i21111110 = i12 >> 6;
                c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB1110, composerS, i2111119 | (57344 & i21111110) | (458752 & i21111110) | (i21111110 & 3670016), 0);
                pVar7 = pVar6;
                modifier4 = modifier3;
                pVar8 = pVar5;
                z14 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                j13 = j12;
                j14 = j11;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        pVar3 = pVar2;
        i19 = i11 & 64;
        if (i19 != 0) {
            i12 |= 1572864;
            mutableInteractionSource2 = mutableInteractionSource;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i10 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource2)) {
                    i20 = 1048576;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            }
        }
        if ((i10 & 29360128) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
        }
        if ((i10 & 234881024) == 0) {
            jL = j10;
            if ((i11 & 256) == 0) {
                i21 = 33554432;
            } else {
                i21 = 33554432;
            }
            i12 |= i21;
        } else {
            jL = j10;
        }
        if ((191739611 & i12) == 38347922) {
            composerS.J();
            composableLambdaB = null;
            if ((i10 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i17 != 0) {
                    pVar3 = null;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -234881025;
                }
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
                j11 = jL;
                j12 = jV;
                pVar5 = pVar3;
                pVar6 = pVar4;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i17 != 0) {
                    pVar3 = null;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -234881025;
                }
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
                j11 = jL;
                j12 = jV;
                pVar5 = pVar3;
                pVar6 = pVar4;
            }
            composerS.A();
            if (pVar6 != null) {
                z13 = true;
                composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
            } else {
                z13 = true;
            }
            ComposableLambda composableLambdaB1111 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
            int i21111111 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
            int i21111112 = i12 >> 6;
            c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB1111, composerS, i21111111 | (57344 & i21111112) | (458752 & i21111112) | (i21111112 & 3670016), 0);
            pVar7 = pVar6;
            modifier4 = modifier3;
            pVar8 = pVar5;
            z14 = z12;
            mutableInteractionSource5 = mutableInteractionSource4;
            j13 = j12;
            j14 = j11;
        } else {
            composerS.J();
            composableLambdaB = null;
            if ((i10 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i17 != 0) {
                    pVar3 = null;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -234881025;
                }
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
                j11 = jL;
                j12 = jV;
                pVar5 = pVar3;
                pVar6 = pVar4;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i17 != 0) {
                    pVar3 = null;
                }
                if (i19 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 128) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -29360129;
                } else {
                    jV = j6;
                }
                if ((i11 & 256) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -234881025;
                }
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
                j11 = jL;
                j12 = jV;
                pVar5 = pVar3;
                pVar6 = pVar4;
            }
            composerS.A();
            if (pVar6 != null) {
                z13 = true;
                composableLambdaB = ComposableLambdaKt.b(composerS, -1729014781, true, new TabKt$Tab$styledText$1$1(pVar6, i12));
            } else {
                z13 = true;
            }
            ComposableLambda composableLambdaB1112 = ComposableLambdaKt.b(composerS, -178151495, z13, new TabKt$Tab$2(composableLambdaB, pVar5, i12));
            int i21111113 = 12582912 | (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
            int i21111114 = i12 >> 6;
            c(z6, onClick, modifier3, z12, mutableInteractionSource4, j12, j11, composableLambdaB1112, composerS, i21111113 | (57344 & i21111114) | (458752 & i21111114) | (i21111114 & 3670016), 0);
            pVar7 = pVar6;
            modifier4 = modifier3;
            pVar8 = pVar5;
            z14 = z12;
            mutableInteractionSource5 = mutableInteractionSource4;
            j13 = j12;
            j14 = j11;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabKt$Tab$3(z6, onClick, modifier4, z14, pVar7, pVar8, mutableInteractionSource5, j13, j14, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:105:0x013b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x013d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0140  */
    /* JADX WARN: Code duplicated, block: B:109:0x0143  */
    /* JADX WARN: Code duplicated, block: B:111:0x0146  */
    /* JADX WARN: Code duplicated, block: B:113:0x0158  */
    /* JADX WARN: Code duplicated, block: B:115:0x0165  */
    /* JADX WARN: Code duplicated, block: B:118:0x016b  */
    /* JADX WARN: Code duplicated, block: B:119:0x017c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0182  */
    /* JADX WARN: Code duplicated, block: B:124:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:129:0x0214  */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0071  */
    /* JADX WARN: Code duplicated, block: B:40:0x0075  */
    /* JADX WARN: Code duplicated, block: B:42:0x007d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080  */
    /* JADX WARN: Code duplicated, block: B:47:0x0087  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0092  */
    /* JADX WARN: Code duplicated, block: B:53:0x009a  */
    /* JADX WARN: Code duplicated, block: B:54:0x009d  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:79:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00de  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:93:0x010a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0115  */
    @Composable
    @ComposableInferredTarget
    public static final void c(boolean z6, @NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, long j6, long j10, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z11;
        int i14;
        int i15;
        int i16;
        long j11;
        int i17;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource2;
        long jV;
        int i18;
        long jL;
        long j12;
        MutableInteractionSource mutableInteractionSource3;
        boolean z12;
        Object objH;
        Modifier modifier4;
        MutableInteractionSource mutableInteractionSource4;
        long j13;
        long j14;
        ScopeUpdateScope scopeUpdateScopeU;
        int i19;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(713679175);
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
        int i20 = i11 & 4;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z11 = z10;
                    if (composerS.m(z11)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((57344 & i10) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((458752 & i10) != 0) {
                        i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
                    }
                    if ((3670016 & i10) == 0) {
                        j11 = j10;
                        if ((i11 & 64) == 0 || !composerS.q(j11)) {
                            i19 = 524288;
                        } else {
                            i19 = 1048576;
                        }
                        i12 |= i19;
                    } else {
                        j11 = j10;
                    }
                    if ((i11 & 128) != 0) {
                        if ((29360128 & i10) == 0) {
                            if (composerS.k(content)) {
                                i17 = 8388608;
                            } else {
                                i17 = 4194304;
                            }
                        }
                        if ((23967451 & i12) == 4793490 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    z11 = true;
                                }
                                if (i15 != 0) {
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
                                if ((i11 & 32) != 0) {
                                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                    i12 &= -458753;
                                } else {
                                    jV = j6;
                                }
                                if ((i11 & 64) != 0) {
                                    j12 = jV;
                                    i18 = i12 & (-3670017);
                                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                } else {
                                    i18 = i12;
                                    jL = j11;
                                    j12 = jV;
                                }
                                mutableInteractionSource3 = mutableInteractionSource2;
                                z12 = z11;
                            } else {
                                composerS.g();
                                if ((i11 & 32) != 0) {
                                    i12 &= -458753;
                                }
                                if ((i11 & 64) != 0) {
                                    i12 &= -3670017;
                                }
                                mutableInteractionSource3 = mutableInteractionSource;
                                j12 = j6;
                                i18 = i12;
                                modifier3 = modifier2;
                                z12 = z11;
                                jL = j11;
                            }
                            composerS.A();
                            int i21 = i18 >> 15;
                            e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i21 & 112) | (i21 & 14) | 3072 | ((i18 << 6) & 896));
                            modifier4 = modifier3;
                            z11 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            j13 = j12;
                            j14 = jL;
                        } else {
                            composerS.g();
                            mutableInteractionSource4 = mutableInteractionSource;
                            modifier4 = modifier2;
                            j14 = j11;
                            j13 = j6;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
                    }
                    i17 = 12582912;
                    i12 |= i17;
                    if ((23967451 & i12) == 4793490) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i22 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i22 & 112) | (i22 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i23 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i23 & 112) | (i23 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                if ((458752 & i10) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
                }
                if ((3670016 & i10) == 0) {
                    j11 = j10;
                    if ((i11 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i12 |= i19;
                } else {
                    j11 = j10;
                }
                if ((i11 & 128) != 0) {
                    if ((29360128 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 8388608;
                        } else {
                            i17 = 4194304;
                        }
                    }
                    if ((23967451 & i12) == 4793490) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i24 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i24 & 112) | (i24 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i25 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i25 & 112) | (i25 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
                }
                i17 = 12582912;
                i12 |= i17;
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i26 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i26 & 112) | (i26 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i27 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i27 & 112) | (i27 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
            }
            i12 |= 3072;
            z11 = z10;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
                }
                if ((3670016 & i10) == 0) {
                    j11 = j10;
                    if ((i11 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i12 |= i19;
                } else {
                    j11 = j10;
                }
                if ((i11 & 128) != 0) {
                    if ((29360128 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 8388608;
                        } else {
                            i17 = 4194304;
                        }
                    }
                    if ((23967451 & i12) == 4793490) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i28 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i28 & 112) | (i28 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i29 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i29 & 112) | (i29 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
                }
                i17 = 12582912;
                i12 |= i17;
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i210 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i210 & 112) | (i210 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i211 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i211 & 112) | (i211 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            if ((458752 & i10) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
            }
            if ((3670016 & i10) == 0) {
                j11 = j10;
                if ((i11 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i12 |= i19;
            } else {
                j11 = j10;
            }
            if ((i11 & 128) != 0) {
                if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                }
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i212 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i212 & 112) | (i212 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i213 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i213 & 112) | (i213 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
            }
            i17 = 12582912;
            i12 |= i17;
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i214 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i214 & 112) | (i214 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i215 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i215 & 112) | (i215 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z11 = z10;
                if (composerS.m(z11)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
                }
                if ((3670016 & i10) == 0) {
                    j11 = j10;
                    if ((i11 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i12 |= i19;
                } else {
                    j11 = j10;
                }
                if ((i11 & 128) != 0) {
                    if ((29360128 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 8388608;
                        } else {
                            i17 = 4194304;
                        }
                    }
                    if ((23967451 & i12) == 4793490) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i216 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i216 & 112) | (i216 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            }
                            if (i15 != 0) {
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
                            if ((i11 & 32) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i12 &= -458753;
                            } else {
                                jV = j6;
                            }
                            if ((i11 & 64) != 0) {
                                j12 = jV;
                                i18 = i12 & (-3670017);
                                jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            } else {
                                i18 = i12;
                                jL = j11;
                                j12 = jV;
                            }
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z12 = z11;
                        }
                        composerS.A();
                        int i217 = i18 >> 15;
                        e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i217 & 112) | (i217 & 14) | 3072 | ((i18 << 6) & 896));
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        j13 = j12;
                        j14 = jL;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
                }
                i17 = 12582912;
                i12 |= i17;
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i218 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i218 & 112) | (i218 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i219 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i219 & 112) | (i219 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            if ((458752 & i10) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
            }
            if ((3670016 & i10) == 0) {
                j11 = j10;
                if ((i11 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i12 |= i19;
            } else {
                j11 = j10;
            }
            if ((i11 & 128) != 0) {
                if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                }
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i2110 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2110 & 112) | (i2110 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i2111 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2111 & 112) | (i2111 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
            }
            i17 = 12582912;
            i12 |= i17;
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i2112 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2112 & 112) | (i2112 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i2113 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2113 & 112) | (i2113 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
        }
        i12 |= 3072;
        z11 = z10;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((57344 & i10) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((458752 & i10) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
            }
            if ((3670016 & i10) == 0) {
                j11 = j10;
                if ((i11 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i12 |= i19;
            } else {
                j11 = j10;
            }
            if ((i11 & 128) != 0) {
                if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                }
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i2114 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2114 & 112) | (i2114 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        }
                        if (i15 != 0) {
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
                        if ((i11 & 32) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i12 &= -458753;
                        } else {
                            jV = j6;
                        }
                        if ((i11 & 64) != 0) {
                            j12 = jV;
                            i18 = i12 & (-3670017);
                            jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        } else {
                            i18 = i12;
                            jL = j11;
                            j12 = jV;
                        }
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z12 = z11;
                    }
                    composerS.A();
                    int i2115 = i18 >> 15;
                    e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2115 & 112) | (i2115 & 14) | 3072 | ((i18 << 6) & 896));
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    j13 = j12;
                    j14 = jL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
            }
            i17 = 12582912;
            i12 |= i17;
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i2116 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2116 & 112) | (i2116 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i2117 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2117 & 112) | (i2117 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        if ((458752 & i10) != 0) {
            i12 |= ((i11 & 32) == 0 || !composerS.q(j6)) ? 65536 : 131072;
        }
        if ((3670016 & i10) == 0) {
            j11 = j10;
            if ((i11 & 64) == 0) {
                i19 = 524288;
            } else {
                i19 = 524288;
            }
            i12 |= i19;
        } else {
            j11 = j10;
        }
        if ((i11 & 128) != 0) {
            if ((29360128 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i2118 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2118 & 112) | (i2118 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    }
                    if (i15 != 0) {
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
                    if ((i11 & 32) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i12 &= -458753;
                    } else {
                        jV = j6;
                    }
                    if ((i11 & 64) != 0) {
                        j12 = jV;
                        i18 = i12 & (-3670017);
                        jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    } else {
                        i18 = i12;
                        jL = j11;
                        j12 = jV;
                    }
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z12 = z11;
                }
                composerS.A();
                int i2119 = i18 >> 15;
                e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i2119 & 112) | (i2119 & 14) | 3072 | ((i18 << 6) & 896));
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
                j13 = j12;
                j14 = jL;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
        }
        i17 = 12582912;
        i12 |= i17;
        if ((23967451 & i12) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 32) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -458753;
                } else {
                    jV = j6;
                }
                if ((i11 & 64) != 0) {
                    j12 = jV;
                    i18 = i12 & (-3670017);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i18 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 32) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -458753;
                } else {
                    jV = j6;
                }
                if ((i11 & 64) != 0) {
                    j12 = jV;
                    i18 = i12 & (-3670017);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i18 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            }
            composerS.A();
            int i21110 = i18 >> 15;
            e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i21110 & 112) | (i21110 & 14) | 3072 | ((i18 << 6) & 896));
            modifier4 = modifier3;
            z11 = z12;
            mutableInteractionSource4 = mutableInteractionSource3;
            j13 = j12;
            j14 = jL;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 32) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -458753;
                } else {
                    jV = j6;
                }
                if ((i11 & 64) != 0) {
                    j12 = jV;
                    i18 = i12 & (-3670017);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i18 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                }
                if (i15 != 0) {
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
                if ((i11 & 32) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i12 &= -458753;
                } else {
                    jV = j6;
                }
                if ((i11 & 64) != 0) {
                    j12 = jV;
                    i18 = i12 & (-3670017);
                    jL = Color.l(j12, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                } else {
                    i18 = i12;
                    jL = j11;
                    j12 = jV;
                }
                mutableInteractionSource3 = mutableInteractionSource2;
                z12 = z11;
            }
            composerS.A();
            int i21111 = i18 >> 15;
            e(j12, jL, z6, ComposableLambdaKt.b(composerS, -1237246709, true, new TabKt$Tab$5(modifier3, z6, mutableInteractionSource3, RippleKt.e(true, 0.0f, j12, composerS, ((i18 >> 9) & 896) | 6, 2), z12, onClick, content, i18)), composerS, (i21111 & 112) | (i21111 & 14) | 3072 | ((i18 << 6) & 896));
            modifier4 = modifier3;
            z11 = z12;
            mutableInteractionSource4 = mutableInteractionSource3;
            j13 = j12;
            j14 = jL;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabKt$Tab$6(z6, onClick, modifier4, z11, mutableInteractionSource4, j13, j14, content, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void d(final p<? super Composer, ? super Integer, l0> pVar, final p<? super Composer, ? super Integer, l0> pVar2, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(1249848471);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(pVar) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(pVar2) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.TabKt$TabBaselineLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.c(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.d(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.a(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.b(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    Placeable placeableB0;
                    Placeable placeableB1;
                    Measurable measurable;
                    Measurable measurable2;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    if (pVar != null) {
                        Iterator<T> it = measurables.iterator();
                        do {
                            if (!it.hasNext()) {
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            measurable2 = (Measurable) it.next();
                        } while (!t.e(LayoutIdKt.a(measurable2), "text"));
                        placeableB0 = measurable2.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                    } else {
                        placeableB0 = null;
                    }
                    if (pVar2 != null) {
                        Iterator<T> it2 = measurables.iterator();
                        do {
                            if (!it2.hasNext()) {
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            measurable = (Measurable) it2.next();
                        } while (!t.e(LayoutIdKt.a(measurable), "icon"));
                        placeableB1 = measurable.b0(j6);
                    } else {
                        placeableB1 = null;
                    }
                    int iMax = Math.max(placeableB0 != null ? placeableB0.Q0() : 0, placeableB1 != null ? placeableB1.Q0() : 0);
                    int iJ0 = Layout.j0((placeableB0 == null || placeableB1 == null) ? TabKt.SmallTabHeight : TabKt.LargeTabHeight);
                    return MeasureScope.CC.b(Layout, iMax, iJ0, null, new TabKt$TabBaselineLayout$2$measure$1(placeableB0, placeableB1, Layout, iMax, iJ0, placeableB0 != null ? Integer.valueOf(placeableB0.c0(AlignmentLineKt.a())) : null, placeableB0 != null ? Integer.valueOf(placeableB0.c0(AlignmentLineKt.b())) : null), 4, null);
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
            composerS.G(1142473408);
            composerS.G(-2141028452);
            if (pVar != null) {
                Modifier modifierK = PaddingKt.k(LayoutIdKt.b(companion, "text"), HorizontalTextPadding, 0.0f, 2, null);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA2 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierK);
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
                composerS.G(-459869377);
                pVar.invoke(composerS, Integer.valueOf(i11 & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            if (pVar2 != null) {
                Modifier modifierB = LayoutIdKt.b(companion, "icon");
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA3 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB);
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
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                composerS.G(892169960);
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
        scopeUpdateScopeU.a(new TabKt$TabBaselineLayout$3(pVar, pVar2, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void e(long j6, long j10, boolean z6, p<? super Composer, ? super Integer, l0> pVar, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-405571117);
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
            i11 |= composerS.k(pVar) ? 2048 : 1024;
        }
        if ((i11 & 5851) == 1170 && composerS.b()) {
            composerS.g();
        } else {
            int i12 = i11 >> 6;
            Transition transitionE = TransitionKt.e(Boolean.valueOf(z6), null, composerS, i12 & 14, 2);
            TabKt$TabTransition$color$2 tabKt$TabTransition$color$2 = TabKt$TabTransition$color$2.INSTANCE;
            composerS.G(-1462136984);
            boolean zBooleanValue = ((Boolean) transitionE.m()).booleanValue();
            composerS.G(1445938070);
            long j11 = zBooleanValue ? j6 : j10;
            composerS.Q();
            ColorSpace colorSpaceQ = Color.q(j11);
            composerS.G(-3686930);
            boolean zK = composerS.k(colorSpaceQ);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ);
                composerS.z(objH);
            }
            composerS.Q();
            TwoWayConverter twoWayConverter = (TwoWayConverter) objH;
            composerS.G(1847725064);
            boolean zBooleanValue2 = ((Boolean) transitionE.g()).booleanValue();
            composerS.G(1445938070);
            long j12 = zBooleanValue2 ? j6 : j10;
            composerS.Q();
            Color colorH = Color.h(j12);
            boolean zBooleanValue3 = ((Boolean) transitionE.m()).booleanValue();
            composerS.G(1445938070);
            long j13 = zBooleanValue3 ? j6 : j10;
            composerS.Q();
            State stateC = TransitionKt.c(transitionE, colorH, Color.h(j13), tabKt$TabTransition$color$2.invoke(transitionE.k(), composerS, 0), twoWayConverter, "ColorAnimation", composerS, 32768);
            composerS.Q();
            composerS.Q();
            CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(Color.l(f(stateC), 1.0f, 0.0f, 0.0f, 0.0f, 14, null))), ContentAlphaKt.a().c(Float.valueOf(Color.o(f(stateC))))}, pVar, composerS, (i12 & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TabKt$TabTransition$1(j6, j10, z6, pVar, i10));
    }

    private static final long f(State<Color> state) {
        return state.getValue().v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(Placeable.PlacementScope placementScope, Placeable placeable, int i10) {
        Placeable.PlacementScope.n(placementScope, placeable, 0, (i10 - placeable.B0()) / 2, 0.0f, 4, null);
    }
}
