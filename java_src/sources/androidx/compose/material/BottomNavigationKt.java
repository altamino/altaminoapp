package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.d;
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
import androidx.compose.ui.layout.c;
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
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class BottomNavigationKt {

    @NotNull
    private static final TweenSpec<Float> BottomNavigationAnimationSpec = new TweenSpec<>(300, 0, EasingKt.a(), 2, null);
    private static final float BottomNavigationHeight = Dp.f(56);
    private static final float BottomNavigationItemHorizontalPadding;
    private static final float CombinedItemTextBaseline;

    /* JADX WARN: Code duplicated, block: B:101:0x0127  */
    /* JADX WARN: Code duplicated, block: B:104:0x0130  */
    /* JADX WARN: Code duplicated, block: B:106:0x0134  */
    /* JADX WARN: Code duplicated, block: B:109:0x013a  */
    /* JADX WARN: Code duplicated, block: B:111:0x0140  */
    /* JADX WARN: Code duplicated, block: B:114:0x0148  */
    /* JADX WARN: Code duplicated, block: B:116:0x014c  */
    /* JADX WARN: Code duplicated, block: B:119:0x015a  */
    /* JADX WARN: Code duplicated, block: B:125:0x0177  */
    /* JADX WARN: Code duplicated, block: B:127:0x0182  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:138:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:145:0x01af  */
    /* JADX WARN: Code duplicated, block: B:147:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:154:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:155:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:158:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:159:0x0213  */
    /* JADX WARN: Code duplicated, block: B:162:0x021a  */
    /* JADX WARN: Code duplicated, block: B:163:0x0227  */
    /* JADX WARN: Code duplicated, block: B:166:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:169:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:170:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:175:0x0377  */
    /* JADX WARN: Code duplicated, block: B:177:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0059  */
    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    /* JADX WARN: Code duplicated, block: B:31:0x0066  */
    /* JADX WARN: Code duplicated, block: B:32:0x0069  */
    /* JADX WARN: Code duplicated, block: B:36:0x0070  */
    /* JADX WARN: Code duplicated, block: B:37:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x0077  */
    /* JADX WARN: Code duplicated, block: B:41:0x007d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:46:0x0087  */
    /* JADX WARN: Code duplicated, block: B:48:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0092  */
    /* JADX WARN: Code duplicated, block: B:52:0x009a  */
    /* JADX WARN: Code duplicated, block: B:53:0x009d  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:61:0x00af  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:79:0x00df  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:90:0x0106  */
    /* JADX WARN: Code duplicated, block: B:92:0x010e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0114  */
    /* JADX WARN: Code duplicated, block: B:95:0x0117  */
    /* JADX WARN: Code duplicated, block: B:99:0x0121  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull RowScope BottomNavigationItem, boolean z6, @NotNull a<l0> onClick, @NotNull p<? super Composer, ? super Integer, l0> icon, @Nullable Modifier modifier, boolean z10, @Nullable p<? super Composer, ? super Integer, l0> pVar, boolean z11, @Nullable MutableInteractionSource mutableInteractionSource, long j6, long j10, @Nullable Composer composer, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        Modifier modifier2;
        int i17;
        int i18;
        boolean z12;
        int i19;
        int i20;
        p<? super Composer, ? super Integer, l0> pVar2;
        int i21;
        int i22;
        boolean z13;
        int i23;
        int i24;
        int i25;
        int i26;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource2;
        long jV;
        long jL;
        Object objH;
        ComposableLambda composableLambdaB;
        a<ComposeUiNode> aVarA;
        long j11;
        long j12;
        MutableInteractionSource mutableInteractionSource3;
        boolean z14;
        p<? super Composer, ? super Integer, l0> pVar3;
        boolean z15;
        Modifier modifier4;
        ScopeUpdateScope scopeUpdateScopeU;
        int i27;
        int i28;
        t.j(BottomNavigationItem, "$this$BottomNavigationItem");
        t.j(onClick, "onClick");
        t.j(icon, "icon");
        Composer composerS = composer.s(-1473735525);
        if ((Integer.MIN_VALUE & i12) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (composerS.k(BottomNavigationItem) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 1) == 0) {
            if ((i10 & 112) == 0) {
                i13 |= composerS.m(z6) ? 32 : 16;
            }
            if ((i12 & 2) != 0) {
                i13 |= 384;
            } else if ((i10 & 896) == 0) {
                if (composerS.k(onClick)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i13 |= i14;
            }
            if ((i12 & 4) != 0) {
                i13 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(icon)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i13 |= i15;
            }
            i16 = i12 & 8;
            if (i16 != 0) {
                if ((57344 & i10) == 0) {
                    modifier2 = modifier;
                    if (composerS.k(modifier2)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i13 |= i17;
                }
                i18 = i12 & 16;
                if (i18 != 0) {
                    if ((458752 & i10) == 0) {
                        z12 = z10;
                        if (composerS.m(z12)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                        i13 |= i19;
                    }
                    i20 = i12 & 32;
                    if (i20 != 0) {
                        if ((3670016 & i10) == 0) {
                            pVar2 = pVar;
                            if (composerS.k(pVar2)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i13 |= i21;
                        }
                        i22 = i12 & 64;
                        if (i22 != 0) {
                            i13 |= 12582912;
                            z13 = z11;
                        } else {
                            z13 = z11;
                            if ((i10 & 29360128) == 0) {
                                if (composerS.m(z13)) {
                                    i23 = 8388608;
                                } else {
                                    i23 = 4194304;
                                }
                                i13 |= i23;
                            }
                        }
                        i24 = i12 & 128;
                        if (i24 != 0) {
                            i13 |= 100663296;
                        } else if ((i10 & 234881024) == 0) {
                            if (composerS.k(mutableInteractionSource)) {
                                i25 = 67108864;
                            } else {
                                i25 = 33554432;
                            }
                            i13 |= i25;
                        }
                        if ((i10 & 1879048192) != 0) {
                            if ((i12 & 512) == 0 || !composerS.q(j6)) {
                                i28 = 268435456;
                            } else {
                                i28 = 536870912;
                            }
                            i13 |= i28;
                        }
                        if ((i11 & 14) == 0) {
                            if ((i12 & 1024) == 0 || !composerS.q(j10)) {
                                i27 = 2;
                            } else {
                                i27 = 4;
                            }
                            i26 = i11 | i27;
                        } else {
                            i26 = i11;
                        }
                        if ((i13 & 1533916891) != 306783378 && (i26 & 11) == 2 && composerS.b()) {
                            composerS.g();
                            z15 = z13;
                            modifier4 = modifier2;
                            z14 = z12;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource;
                            j11 = j6;
                            j12 = j10;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i16 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i18 != 0) {
                                    z12 = true;
                                }
                                if (i20 != 0) {
                                    pVar2 = null;
                                }
                                if (i22 != 0) {
                                    z13 = true;
                                }
                                if (i24 != 0) {
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
                                if ((i12 & 256) != 0) {
                                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                    i13 &= -1879048193;
                                } else {
                                    jV = j6;
                                }
                                if ((i12 & 512) != 0) {
                                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                    i26 &= -15;
                                } else {
                                    jL = j10;
                                }
                            } else {
                                composerS.g();
                                if ((i12 & 256) != 0) {
                                    i13 &= -1879048193;
                                }
                                if ((i12 & 512) != 0) {
                                    i26 &= -15;
                                }
                                mutableInteractionSource2 = mutableInteractionSource;
                                jL = j10;
                                modifier3 = modifier2;
                                jV = j6;
                            }
                            composerS.A();
                            if (pVar2 != null) {
                                composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                            } else {
                                composableLambdaB = null;
                            }
                            Modifier modifierA = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                            Alignment alignmentE = Alignment.Companion.e();
                            Modifier modifier5 = modifier3;
                            composerS.G(733328855);
                            MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource2;
                            MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composerS, 6);
                            composerS.G(-1323940314);
                            Density density = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            boolean z16 = z12;
                            aVarA = companion.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
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
                            composerS.G(-1538530399);
                            d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            j11 = jV;
                            j12 = jL;
                            mutableInteractionSource3 = mutableInteractionSource4;
                            z14 = z16;
                            pVar3 = pVar4;
                            z15 = z13;
                            modifier4 = modifier5;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
                    }
                    i13 |= 1572864;
                    pVar2 = pVar;
                    i22 = i12 & 64;
                    if (i22 != 0) {
                        i13 |= 12582912;
                        z13 = z11;
                    } else {
                        z13 = z11;
                        if ((i10 & 29360128) == 0) {
                            if (composerS.m(z13)) {
                                i23 = 8388608;
                            } else {
                                i23 = 4194304;
                            }
                            i13 |= i23;
                        }
                    }
                    i24 = i12 & 128;
                    if (i24 != 0) {
                        i13 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i25 = 67108864;
                        } else {
                            i25 = 33554432;
                        }
                        i13 |= i25;
                    }
                    if ((i10 & 1879048192) != 0) {
                        if ((i12 & 512) == 0) {
                            i28 = 268435456;
                        } else {
                            i28 = 268435456;
                        }
                        i13 |= i28;
                    }
                    if ((i11 & 14) == 0) {
                        if ((i12 & 1024) == 0) {
                            i27 = 2;
                        } else {
                            i27 = 2;
                        }
                        i26 = i11 | i27;
                    } else {
                        i26 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA2 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE2 = Alignment.Companion.e();
                        Modifier modifier6 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentE2, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        boolean z17 = z12;
                        aVarA = companion2.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierA2);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource5;
                        z14 = z17;
                        pVar3 = pVar5;
                        z15 = z13;
                        modifier4 = modifier6;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA3 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE3 = Alignment.Companion.e();
                        Modifier modifier7 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource6 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentE3, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        boolean z18 = z12;
                        aVarA = companion3.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierA3);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource6;
                        z14 = z18;
                        pVar3 = pVar6;
                        z15 = z13;
                        modifier4 = modifier7;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
                }
                i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z12 = z10;
                i20 = i12 & 32;
                if (i20 != 0) {
                    if ((3670016 & i10) == 0) {
                        pVar2 = pVar;
                        if (composerS.k(pVar2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                    i22 = i12 & 64;
                    if (i22 != 0) {
                        i13 |= 12582912;
                        z13 = z11;
                    } else {
                        z13 = z11;
                        if ((i10 & 29360128) == 0) {
                            if (composerS.m(z13)) {
                                i23 = 8388608;
                            } else {
                                i23 = 4194304;
                            }
                            i13 |= i23;
                        }
                    }
                    i24 = i12 & 128;
                    if (i24 != 0) {
                        i13 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i25 = 67108864;
                        } else {
                            i25 = 33554432;
                        }
                        i13 |= i25;
                    }
                    if ((i10 & 1879048192) != 0) {
                        if ((i12 & 512) == 0) {
                            i28 = 268435456;
                        } else {
                            i28 = 268435456;
                        }
                        i13 |= i28;
                    }
                    if ((i11 & 14) == 0) {
                        if ((i12 & 1024) == 0) {
                            i27 = 2;
                        } else {
                            i27 = 2;
                        }
                        i26 = i11 | i27;
                    } else {
                        i26 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA4 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE4 = Alignment.Companion.e();
                        Modifier modifier8 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource7 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH4 = BoxKt.h(alignmentE4, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                        boolean z19 = z12;
                        aVarA = companion4.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierA4);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource7;
                        z14 = z19;
                        pVar3 = pVar7;
                        z15 = z13;
                        modifier4 = modifier8;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA5 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE5 = Alignment.Companion.e();
                        Modifier modifier9 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH5 = BoxKt.h(alignmentE5, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        boolean z110 = z12;
                        aVarA = companion5.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierA5);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource8;
                        z14 = z110;
                        pVar3 = pVar8;
                        z15 = z13;
                        modifier4 = modifier9;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
                }
                i13 |= 1572864;
                pVar2 = pVar;
                i22 = i12 & 64;
                if (i22 != 0) {
                    i13 |= 12582912;
                    z13 = z11;
                } else {
                    z13 = z11;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z13)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i13 |= i23;
                    }
                }
                i24 = i12 & 128;
                if (i24 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i13 |= i25;
                }
                if ((i10 & 1879048192) != 0) {
                    if ((i12 & 512) == 0) {
                        i28 = 268435456;
                    } else {
                        i28 = 268435456;
                    }
                    i13 |= i28;
                }
                if ((i11 & 14) == 0) {
                    if ((i12 & 1024) == 0) {
                        i27 = 2;
                    } else {
                        i27 = 2;
                    }
                    i26 = i11 | i27;
                } else {
                    i26 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA6 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE6 = Alignment.Companion.e();
                    Modifier modifier10 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource9 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH6 = BoxKt.h(alignmentE6, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    boolean z111 = z12;
                    aVarA = companion6.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierA6);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource9;
                    z14 = z111;
                    pVar3 = pVar9;
                    z15 = z13;
                    modifier4 = modifier10;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA7 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE7 = Alignment.Companion.e();
                    Modifier modifier11 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource10 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH7 = BoxKt.h(alignmentE7, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    boolean z112 = z12;
                    aVarA = companion7.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierA7);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource10;
                    z14 = z112;
                    pVar3 = pVar10;
                    z15 = z13;
                    modifier4 = modifier11;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
            }
            i13 |= CpioConstants.C_ISBLK;
            modifier2 = modifier;
            i18 = i12 & 16;
            if (i18 != 0) {
                if ((458752 & i10) == 0) {
                    z12 = z10;
                    if (composerS.m(z12)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                    i13 |= i19;
                }
                i20 = i12 & 32;
                if (i20 != 0) {
                    if ((3670016 & i10) == 0) {
                        pVar2 = pVar;
                        if (composerS.k(pVar2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                    i22 = i12 & 64;
                    if (i22 != 0) {
                        i13 |= 12582912;
                        z13 = z11;
                    } else {
                        z13 = z11;
                        if ((i10 & 29360128) == 0) {
                            if (composerS.m(z13)) {
                                i23 = 8388608;
                            } else {
                                i23 = 4194304;
                            }
                            i13 |= i23;
                        }
                    }
                    i24 = i12 & 128;
                    if (i24 != 0) {
                        i13 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i25 = 67108864;
                        } else {
                            i25 = 33554432;
                        }
                        i13 |= i25;
                    }
                    if ((i10 & 1879048192) != 0) {
                        if ((i12 & 512) == 0) {
                            i28 = 268435456;
                        } else {
                            i28 = 268435456;
                        }
                        i13 |= i28;
                    }
                    if ((i11 & 14) == 0) {
                        if ((i12 & 1024) == 0) {
                            i27 = 2;
                        } else {
                            i27 = 2;
                        }
                        i26 = i11 | i27;
                    } else {
                        i26 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA8 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE8 = Alignment.Companion.e();
                        Modifier modifier12 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource11 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH8 = BoxKt.h(alignmentE8, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                        boolean z113 = z12;
                        aVarA = companion8.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierA8);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource11;
                        z14 = z113;
                        pVar3 = pVar11;
                        z15 = z13;
                        modifier4 = modifier12;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA9 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE9 = Alignment.Companion.e();
                        Modifier modifier13 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource12 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH9 = BoxKt.h(alignmentE9, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        boolean z114 = z12;
                        aVarA = companion9.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierA9);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource12;
                        z14 = z114;
                        pVar3 = pVar12;
                        z15 = z13;
                        modifier4 = modifier13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
                }
                i13 |= 1572864;
                pVar2 = pVar;
                i22 = i12 & 64;
                if (i22 != 0) {
                    i13 |= 12582912;
                    z13 = z11;
                } else {
                    z13 = z11;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z13)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i13 |= i23;
                    }
                }
                i24 = i12 & 128;
                if (i24 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i13 |= i25;
                }
                if ((i10 & 1879048192) != 0) {
                    if ((i12 & 512) == 0) {
                        i28 = 268435456;
                    } else {
                        i28 = 268435456;
                    }
                    i13 |= i28;
                }
                if ((i11 & 14) == 0) {
                    if ((i12 & 1024) == 0) {
                        i27 = 2;
                    } else {
                        i27 = 2;
                    }
                    i26 = i11 | i27;
                } else {
                    i26 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA10 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE10 = Alignment.Companion.e();
                    Modifier modifier14 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource13 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH10 = BoxKt.h(alignmentE10, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    boolean z115 = z12;
                    aVarA = companion10.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierA10);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource13;
                    z14 = z115;
                    pVar3 = pVar13;
                    z15 = z13;
                    modifier4 = modifier14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA11 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE11 = Alignment.Companion.e();
                    Modifier modifier15 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource14 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH11 = BoxKt.h(alignmentE11, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    boolean z116 = z12;
                    aVarA = companion11.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierA11);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource14;
                    z14 = z116;
                    pVar3 = pVar14;
                    z15 = z13;
                    modifier4 = modifier15;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z12 = z10;
            i20 = i12 & 32;
            if (i20 != 0) {
                if ((3670016 & i10) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
                i22 = i12 & 64;
                if (i22 != 0) {
                    i13 |= 12582912;
                    z13 = z11;
                } else {
                    z13 = z11;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z13)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i13 |= i23;
                    }
                }
                i24 = i12 & 128;
                if (i24 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i13 |= i25;
                }
                if ((i10 & 1879048192) != 0) {
                    if ((i12 & 512) == 0) {
                        i28 = 268435456;
                    } else {
                        i28 = 268435456;
                    }
                    i13 |= i28;
                }
                if ((i11 & 14) == 0) {
                    if ((i12 & 1024) == 0) {
                        i27 = 2;
                    } else {
                        i27 = 2;
                    }
                    i26 = i11 | i27;
                } else {
                    i26 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA12 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE12 = Alignment.Companion.e();
                    Modifier modifier16 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource15 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH12 = BoxKt.h(alignmentE12, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                    boolean z117 = z12;
                    aVarA = companion12.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierA12);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource15;
                    z14 = z117;
                    pVar3 = pVar15;
                    z15 = z13;
                    modifier4 = modifier16;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA13 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE13 = Alignment.Companion.e();
                    Modifier modifier17 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource16 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH13 = BoxKt.h(alignmentE13, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    boolean z118 = z12;
                    aVarA = companion13.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierA13);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource16;
                    z14 = z118;
                    pVar3 = pVar16;
                    z15 = z13;
                    modifier4 = modifier17;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
            }
            i13 |= 1572864;
            pVar2 = pVar;
            i22 = i12 & 64;
            if (i22 != 0) {
                i13 |= 12582912;
                z13 = z11;
            } else {
                z13 = z11;
                if ((i10 & 29360128) == 0) {
                    if (composerS.m(z13)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i13 |= i23;
                }
            }
            i24 = i12 & 128;
            if (i24 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i13 |= i25;
            }
            if ((i10 & 1879048192) != 0) {
                if ((i12 & 512) == 0) {
                    i28 = 268435456;
                } else {
                    i28 = 268435456;
                }
                i13 |= i28;
            }
            if ((i11 & 14) == 0) {
                if ((i12 & 1024) == 0) {
                    i27 = 2;
                } else {
                    i27 = 2;
                }
                i26 = i11 | i27;
            } else {
                i26 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA14 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE14 = Alignment.Companion.e();
                Modifier modifier18 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource17 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH14 = BoxKt.h(alignmentE14, false, composerS, 6);
                composerS.G(-1323940314);
                Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                boolean z119 = z12;
                aVarA = companion14.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierA14);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource17;
                z14 = z119;
                pVar3 = pVar17;
                z15 = z13;
                modifier4 = modifier18;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA15 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE15 = Alignment.Companion.e();
                Modifier modifier19 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource18 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH15 = BoxKt.h(alignmentE15, false, composerS, 6);
                composerS.G(-1323940314);
                Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                boolean z1110 = z12;
                aVarA = companion15.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierA15);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource18;
                z14 = z1110;
                pVar3 = pVar18;
                z15 = z13;
                modifier4 = modifier19;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
        }
        i13 |= 48;
        if ((i12 & 2) != 0) {
            i13 |= 384;
        } else if ((i10 & 896) == 0) {
            if (composerS.k(onClick)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i13 |= i14;
        }
        if ((i12 & 4) != 0) {
            i13 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(icon)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i13 |= i15;
        }
        i16 = i12 & 8;
        if (i16 != 0) {
            if ((57344 & i10) == 0) {
                modifier2 = modifier;
                if (composerS.k(modifier2)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i13 |= i17;
            }
            i18 = i12 & 16;
            if (i18 != 0) {
                if ((458752 & i10) == 0) {
                    z12 = z10;
                    if (composerS.m(z12)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                    i13 |= i19;
                }
                i20 = i12 & 32;
                if (i20 != 0) {
                    if ((3670016 & i10) == 0) {
                        pVar2 = pVar;
                        if (composerS.k(pVar2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                    i22 = i12 & 64;
                    if (i22 != 0) {
                        i13 |= 12582912;
                        z13 = z11;
                    } else {
                        z13 = z11;
                        if ((i10 & 29360128) == 0) {
                            if (composerS.m(z13)) {
                                i23 = 8388608;
                            } else {
                                i23 = 4194304;
                            }
                            i13 |= i23;
                        }
                    }
                    i24 = i12 & 128;
                    if (i24 != 0) {
                        i13 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i25 = 67108864;
                        } else {
                            i25 = 33554432;
                        }
                        i13 |= i25;
                    }
                    if ((i10 & 1879048192) != 0) {
                        if ((i12 & 512) == 0) {
                            i28 = 268435456;
                        } else {
                            i28 = 268435456;
                        }
                        i13 |= i28;
                    }
                    if ((i11 & 14) == 0) {
                        if ((i12 & 1024) == 0) {
                            i27 = 2;
                        } else {
                            i27 = 2;
                        }
                        i26 = i11 | i27;
                    } else {
                        i26 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA16 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE16 = Alignment.Companion.e();
                        Modifier modifier110 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource19 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH16 = BoxKt.h(alignmentE16, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                        boolean z1111 = z12;
                        aVarA = companion16.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierA16);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource19;
                        z14 = z1111;
                        pVar3 = pVar19;
                        z15 = z13;
                        modifier4 = modifier110;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        } else {
                            if (i16 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i18 != 0) {
                                z12 = true;
                            }
                            if (i20 != 0) {
                                pVar2 = null;
                            }
                            if (i22 != 0) {
                                z13 = true;
                            }
                            if (i24 != 0) {
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
                            if ((i12 & 256) != 0) {
                                jV = ((Color) composerS.x(ContentColorKt.a())).v();
                                i13 &= -1879048193;
                            } else {
                                jV = j6;
                            }
                            if ((i12 & 512) != 0) {
                                jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                                i26 &= -15;
                            } else {
                                jL = j10;
                            }
                        }
                        composerS.A();
                        if (pVar2 != null) {
                            composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                        } else {
                            composableLambdaB = null;
                        }
                        Modifier modifierA17 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                        Alignment alignmentE17 = Alignment.Companion.e();
                        Modifier modifier111 = modifier3;
                        composerS.G(733328855);
                        MutableInteractionSource mutableInteractionSource110 = mutableInteractionSource2;
                        MeasurePolicy measurePolicyH17 = BoxKt.h(alignmentE17, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection17 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration17 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                        boolean z1112 = z12;
                        aVarA = companion17.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC17 = LayoutKt.c(modifierA17);
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
                        composerS.G(-1538530399);
                        d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        j11 = jV;
                        j12 = jL;
                        mutableInteractionSource3 = mutableInteractionSource110;
                        z14 = z1112;
                        pVar3 = pVar110;
                        z15 = z13;
                        modifier4 = modifier111;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
                }
                i13 |= 1572864;
                pVar2 = pVar;
                i22 = i12 & 64;
                if (i22 != 0) {
                    i13 |= 12582912;
                    z13 = z11;
                } else {
                    z13 = z11;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z13)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i13 |= i23;
                    }
                }
                i24 = i12 & 128;
                if (i24 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i13 |= i25;
                }
                if ((i10 & 1879048192) != 0) {
                    if ((i12 & 512) == 0) {
                        i28 = 268435456;
                    } else {
                        i28 = 268435456;
                    }
                    i13 |= i28;
                }
                if ((i11 & 14) == 0) {
                    if ((i12 & 1024) == 0) {
                        i27 = 2;
                    } else {
                        i27 = 2;
                    }
                    i26 = i11 | i27;
                } else {
                    i26 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA18 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE18 = Alignment.Companion.e();
                    Modifier modifier112 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource111 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH18 = BoxKt.h(alignmentE18, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection18 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration18 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                    boolean z1113 = z12;
                    aVarA = companion18.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC18 = LayoutKt.c(modifierA18);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource111;
                    z14 = z1113;
                    pVar3 = pVar111;
                    z15 = z13;
                    modifier4 = modifier112;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA19 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE19 = Alignment.Companion.e();
                    Modifier modifier113 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource112 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH19 = BoxKt.h(alignmentE19, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection19 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration19 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                    boolean z1114 = z12;
                    aVarA = companion19.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC19 = LayoutKt.c(modifierA19);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource112;
                    z14 = z1114;
                    pVar3 = pVar112;
                    z15 = z13;
                    modifier4 = modifier113;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z12 = z10;
            i20 = i12 & 32;
            if (i20 != 0) {
                if ((3670016 & i10) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
                i22 = i12 & 64;
                if (i22 != 0) {
                    i13 |= 12582912;
                    z13 = z11;
                } else {
                    z13 = z11;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z13)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i13 |= i23;
                    }
                }
                i24 = i12 & 128;
                if (i24 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i13 |= i25;
                }
                if ((i10 & 1879048192) != 0) {
                    if ((i12 & 512) == 0) {
                        i28 = 268435456;
                    } else {
                        i28 = 268435456;
                    }
                    i13 |= i28;
                }
                if ((i11 & 14) == 0) {
                    if ((i12 & 1024) == 0) {
                        i27 = 2;
                    } else {
                        i27 = 2;
                    }
                    i26 = i11 | i27;
                } else {
                    i26 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA110 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE110 = Alignment.Companion.e();
                    Modifier modifier114 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource113 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH110 = BoxKt.h(alignmentE110, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                    boolean z1115 = z12;
                    aVarA = companion110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC110 = LayoutKt.c(modifierA110);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource113;
                    z14 = z1115;
                    pVar3 = pVar113;
                    z15 = z13;
                    modifier4 = modifier114;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA111 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE111 = Alignment.Companion.e();
                    Modifier modifier115 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource114 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH111 = BoxKt.h(alignmentE111, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                    boolean z1116 = z12;
                    aVarA = companion111.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111 = LayoutKt.c(modifierA111);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource114;
                    z14 = z1116;
                    pVar3 = pVar114;
                    z15 = z13;
                    modifier4 = modifier115;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
            }
            i13 |= 1572864;
            pVar2 = pVar;
            i22 = i12 & 64;
            if (i22 != 0) {
                i13 |= 12582912;
                z13 = z11;
            } else {
                z13 = z11;
                if ((i10 & 29360128) == 0) {
                    if (composerS.m(z13)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i13 |= i23;
                }
            }
            i24 = i12 & 128;
            if (i24 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i13 |= i25;
            }
            if ((i10 & 1879048192) != 0) {
                if ((i12 & 512) == 0) {
                    i28 = 268435456;
                } else {
                    i28 = 268435456;
                }
                i13 |= i28;
            }
            if ((i11 & 14) == 0) {
                if ((i12 & 1024) == 0) {
                    i27 = 2;
                } else {
                    i27 = 2;
                }
                i26 = i11 | i27;
            } else {
                i26 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA112 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE112 = Alignment.Companion.e();
                Modifier modifier116 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource115 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH112 = BoxKt.h(alignmentE112, false, composerS, 6);
                composerS.G(-1323940314);
                Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                boolean z1117 = z12;
                aVarA = companion112.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC112 = LayoutKt.c(modifierA112);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource115;
                z14 = z1117;
                pVar3 = pVar115;
                z15 = z13;
                modifier4 = modifier116;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA113 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE113 = Alignment.Companion.e();
                Modifier modifier117 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource116 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH113 = BoxKt.h(alignmentE113, false, composerS, 6);
                composerS.G(-1323940314);
                Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                boolean z1118 = z12;
                aVarA = companion113.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC113 = LayoutKt.c(modifierA113);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource116;
                z14 = z1118;
                pVar3 = pVar116;
                z15 = z13;
                modifier4 = modifier117;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
        }
        i13 |= CpioConstants.C_ISBLK;
        modifier2 = modifier;
        i18 = i12 & 16;
        if (i18 != 0) {
            if ((458752 & i10) == 0) {
                z12 = z10;
                if (composerS.m(z12)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
                i13 |= i19;
            }
            i20 = i12 & 32;
            if (i20 != 0) {
                if ((3670016 & i10) == 0) {
                    pVar2 = pVar;
                    if (composerS.k(pVar2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
                i22 = i12 & 64;
                if (i22 != 0) {
                    i13 |= 12582912;
                    z13 = z11;
                } else {
                    z13 = z11;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z13)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i13 |= i23;
                    }
                }
                i24 = i12 & 128;
                if (i24 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i13 |= i25;
                }
                if ((i10 & 1879048192) != 0) {
                    if ((i12 & 512) == 0) {
                        i28 = 268435456;
                    } else {
                        i28 = 268435456;
                    }
                    i13 |= i28;
                }
                if ((i11 & 14) == 0) {
                    if ((i12 & 1024) == 0) {
                        i27 = 2;
                    } else {
                        i27 = 2;
                    }
                    i26 = i11 | i27;
                } else {
                    i26 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA114 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE114 = Alignment.Companion.e();
                    Modifier modifier118 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource117 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH114 = BoxKt.h(alignmentE114, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                    boolean z1119 = z12;
                    aVarA = companion114.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC114 = LayoutKt.c(modifierA114);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource117;
                    z14 = z1119;
                    pVar3 = pVar117;
                    z15 = z13;
                    modifier4 = modifier118;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i18 != 0) {
                            z12 = true;
                        }
                        if (i20 != 0) {
                            pVar2 = null;
                        }
                        if (i22 != 0) {
                            z13 = true;
                        }
                        if (i24 != 0) {
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
                        if ((i12 & 256) != 0) {
                            jV = ((Color) composerS.x(ContentColorKt.a())).v();
                            i13 &= -1879048193;
                        } else {
                            jV = j6;
                        }
                        if ((i12 & 512) != 0) {
                            jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                            i26 &= -15;
                        } else {
                            jL = j10;
                        }
                    }
                    composerS.A();
                    if (pVar2 != null) {
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                    } else {
                        composableLambdaB = null;
                    }
                    Modifier modifierA115 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                    Alignment alignmentE115 = Alignment.Companion.e();
                    Modifier modifier119 = modifier3;
                    composerS.G(733328855);
                    MutableInteractionSource mutableInteractionSource118 = mutableInteractionSource2;
                    MeasurePolicy measurePolicyH115 = BoxKt.h(alignmentE115, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                    boolean z11110 = z12;
                    aVarA = companion115.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC115 = LayoutKt.c(modifierA115);
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
                    composerS.G(-1538530399);
                    d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    j11 = jV;
                    j12 = jL;
                    mutableInteractionSource3 = mutableInteractionSource118;
                    z14 = z11110;
                    pVar3 = pVar118;
                    z15 = z13;
                    modifier4 = modifier119;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
            }
            i13 |= 1572864;
            pVar2 = pVar;
            i22 = i12 & 64;
            if (i22 != 0) {
                i13 |= 12582912;
                z13 = z11;
            } else {
                z13 = z11;
                if ((i10 & 29360128) == 0) {
                    if (composerS.m(z13)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i13 |= i23;
                }
            }
            i24 = i12 & 128;
            if (i24 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i13 |= i25;
            }
            if ((i10 & 1879048192) != 0) {
                if ((i12 & 512) == 0) {
                    i28 = 268435456;
                } else {
                    i28 = 268435456;
                }
                i13 |= i28;
            }
            if ((i11 & 14) == 0) {
                if ((i12 & 1024) == 0) {
                    i27 = 2;
                } else {
                    i27 = 2;
                }
                i26 = i11 | i27;
            } else {
                i26 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA116 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE116 = Alignment.Companion.e();
                Modifier modifier1110 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource119 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH116 = BoxKt.h(alignmentE116, false, composerS, 6);
                composerS.G(-1323940314);
                Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                boolean z11111 = z12;
                aVarA = companion116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC116 = LayoutKt.c(modifierA116);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource119;
                z14 = z11111;
                pVar3 = pVar119;
                z15 = z13;
                modifier4 = modifier1110;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA117 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE117 = Alignment.Companion.e();
                Modifier modifier1111 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource1110 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH117 = BoxKt.h(alignmentE117, false, composerS, 6);
                composerS.G(-1323940314);
                Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                boolean z11112 = z12;
                aVarA = companion117.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC117 = LayoutKt.c(modifierA117);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource1110;
                z14 = z11112;
                pVar3 = pVar1110;
                z15 = z13;
                modifier4 = modifier1111;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
        }
        i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z12 = z10;
        i20 = i12 & 32;
        if (i20 != 0) {
            if ((3670016 & i10) == 0) {
                pVar2 = pVar;
                if (composerS.k(pVar2)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i13 |= i21;
            }
            i22 = i12 & 64;
            if (i22 != 0) {
                i13 |= 12582912;
                z13 = z11;
            } else {
                z13 = z11;
                if ((i10 & 29360128) == 0) {
                    if (composerS.m(z13)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i13 |= i23;
                }
            }
            i24 = i12 & 128;
            if (i24 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i13 |= i25;
            }
            if ((i10 & 1879048192) != 0) {
                if ((i12 & 512) == 0) {
                    i28 = 268435456;
                } else {
                    i28 = 268435456;
                }
                i13 |= i28;
            }
            if ((i11 & 14) == 0) {
                if ((i12 & 1024) == 0) {
                    i27 = 2;
                } else {
                    i27 = 2;
                }
                i26 = i11 | i27;
            } else {
                i26 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA118 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE118 = Alignment.Companion.e();
                Modifier modifier1112 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource1111 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH118 = BoxKt.h(alignmentE118, false, composerS, 6);
                composerS.G(-1323940314);
                Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                boolean z11113 = z12;
                aVarA = companion118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC118 = LayoutKt.c(modifierA118);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource1111;
                z14 = z11113;
                pVar3 = pVar1111;
                z15 = z13;
                modifier4 = modifier1112;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                } else {
                    if (i16 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i18 != 0) {
                        z12 = true;
                    }
                    if (i20 != 0) {
                        pVar2 = null;
                    }
                    if (i22 != 0) {
                        z13 = true;
                    }
                    if (i24 != 0) {
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
                    if ((i12 & 256) != 0) {
                        jV = ((Color) composerS.x(ContentColorKt.a())).v();
                        i13 &= -1879048193;
                    } else {
                        jV = j6;
                    }
                    if ((i12 & 512) != 0) {
                        jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                        i26 &= -15;
                    } else {
                        jL = j10;
                    }
                }
                composerS.A();
                if (pVar2 != null) {
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
                } else {
                    composableLambdaB = null;
                }
                Modifier modifierA119 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
                Alignment alignmentE119 = Alignment.Companion.e();
                Modifier modifier1113 = modifier3;
                composerS.G(733328855);
                MutableInteractionSource mutableInteractionSource1112 = mutableInteractionSource2;
                MeasurePolicy measurePolicyH119 = BoxKt.h(alignmentE119, false, composerS, 6);
                composerS.G(-1323940314);
                Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                boolean z11114 = z12;
                aVarA = companion119.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC119 = LayoutKt.c(modifierA119);
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
                composerS.G(-1538530399);
                d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                j11 = jV;
                j12 = jL;
                mutableInteractionSource3 = mutableInteractionSource1112;
                z14 = z11114;
                pVar3 = pVar1112;
                z15 = z13;
                modifier4 = modifier1113;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
        }
        i13 |= 1572864;
        pVar2 = pVar;
        i22 = i12 & 64;
        if (i22 != 0) {
            i13 |= 12582912;
            z13 = z11;
        } else {
            z13 = z11;
            if ((i10 & 29360128) == 0) {
                if (composerS.m(z13)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i13 |= i23;
            }
        }
        i24 = i12 & 128;
        if (i24 != 0) {
            i13 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i25 = 67108864;
            } else {
                i25 = 33554432;
            }
            i13 |= i25;
        }
        if ((i10 & 1879048192) != 0) {
            if ((i12 & 512) == 0) {
                i28 = 268435456;
            } else {
                i28 = 268435456;
            }
            i13 |= i28;
        }
        if ((i11 & 14) == 0) {
            if ((i12 & 1024) == 0) {
                i27 = 2;
            } else {
                i27 = 2;
            }
            i26 = i11 | i27;
        } else {
            i26 = i11;
        }
        if ((i13 & 1533916891) != 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i18 != 0) {
                    z12 = true;
                }
                if (i20 != 0) {
                    pVar2 = null;
                }
                if (i22 != 0) {
                    z13 = true;
                }
                if (i24 != 0) {
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
                if ((i12 & 256) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i13 &= -1879048193;
                } else {
                    jV = j6;
                }
                if ((i12 & 512) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i26 &= -15;
                } else {
                    jL = j10;
                }
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i18 != 0) {
                    z12 = true;
                }
                if (i20 != 0) {
                    pVar2 = null;
                }
                if (i22 != 0) {
                    z13 = true;
                }
                if (i24 != 0) {
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
                if ((i12 & 256) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i13 &= -1879048193;
                } else {
                    jV = j6;
                }
                if ((i12 & 512) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i26 &= -15;
                } else {
                    jL = j10;
                }
            }
            composerS.A();
            if (pVar2 != null) {
                composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
            } else {
                composableLambdaB = null;
            }
            Modifier modifierA1110 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
            Alignment alignmentE1110 = Alignment.Companion.e();
            Modifier modifier1114 = modifier3;
            composerS.G(733328855);
            MutableInteractionSource mutableInteractionSource1113 = mutableInteractionSource2;
            MeasurePolicy measurePolicyH1110 = BoxKt.h(alignmentE1110, false, composerS, 6);
            composerS.G(-1323940314);
            Density density1110 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
            boolean z11115 = z12;
            aVarA = companion1110.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1110 = LayoutKt.c(modifierA1110);
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
            composerS.G(-1538530399);
            d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            j11 = jV;
            j12 = jL;
            mutableInteractionSource3 = mutableInteractionSource1113;
            z14 = z11115;
            pVar3 = pVar1113;
            z15 = z13;
            modifier4 = modifier1114;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i18 != 0) {
                    z12 = true;
                }
                if (i20 != 0) {
                    pVar2 = null;
                }
                if (i22 != 0) {
                    z13 = true;
                }
                if (i24 != 0) {
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
                if ((i12 & 256) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i13 &= -1879048193;
                } else {
                    jV = j6;
                }
                if ((i12 & 512) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i26 &= -15;
                } else {
                    jL = j10;
                }
            } else {
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i18 != 0) {
                    z12 = true;
                }
                if (i20 != 0) {
                    pVar2 = null;
                }
                if (i22 != 0) {
                    z13 = true;
                }
                if (i24 != 0) {
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
                if ((i12 & 256) != 0) {
                    jV = ((Color) composerS.x(ContentColorKt.a())).v();
                    i13 &= -1879048193;
                } else {
                    jV = j6;
                }
                if ((i12 & 512) != 0) {
                    jL = Color.l(jV, ContentAlpha.INSTANCE.d(composerS, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i26 &= -15;
                } else {
                    jL = j10;
                }
            }
            composerS.A();
            if (pVar2 != null) {
                composableLambdaB = ComposableLambdaKt.b(composerS, 1343298261, true, new BottomNavigationKt$BottomNavigationItem$styledLabel$1$1(pVar2, i13));
            } else {
                composableLambdaB = null;
            }
            Modifier modifierA1111 = d.a(BottomNavigationItem, SelectableKt.a(modifier3, z6, mutableInteractionSource2, RippleKt.e(false, 0.0f, jV, composerS, ((i13 >> 21) & 896) | 6, 2), z12, Role.g(Role.Companion.f()), onClick), 1.0f, false, 2, null);
            Alignment alignmentE1111 = Alignment.Companion.e();
            Modifier modifier1115 = modifier3;
            composerS.G(733328855);
            MutableInteractionSource mutableInteractionSource1114 = mutableInteractionSource2;
            MeasurePolicy measurePolicyH1111 = BoxKt.h(alignmentE1111, false, composerS, 6);
            composerS.G(-1323940314);
            Density density1111 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
            boolean z11116 = z12;
            aVarA = companion1111.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111 = LayoutKt.c(modifierA1111);
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
            composerS.G(-1538530399);
            d(jV, jL, z6, ComposableLambdaKt.b(composerS, -1411872801, true, new BottomNavigationKt$BottomNavigationItem$2$1(z13, icon, composableLambdaB, i13)), composerS, ((i26 << 3) & 112) | ((i13 >> 27) & 14) | 3072 | ((i13 << 3) & 896));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            j11 = jV;
            j12 = jL;
            mutableInteractionSource3 = mutableInteractionSource1114;
            z14 = z11116;
            pVar3 = pVar1114;
            z15 = z13;
            modifier4 = modifier1115;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItem$3(BottomNavigationItem, z6, onClick, icon, modifier4, z14, pVar3, z15, mutableInteractionSource3, j11, j12, i10, i11, i12));
    }

    static {
        float f = 12;
        BottomNavigationItemHorizontalPadding = Dp.f(f);
        CombinedItemTextBaseline = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0083  */
    /* JADX WARN: Code duplicated, block: B:48:0x0086  */
    /* JADX WARN: Code duplicated, block: B:50:0x008c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0092  */
    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cf A[PHI: r1 r3 r4 r9
      0x00cf: PHI (r1v6 androidx.compose.ui.Modifier) = (r1v3 androidx.compose.ui.Modifier), (r1v9 androidx.compose.ui.Modifier) binds: [B:84:0x00fb, B:72:0x00ce] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r3v18 int) = (r3v14 int), (r3v20 int) binds: [B:84:0x00fb, B:72:0x00ce] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r4v7 long) = (r4v3 long), (r4v2 long) binds: [B:84:0x00fb, B:72:0x00ce] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r9v9 long) = (r9v2 long), (r9v1 long) binds: [B:84:0x00fb, B:72:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:77:0x00db  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:90:0x0142  */
    /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Modifier modifier, long j6, long j10, float f, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long jF;
        long jB;
        float f6;
        int i13;
        Modifier modifier3;
        float fA;
        long j11;
        long j12;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(456489494);
        int i14 = i11 & 1;
        if (i14 != 0) {
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
                int i15 = composerS.q(jF) ? 32 : 16;
                i12 |= i15;
            } else {
                jF = j6;
            }
            i12 |= i15;
        } else {
            jF = j6;
        }
        if ((i10 & 896) == 0) {
            jB = j10;
            i12 |= ((i11 & 4) == 0 && composerS.q(jB)) ? 256 : 128;
        } else {
            jB = j10;
        }
        int i16 = i11 & 8;
        if (i16 == 0) {
            if ((i10 & 7168) == 0) {
                f6 = f;
                i12 |= composerS.n(f6) ? 2048 : 1024;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i13 = 16384;
                } else {
                    i13 = 8192;
                }
                i12 |= i13;
            }
            if ((46811 & i12) == 9362 || !composerS.b()) {
                composerS.J();
                if ((i10 & 1) != 0 || composerS.h()) {
                    if (i14 != 0) {
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
                    if (i16 != 0) {
                        fA = BottomNavigationDefaults.INSTANCE.a();
                    }
                    long j13 = jB;
                    int i17 = i12;
                    composerS.A();
                    int i18 = i17 << 3;
                    SurfaceKt.b(modifier3, null, jF, j13, null, fA, ComposableLambdaKt.b(composerS, 678339930, true, new BottomNavigationKt$BottomNavigation$1(content, i17)), composerS, (i17 & 14) | 1572864 | (i18 & 896) | (i18 & 7168) | ((i17 << 6) & 458752), 18);
                    j11 = jF;
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
                fA = f6;
                long j14 = jB;
                int i19 = i12;
                composerS.A();
                int i110 = i19 << 3;
                SurfaceKt.b(modifier3, null, jF, j14, null, fA, ComposableLambdaKt.b(composerS, 678339930, true, new BottomNavigationKt$BottomNavigation$1(content, i19)), composerS, (i19 & 14) | 1572864 | (i110 & 896) | (i110 & 7168) | ((i19 << 6) & 458752), 18);
                j11 = jF;
                j12 = j14;
            } else {
                composerS.g();
                modifier3 = modifier2;
                j11 = jF;
                j12 = jB;
                fA = f6;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigation$2(modifier3, j11, j12, fA, content, i10, i11));
        }
        i12 |= 3072;
        f6 = f;
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.k(content)) {
                i13 = 16384;
            } else {
                i13 = 8192;
            }
            i12 |= i13;
        }
        if ((46811 & i12) == 9362) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i14 != 0) {
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
                if (i16 != 0) {
                    fA = BottomNavigationDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            } else {
                if (i14 != 0) {
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
                if (i16 != 0) {
                    fA = BottomNavigationDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            }
            long j15 = jB;
            int i111 = i12;
            composerS.A();
            int i112 = i111 << 3;
            SurfaceKt.b(modifier3, null, jF, j15, null, fA, ComposableLambdaKt.b(composerS, 678339930, true, new BottomNavigationKt$BottomNavigation$1(content, i111)), composerS, (i111 & 14) | 1572864 | (i112 & 896) | (i112 & 7168) | ((i111 << 6) & 458752), 18);
            j11 = jF;
            j12 = j15;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i14 != 0) {
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
                if (i16 != 0) {
                    fA = BottomNavigationDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            } else {
                if (i14 != 0) {
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
                if (i16 != 0) {
                    fA = BottomNavigationDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
            }
            long j16 = jB;
            int i113 = i12;
            composerS.A();
            int i114 = i113 << 3;
            SurfaceKt.b(modifier3, null, jF, j16, null, fA, ComposableLambdaKt.b(composerS, 678339930, true, new BottomNavigationKt$BottomNavigation$1(content, i113)), composerS, (i113 & 14) | 1572864 | (i114 & 896) | (i114 & 7168) | ((i113 << 6) & 458752), 18);
            j11 = jF;
            j12 = j16;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigation$2(modifier3, j11, j12, fA, content, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void c(p<? super Composer, ? super Integer, l0> pVar, final p<? super Composer, ? super Integer, l0> pVar2, final float f, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-1162995092);
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
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationItemBaselineLayout$2
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
                                return BottomNavigationKt.l(Layout, placeableB1, j6);
                            }
                            t.g(placeableB0);
                            return BottomNavigationKt.m(Layout, placeableB0, placeableB1, j6, f);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }

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
            composerS.G(395677717);
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
            composerS.G(-1943403697);
            pVar.invoke(composerS, Integer.valueOf(i11 & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            if (pVar2 != null) {
                Modifier modifierK = PaddingKt.k(AlphaKt.a(LayoutIdKt.b(companion, "label"), f), BottomNavigationItemHorizontalPadding, 0.0f, 2, null);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(companion3.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA3 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierK);
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
                composerS.G(150842644);
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
        scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationItemBaselineLayout$3(pVar, pVar2, f, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void d(long j6, long j10, boolean z6, q<? super Float, ? super Composer, ? super Integer, l0> qVar, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-985175058);
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
            State<Float> stateD = AnimateAsStateKt.d(z6 ? 1.0f : 0.0f, BottomNavigationAnimationSpec, 0.0f, null, composerS, 48, 12);
            long jI = ColorKt.i(j10, j6, e(stateD));
            CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(Color.l(jI, 1.0f, 0.0f, 0.0f, 0.0f, 14, null))), ContentAlphaKt.a().c(Float.valueOf(Color.o(jI)))}, ComposableLambdaKt.b(composerS, -138092754, true, new BottomNavigationKt$BottomNavigationTransition$1(qVar, i12, stateD)), composerS, 56);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BottomNavigationKt$BottomNavigationTransition$2(j6, j10, z6, qVar, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult l(MeasureScope measureScope, Placeable placeable, long j6) {
        int iM = Constraints.m(j6);
        return MeasureScope.CC.b(measureScope, placeable.Q0(), iM, null, new BottomNavigationKt$placeIcon$1(placeable, (iM - placeable.B0()) / 2), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult m(MeasureScope measureScope, Placeable placeable, Placeable placeable2, long j6, float f) {
        int iM = Constraints.m(j6);
        int iC0 = placeable.c0(AlignmentLineKt.b());
        int iJ0 = measureScope.j0(CombinedItemTextBaseline);
        int i10 = (iM - iC0) - iJ0;
        int iB0 = (iM - placeable2.B0()) / 2;
        int iB1 = (iM - (iJ0 * 2)) - placeable2.B0();
        int iMax = Math.max(placeable.Q0(), placeable2.Q0());
        return MeasureScope.CC.b(measureScope, iMax, iM, null, new BottomNavigationKt$placeLabelAndIcon$1(f, placeable, (iMax - placeable.Q0()) / 2, i10, g8.c.c((iB0 - iB1) * (1 - f)), placeable2, (iMax - placeable2.Q0()) / 2, iB1), 4, null);
    }
}
