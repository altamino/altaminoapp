package androidx.compose.animation;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class AnimatedVisibilityKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:102:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final <T> void a(Transition<T> transition, l<? super T, Boolean> lVar, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> qVar, Composer composer, int i10) {
        int i11;
        Composer composer2;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(808253933);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(transition) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(lVar) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(modifier) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.k(enterTransition) ? 2048 : 1024;
        }
        if ((i10 & 57344) == 0) {
            i11 |= composerS.k(exitTransition) ? 16384 : 8192;
        }
        if ((458752 & i10) == 0) {
            i11 |= composerS.k(qVar) ? 131072 : 65536;
        }
        int i12 = i11;
        if ((374491 & i12) != 74898 || !composerS.b()) {
            int i13 = i12 & 14;
            composerS.G(1157296644);
            boolean zK = composerS.k(transition);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(lVar.invoke(transition.g()), null, 2, null);
                composerS.z(objH);
            }
            composerS.Q();
            MutableState mutableState = (MutableState) objH;
            if (lVar.invoke(transition.m()).booleanValue() || ((Boolean) mutableState.getValue()).booleanValue() || transition.q()) {
                int i14 = i13 | 48;
                composerS.G(1215497572);
                int i15 = i14 & 14;
                composerS.G(1157296644);
                boolean zK2 = composerS.k(transition);
                Object objH2 = composerS.H();
                if (zK2 || objH2 == Composer.Companion.a()) {
                    objH2 = transition.g();
                    composerS.z(objH2);
                }
                composerS.Q();
                if (transition.q()) {
                    objH2 = transition.g();
                }
                composerS.G(-1220581778);
                int i16 = i13 | (i12 & 112) | ((((i14 >> 3) & 112) << 6) & 896);
                EnterExitState enterExitStateK = k(transition, lVar, objH2, composerS, i16);
                composerS.Q();
                T tM = transition.m();
                composerS.G(-1220581778);
                EnterExitState enterExitStateK2 = k(transition, lVar, tM, composerS, i16);
                composerS.Q();
                Transition transitionA = androidx.compose.animation.core.TransitionKt.a(transition, enterExitStateK, enterExitStateK2, "EnterExitTransition", composerS, i15 | ((i14 << 6) & 7168));
                composerS.Q();
                composerS.G(511388516);
                boolean zK3 = composerS.k(transitionA) | composerS.k(mutableState);
                Object objH3 = composerS.H();
                if (zK3 || objH3 == Composer.Companion.a()) {
                    objH3 = new AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1(transitionA, mutableState, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                EffectsKt.d(transitionA, (p) objH3, composerS, 0);
                int i17 = i12 >> 3;
                int i18 = (i17 & 57344) | (i17 & 112) | (i17 & 896) | (i17 & 7168);
                composerS.G(-1967270694);
                Object objG = transitionA.g();
                EnterExitState enterExitState = EnterExitState.Visible;
                if (objG == enterExitState || transitionA.m() == enterExitState) {
                    int i19 = i18 & 14;
                    composerS.G(1157296644);
                    boolean zK4 = composerS.k(transitionA);
                    Object objH4 = composerS.H();
                    if (zK4 || objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedVisibilityScopeImpl(transitionA);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl = (AnimatedVisibilityScopeImpl) objH4;
                    int i20 = i18 >> 3;
                    int i21 = i19 | 3072 | (i20 & 112) | (i20 & 896);
                    composer2 = composerS;
                    Modifier modifierB = modifier.B(EnterExitTransitionKt.g(transitionA, enterTransition, exitTransition, "Built-in", composerS, i21));
                    composer2.G(-492369756);
                    Object objH5 = composer2.H();
                    if (objH5 == Composer.Companion.a()) {
                        objH5 = new AnimatedEnterExitMeasurePolicy(animatedVisibilityScopeImpl);
                        composer2.z(objH5);
                    }
                    composer2.Q();
                    MeasurePolicy measurePolicy = (MeasurePolicy) objH5;
                    composer2.G(-1323940314);
                    Density density = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    a<ComposeUiNode> aVarA = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
                    if (!(composer2.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composer2.e();
                    if (composer2.r()) {
                        composer2.w(aVarA);
                    } else {
                        composer2.c();
                    }
                    composer2.L();
                    Composer composerA = Updater.a(composer2);
                    Updater.e(composerA, measurePolicy, companion.d());
                    Updater.e(composerA, density, companion.b());
                    Updater.e(composerA, layoutDirection, companion.c());
                    Updater.e(composerA, viewConfiguration, companion.f());
                    composer2.o();
                    qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(1797450476);
                    qVar.invoke(animatedVisibilityScopeImpl, composer2, Integer.valueOf(((i18 >> 9) & 112) | 8));
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                } else {
                    composer2 = composerS;
                }
                composer2.Q();
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedEnterExitImpl$2(transition, lVar, modifier, enterTransition, exitTransition, qVar, i10));
        }
        composerS.g();
        composer2 = composerS;
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedEnterExitImpl$2(transition, lVar, modifier, enterTransition, exitTransition, qVar, i10));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0054  */
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x006f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0088  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:55:0x009c  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:78:0x00de  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:82:0x0117  */
    /* JADX WARN: Code duplicated, block: B:84:0x011a  */
    /* JADX WARN: Code duplicated, block: B:89:0x0156  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull MutableTransitionState<Boolean> visibleState, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @Nullable String str, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        String str3;
        Modifier modifier4;
        ExitTransition exitTransition3;
        EnterTransition enterTransition3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(visibleState, "visibleState");
        t.j(content, "content");
        Composer composerS = composer.s(-222898426);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(visibleState) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((i10 & 57344) == 0) {
                            str2 = str;
                            if (composerS.k(str2)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 458752) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 131072;
                                } else {
                                    i19 = 65536;
                                }
                            }
                            if ((374491 & i12) == 74898 || !composerS.b()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                                } else {
                                    enterTransitionB = enterTransition2;
                                }
                                if (i15 != 0) {
                                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                                } else {
                                    exitTransitionB = exitTransition2;
                                }
                                if (i17 != 0) {
                                    str2 = "AnimatedVisibility";
                                }
                                int i21 = i12 << 3;
                                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21 & 57344) | (i21 & 896) | 48 | (i21 & 7168) | (i12 & 458752));
                                str3 = str2;
                                modifier4 = modifier3;
                                exitTransition3 = exitTransitionB;
                                enterTransition3 = enterTransitionB;
                            } else {
                                composerS.g();
                                modifier4 = modifier2;
                                enterTransition3 = enterTransition2;
                                exitTransition3 = exitTransition2;
                                str3 = str2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                        }
                        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i12 |= i19;
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i22 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i22 & 57344) | (i22 & 896) | 48 | (i22 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i23 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i23 & 57344) | (i23 & 896) | 48 | (i23 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    str2 = str;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i24 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i24 & 57344) | (i24 & 896) | 48 | (i24 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i25 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i25 & 57344) | (i25 & 896) | 48 | (i25 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i26 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i26 & 57344) | (i26 & 896) | 48 | (i26 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i27 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i27 & 57344) | (i27 & 896) | 48 | (i27 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= 3072;
                exitTransition2 = exitTransition;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i28 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i28 & 57344) | (i28 & 896) | 48 | (i28 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i29 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i29 & 57344) | (i29 & 896) | 48 | (i29 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i210 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i210 & 57344) | (i210 & 896) | 48 | (i210 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211 & 57344) | (i211 & 896) | 48 | (i211 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i212 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i212 & 57344) | (i212 & 896) | 48 | (i212 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i213 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i213 & 57344) | (i213 & 896) | 48 | (i213 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i214 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i214 & 57344) | (i214 & 896) | 48 | (i214 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i215 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i215 & 57344) | (i215 & 896) | 48 | (i215 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 384;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i216 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i216 & 57344) | (i216 & 896) | 48 | (i216 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i217 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i217 & 57344) | (i217 & 896) | 48 | (i217 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i218 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i218 & 57344) | (i218 & 896) | 48 | (i218 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i219 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i219 & 57344) | (i219 & 896) | 48 | (i219 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2110 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2110 & 57344) | (i2110 & 896) | 48 | (i2110 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111 & 57344) | (i2111 & 896) | 48 | (i2111 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2112 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2112 & 57344) | (i2112 & 896) | 48 | (i2112 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2113 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2113 & 57344) | (i2113 & 896) | 48 | (i2113 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2114 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2114 & 57344) | (i2114 & 896) | 48 | (i2114 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2115 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2115 & 57344) | (i2115 & 896) | 48 | (i2115 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2116 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2116 & 57344) | (i2116 & 896) | 48 | (i2116 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2117 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2117 & 57344) | (i2117 & 896) | 48 | (i2117 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2118 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2118 & 57344) | (i2118 & 896) | 48 | (i2118 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2119 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2119 & 57344) | (i2119 & 896) | 48 | (i2119 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21110 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21110 & 57344) | (i21110 & 896) | 48 | (i21110 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21111 & 57344) | (i21111 & 896) | 48 | (i21111 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21112 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21112 & 57344) | (i21112 & 896) | 48 | (i21112 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21113 = i12 << 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21113 & 57344) | (i21113 & 896) | 48 | (i21113 & 7168) | (i12 & 458752));
                            str3 = str2;
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition3 = enterTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21114 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21114 & 57344) | (i21114 & 896) | 48 | (i21114 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21115 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21115 & 57344) | (i21115 & 896) | 48 | (i21115 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21116 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21116 & 57344) | (i21116 & 896) | 48 | (i21116 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21117 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21117 & 57344) | (i21117 & 896) | 48 | (i21117 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21118 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21118 & 57344) | (i21118 & 896) | 48 | (i21118 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21119 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21119 & 57344) | (i21119 & 896) | 48 | (i21119 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211110 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211110 & 57344) | (i211110 & 896) | 48 | (i211110 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211111 & 57344) | (i211111 & 896) | 48 | (i211111 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211112 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211112 & 57344) | (i211112 & 896) | 48 | (i211112 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211113 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211113 & 57344) | (i211113 & 896) | 48 | (i211113 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211114 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211114 & 57344) | (i211114 & 896) | 48 | (i211114 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211115 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211115 & 57344) | (i211115 & 896) | 48 | (i211115 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211116 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211116 & 57344) | (i211116 & 896) | 48 | (i211116 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211117 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211117 & 57344) | (i211117 & 896) | 48 | (i211117 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 384;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211118 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211118 & 57344) | (i211118 & 896) | 48 | (i211118 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211119 = i12 << 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i211119 & 57344) | (i211119 & 896) | 48 | (i211119 & 7168) | (i12 & 458752));
                        str3 = str2;
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition3 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111110 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111110 & 57344) | (i2111110 & 896) | 48 | (i2111110 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111111 & 57344) | (i2111111 & 896) | 48 | (i2111111 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111112 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111112 & 57344) | (i2111112 & 896) | 48 | (i2111112 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111113 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111113 & 57344) | (i2111113 & 896) | 48 | (i2111113 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111114 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111114 & 57344) | (i2111114 & 896) | 48 | (i2111114 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111115 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111115 & 57344) | (i2111115 & 896) | 48 | (i2111115 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 3072;
        exitTransition2 = exitTransition;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 57344) == 0) {
                str2 = str;
                if (composerS.k(str2)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111116 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111116 & 57344) | (i2111116 & 896) | 48 | (i2111116 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111117 = i12 << 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111117 & 57344) | (i2111117 & 896) | 48 | (i2111117 & 7168) | (i12 & 458752));
                    str3 = str2;
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition3 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111118 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111118 & 57344) | (i2111118 & 896) | 48 | (i2111118 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111119 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i2111119 & 57344) | (i2111119 & 896) | 48 | (i2111119 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        str2 = str;
        if ((i11 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(content)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
            }
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111110 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21111110 & 57344) | (i21111110 & 896) | 48 | (i21111110 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111 = i12 << 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21111111 & 57344) | (i21111111 & 896) | 48 | (i21111111 & 7168) | (i12 & 458752));
                str3 = str2;
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition3 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i19;
        if ((374491 & i12) == 74898) {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111112 = i12 << 3;
            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21111112 & 57344) | (i21111112 & 896) | 48 | (i21111112 & 7168) | (i12 & 458752));
            str3 = str2;
            modifier4 = modifier3;
            exitTransition3 = exitTransitionB;
            enterTransition3 = enterTransitionB;
        } else {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.E(null, null, false, null, 15, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111113 = i12 << 3;
            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$7.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i21111113 & 57344) | (i21111113 & 896) | 48 | (i21111113 & 7168) | (i12 & 458752));
            str3 = str2;
            modifier4 = modifier3;
            exitTransition3 = exitTransitionB;
            enterTransition3 = enterTransitionB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$8(visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0074  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x008d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x0096  */
    /* JADX WARN: Code duplicated, block: B:53:0x009e  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00db  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:80:0x0100  */
    /* JADX WARN: Code duplicated, block: B:81:0x011a  */
    /* JADX WARN: Code duplicated, block: B:86:0x0145  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    @Composable
    @ExperimentalAnimationApi
    @ComposableInferredTarget
    public static final <T> void c(@NotNull Transition<T> transition, @NotNull l<? super T, Boolean> visible, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        Modifier modifier4;
        ExitTransition exitTransition3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(transition, "<this>");
        t.j(visible, "visible");
        t.j(content, "content");
        Composer composerS = composer.s(1031950689);
        if ((i11 & Integer.MIN_VALUE) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(transition) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 1) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(visible) ? 32 : 16;
        }
        int i18 = i11 & 2;
        if (i18 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((i11 & 16) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i17 = 131072;
                            } else {
                                i17 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898 || !composerS.b()) {
                            if (i18 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                            modifier4 = modifier3;
                            exitTransition3 = exitTransitionB;
                            enterTransition2 = enterTransitionB;
                        } else {
                            composerS.g();
                            modifier4 = modifier2;
                            exitTransition3 = exitTransition2;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
                    }
                    i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i17;
                    if ((374491 & i12) == 74898) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                exitTransition2 = exitTransition;
                if ((i11 & 16) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                if ((374491 & i12) == 74898) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
            }
            i12 |= 3072;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i11 & 16) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                if ((374491 & i12) == 74898) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            if ((i11 & 16) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            if ((374491 & i12) == 74898) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i11 & 16) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                        modifier4 = modifier3;
                        exitTransition3 = exitTransitionB;
                        enterTransition2 = enterTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                if ((374491 & i12) == 74898) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            if ((i11 & 16) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            if ((374491 & i12) == 74898) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
        }
        i12 |= 3072;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((i11 & 16) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                    modifier4 = modifier3;
                    exitTransition3 = exitTransitionB;
                    enterTransition2 = enterTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            if ((374491 & i12) == 74898) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        exitTransition2 = exitTransition;
        if ((i11 & 16) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(content)) {
                    i17 = 131072;
                } else {
                    i17 = 65536;
                }
            }
            if ((374491 & i12) == 74898) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
                modifier4 = modifier3;
                exitTransition3 = exitTransitionB;
                enterTransition2 = enterTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
        }
        i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i17;
        if ((374491 & i12) == 74898) {
            if (i18 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
            modifier4 = modifier3;
            exitTransition3 = exitTransitionB;
            enterTransition2 = enterTransitionB;
        } else {
            if (i18 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            a(transition, visible, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752));
            modifier4 = modifier3;
            exitTransition3 = exitTransitionB;
            enterTransition2 = enterTransitionB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$13(transition, visible, modifier4, enterTransition2, exitTransition3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0061  */
    /* JADX WARN: Code duplicated, block: B:32:0x0069  */
    /* JADX WARN: Code duplicated, block: B:33:0x006c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:41:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0087  */
    /* JADX WARN: Code duplicated, block: B:44:0x008a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0093  */
    /* JADX WARN: Code duplicated, block: B:50:0x0099  */
    /* JADX WARN: Code duplicated, block: B:52:0x009d  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:79:0x0108  */
    /* JADX WARN: Code duplicated, block: B:81:0x010c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0127  */
    /* JADX WARN: Code duplicated, block: B:84:0x012b  */
    /* JADX WARN: Code duplicated, block: B:89:0x016c  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void d(@NotNull ColumnScope columnScope, @NotNull MutableTransitionState<Boolean> visibleState, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @Nullable String str, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        Modifier modifier4;
        String str3;
        EnterTransition enterTransition3;
        ExitTransition exitTransition3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(columnScope, "<this>");
        t.j(visibleState, "visibleState");
        t.j(content, "content");
        Composer composerS = composer.s(-850656618);
        if ((i11 & 1) != 0) {
            i12 = i10 | 48;
        } else if ((i10 & 112) == 0) {
            i12 = (composerS.k(visibleState) ? 32 : 16) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((i10 & 458752) == 0) {
                            str2 = str;
                            if (composerS.k(str2)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 3670016) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 1048576;
                                } else {
                                    i19 = 524288;
                                }
                            }
                            if ((i12 & 2995921) == 599184 || !composerS.b()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                                } else {
                                    enterTransitionB = enterTransition2;
                                }
                                if (i15 != 0) {
                                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                                } else {
                                    exitTransitionB = exitTransition2;
                                }
                                if (i17 != 0) {
                                    str2 = "AnimatedVisibility";
                                }
                                int i21 = i12 >> 3;
                                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21 & 458752));
                                modifier4 = modifier3;
                                str3 = str2;
                                enterTransition3 = enterTransitionB;
                                exitTransition3 = exitTransitionB;
                            } else {
                                composerS.g();
                                modifier4 = modifier2;
                                enterTransition3 = enterTransition2;
                                exitTransition3 = exitTransition2;
                                str3 = str2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                        }
                        i19 = 1572864;
                        i12 |= i19;
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i22 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i22 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i22 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i23 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i23 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i23 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    str2 = str;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i24 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i24 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i24 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i25 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i25 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i25 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i26 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i26 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i26 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i27 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i27 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i27 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                exitTransition2 = exitTransition;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i28 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i28 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i28 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i29 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i29 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i29 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i210 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i210 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i210 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i212 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i212 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i212 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i213 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i213 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i213 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i214 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i214 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i214 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i215 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i215 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i215 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i216 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i216 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i216 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i217 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i217 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i217 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i218 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i218 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i218 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i219 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i219 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i219 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21112 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21112 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21113 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21113 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21116 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21116 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21117 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21117 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211114 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211114 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211115 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211115 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211116 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211116 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211117 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211117 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 3072;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211118 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211118 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211119 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211119 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111110 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111110 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111111 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111114 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111114 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111115 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111115 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        exitTransition2 = exitTransition;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 458752) == 0) {
                str2 = str;
                if (composerS.k(str2)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111118 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111118 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111119 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111119 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        str2 = str;
        if ((i11 & 32) != 0) {
            if ((i10 & 3670016) == 0) {
                if (composerS.k(content)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
            }
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i19 = 1572864;
        i12 |= i19;
        if ((i12 & 2995921) == 599184) {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111112 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111112 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        } else {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.t(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.G(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111113 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$11.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111113 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$12(columnScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    /* JADX WARN: Code duplicated, block: B:28:0x005a  */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0066  */
    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    /* JADX WARN: Code duplicated, block: B:37:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x007c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:44:0x0087  */
    /* JADX WARN: Code duplicated, block: B:48:0x0090  */
    /* JADX WARN: Code duplicated, block: B:50:0x0096  */
    /* JADX WARN: Code duplicated, block: B:52:0x009a  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00be  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:73:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00df  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:79:0x0104  */
    /* JADX WARN: Code duplicated, block: B:81:0x0108  */
    /* JADX WARN: Code duplicated, block: B:82:0x011e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0122  */
    /* JADX WARN: Code duplicated, block: B:89:0x0164  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void e(@NotNull ColumnScope columnScope, boolean z6, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @Nullable String str, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        Modifier modifier4;
        String str3;
        ExitTransition exitTransition3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(columnScope, "<this>");
        t.j(content, "content");
        Composer composerS = composer.s(1766503102);
        if ((i11 & 1) != 0) {
            i12 = i10 | 48;
        } else if ((i10 & 112) == 0) {
            i12 = (composerS.m(z6) ? 32 : 16) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((i10 & 458752) == 0) {
                            str2 = str;
                            if (composerS.k(str2)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 3670016) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 1048576;
                                } else {
                                    i19 = 524288;
                                }
                            }
                            if ((i12 & 2995921) == 599184 || !composerS.b()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                                } else {
                                    enterTransitionB = enterTransition2;
                                }
                                if (i15 != 0) {
                                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                                } else {
                                    exitTransitionB = exitTransition2;
                                }
                                if (i17 != 0) {
                                    str2 = "AnimatedVisibility";
                                }
                                int i21 = i12 >> 3;
                                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21 & 458752));
                                modifier4 = modifier3;
                                str3 = str2;
                                enterTransition2 = enterTransitionB;
                                exitTransition3 = exitTransitionB;
                            } else {
                                composerS.g();
                                modifier4 = modifier2;
                                exitTransition3 = exitTransition2;
                                str3 = str2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                        }
                        i19 = 1572864;
                        i12 |= i19;
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i22 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i22 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i22 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i23 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i23 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i23 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    str2 = str;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i24 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i24 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i24 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i25 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i25 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i25 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i26 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i26 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i26 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i27 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i27 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i27 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                exitTransition2 = exitTransition;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i28 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i28 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i28 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i29 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i29 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i29 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i210 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i210 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i210 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i212 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i212 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i212 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i213 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i213 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i213 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i214 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i214 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i214 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i215 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i215 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i215 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i216 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i216 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i216 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i217 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i217 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i217 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i218 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i218 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i218 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i219 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i219 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i219 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21112 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21112 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21113 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21113 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21116 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21116 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21117 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21117 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211114 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211114 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211115 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211115 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211116 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211116 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211117 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211117 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 3072;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211118 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211118 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211119 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211119 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111110 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111110 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111111 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111114 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111114 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111115 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111115 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        exitTransition2 = exitTransition;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 458752) == 0) {
                str2 = str;
                if (composerS.k(str2)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111118 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111118 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111119 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111119 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        str2 = str;
        if ((i11 & 32) != 0) {
            if ((i10 & 3670016) == 0) {
                if (composerS.k(content)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
            }
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i19 = 1572864;
        i12 |= i19;
        if ((i12 & 2995921) == 599184) {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111112 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111112 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition2 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        } else {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.t(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.G(null, null, false, null, 15, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111113 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$5.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111113 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition2 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$6(columnScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0061  */
    /* JADX WARN: Code duplicated, block: B:32:0x0069  */
    /* JADX WARN: Code duplicated, block: B:33:0x006c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:41:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0087  */
    /* JADX WARN: Code duplicated, block: B:44:0x008a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0093  */
    /* JADX WARN: Code duplicated, block: B:50:0x0099  */
    /* JADX WARN: Code duplicated, block: B:52:0x009d  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:79:0x0108  */
    /* JADX WARN: Code duplicated, block: B:81:0x010c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0127  */
    /* JADX WARN: Code duplicated, block: B:84:0x012b  */
    /* JADX WARN: Code duplicated, block: B:89:0x016c  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void f(@NotNull RowScope rowScope, @NotNull MutableTransitionState<Boolean> visibleState, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @Nullable String str, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        Modifier modifier4;
        String str3;
        EnterTransition enterTransition3;
        ExitTransition exitTransition3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(rowScope, "<this>");
        t.j(visibleState, "visibleState");
        t.j(content, "content");
        Composer composerS = composer.s(836509870);
        if ((i11 & 1) != 0) {
            i12 = i10 | 48;
        } else if ((i10 & 112) == 0) {
            i12 = (composerS.k(visibleState) ? 32 : 16) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((i10 & 458752) == 0) {
                            str2 = str;
                            if (composerS.k(str2)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 3670016) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 1048576;
                                } else {
                                    i19 = 524288;
                                }
                            }
                            if ((i12 & 2995921) == 599184 || !composerS.b()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                                } else {
                                    enterTransitionB = enterTransition2;
                                }
                                if (i15 != 0) {
                                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                                } else {
                                    exitTransitionB = exitTransition2;
                                }
                                if (i17 != 0) {
                                    str2 = "AnimatedVisibility";
                                }
                                int i21 = i12 >> 3;
                                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21 & 458752));
                                modifier4 = modifier3;
                                str3 = str2;
                                enterTransition3 = enterTransitionB;
                                exitTransition3 = exitTransitionB;
                            } else {
                                composerS.g();
                                modifier4 = modifier2;
                                enterTransition3 = enterTransition2;
                                exitTransition3 = exitTransition2;
                                str3 = str2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                        }
                        i19 = 1572864;
                        i12 |= i19;
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i22 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i22 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i22 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i23 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i23 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i23 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    str2 = str;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i24 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i24 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i24 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i25 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i25 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i25 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i26 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i26 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i26 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i27 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i27 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i27 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                exitTransition2 = exitTransition;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i28 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i28 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i28 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i29 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i29 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i29 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i210 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i210 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i210 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i212 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i212 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i212 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i213 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i213 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i213 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i214 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i214 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i214 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i215 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i215 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i215 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i216 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i216 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i216 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i217 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i217 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i217 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i218 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i218 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i218 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i219 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i219 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i219 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21112 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21112 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21113 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21113 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21116 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21116 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21117 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21117 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211114 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211114 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211115 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211115 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211116 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211116 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211117 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211117 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 3072;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211118 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211118 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211119 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i211119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211119 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111110 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111110 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111111 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111114 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111114 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111115 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111115 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        exitTransition2 = exitTransition;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 458752) == 0) {
                str2 = str;
                if (composerS.k(str2)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111118 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111118 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111119 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i2111119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111119 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        str2 = str;
        if ((i11 & 32) != 0) {
            if ((i10 & 3670016) == 0) {
                if (composerS.k(content)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
            }
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i19 = 1572864;
        i12 |= i19;
        if ((i12 & 2995921) == 599184) {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111112 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111112 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        } else {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.p(null, null, false, null, 15, null).b(EnterExitTransitionKt.v(null, 0.0f, 3, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.C(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111113 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.d(visibleState, str2, composerS, MutableTransitionState.$stable | (i21111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$9.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111113 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$10(rowScope, visibleState, modifier4, enterTransition3, exitTransition3, str3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    /* JADX WARN: Code duplicated, block: B:28:0x005a  */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0066  */
    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    /* JADX WARN: Code duplicated, block: B:37:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x007c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:44:0x0087  */
    /* JADX WARN: Code duplicated, block: B:48:0x0090  */
    /* JADX WARN: Code duplicated, block: B:50:0x0096  */
    /* JADX WARN: Code duplicated, block: B:52:0x009a  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00be  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:73:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00df  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:79:0x0104  */
    /* JADX WARN: Code duplicated, block: B:81:0x0108  */
    /* JADX WARN: Code duplicated, block: B:82:0x011e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0122  */
    /* JADX WARN: Code duplicated, block: B:89:0x0164  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void g(@NotNull RowScope rowScope, boolean z6, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @Nullable String str, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        Modifier modifier4;
        String str3;
        ExitTransition exitTransition3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(rowScope, "<this>");
        t.j(content, "content");
        Composer composerS = composer.s(-1741346906);
        if ((i11 & 1) != 0) {
            i12 = i10 | 48;
        } else if ((i10 & 112) == 0) {
            i12 = (composerS.m(z6) ? 32 : 16) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((i10 & 458752) == 0) {
                            str2 = str;
                            if (composerS.k(str2)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 3670016) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 1048576;
                                } else {
                                    i19 = 524288;
                                }
                            }
                            if ((i12 & 2995921) == 599184 || !composerS.b()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                                } else {
                                    enterTransitionB = enterTransition2;
                                }
                                if (i15 != 0) {
                                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                                } else {
                                    exitTransitionB = exitTransition2;
                                }
                                if (i17 != 0) {
                                    str2 = "AnimatedVisibility";
                                }
                                int i21 = i12 >> 3;
                                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21 & 458752));
                                modifier4 = modifier3;
                                str3 = str2;
                                enterTransition2 = enterTransitionB;
                                exitTransition3 = exitTransitionB;
                            } else {
                                composerS.g();
                                modifier4 = modifier2;
                                exitTransition3 = exitTransition2;
                                str3 = str2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                        }
                        i19 = 1572864;
                        i12 |= i19;
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i22 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i22 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i22 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i23 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i23 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i23 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    str2 = str;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i24 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i24 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i24 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i25 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i25 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i25 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i26 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i26 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i26 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i27 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i27 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i27 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                exitTransition2 = exitTransition;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i28 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i28 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i28 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i29 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i29 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i29 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i210 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i210 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i210 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i212 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i212 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i212 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i213 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i213 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i213 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i214 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i214 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i214 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i215 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i215 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i215 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i216 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i216 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i216 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i217 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i217 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i217 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i218 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i218 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i218 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i219 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i219 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i219 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(content)) {
                                i19 = 1048576;
                            } else {
                                i19 = 524288;
                            }
                        }
                        if ((i12 & 2995921) == 599184) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21112 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21112 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21113 = i12 >> 3;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21113 & 458752));
                            modifier4 = modifier3;
                            str3 = str2;
                            enterTransition2 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = 1572864;
                    i12 |= i19;
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21114 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21114 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21115 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21115 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21116 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21116 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21117 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21117 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21118 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21118 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21119 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21119 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211110 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211110 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211111 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211114 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211114 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211115 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211115 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211116 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211116 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211117 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211117 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 3072;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(content)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                    }
                    if ((i12 & 2995921) == 599184) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211118 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211118 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211119 = i12 >> 3;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i211119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i211119 & 458752));
                        modifier4 = modifier3;
                        str3 = str2;
                        enterTransition2 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
                }
                i19 = 1572864;
                i12 |= i19;
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111110 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111110 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111111 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111112 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111112 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111113 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111113 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111114 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111114 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111114 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111115 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111115 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111115 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        exitTransition2 = exitTransition;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 458752) == 0) {
                str2 = str;
                if (composerS.k(str2)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(content)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                }
                if ((i12 & 2995921) == 599184) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111116 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111116 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111116 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111117 = i12 >> 3;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111117 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111117 & 458752));
                    modifier4 = modifier3;
                    str3 = str2;
                    enterTransition2 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
            }
            i19 = 1572864;
            i12 |= i19;
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111118 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111118 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111118 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111119 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i2111119 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i2111119 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        str2 = str;
        if ((i11 & 32) != 0) {
            if ((i10 & 3670016) == 0) {
                if (composerS.k(content)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
            }
            if ((i12 & 2995921) == 599184) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111110 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111110 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111110 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111 = i12 >> 3;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111111 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111111 & 458752));
                modifier4 = modifier3;
                str3 = str2;
                enterTransition2 = enterTransitionB;
                exitTransition3 = exitTransitionB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
        }
        i19 = 1572864;
        i12 |= i19;
        if ((i12 & 2995921) == 599184) {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111112 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111112 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111112 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition2 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        } else {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.p(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.x(null, 0.0f, 3, null).b(EnterExitTransitionKt.C(null, null, false, null, 15, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111113 = i12 >> 3;
            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i21111113 & 14) | ((i12 >> 12) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$3.INSTANCE, modifier3, enterTransitionB, exitTransitionB, content, composerS, (i12 & 57344) | (i12 & 896) | 48 | (i12 & 7168) | (i21111113 & 458752));
            modifier4 = modifier3;
            str3 = str2;
            enterTransition2 = enterTransitionB;
            exitTransition3 = exitTransitionB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$4(rowScope, z6, modifier4, enterTransition2, exitTransition3, str3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:44:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0096  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:79:0x00da  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:83:0x0113  */
    /* JADX WARN: Code duplicated, block: B:85:0x0116  */
    /* JADX WARN: Code duplicated, block: B:90:0x014f  */
    /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void h(boolean z6, @Nullable Modifier modifier, @Nullable EnterTransition enterTransition, @Nullable ExitTransition exitTransition, @Nullable String str, @NotNull q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        EnterTransition enterTransition2;
        int i14;
        int i15;
        ExitTransition exitTransition2;
        int i16;
        int i17;
        String str2;
        int i18;
        int i19;
        Modifier modifier3;
        EnterTransition enterTransitionB;
        ExitTransition exitTransitionB;
        EnterTransition enterTransition3;
        ExitTransition exitTransition3;
        String str3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(2088733774);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.m(z6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    enterTransition2 = enterTransition;
                    if (composerS.k(enterTransition2)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        exitTransition2 = exitTransition;
                        if (composerS.k(exitTransition2)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((i10 & 57344) == 0) {
                            str2 = str;
                            if (composerS.k(str2)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 458752) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 131072;
                                } else {
                                    i19 = 65536;
                                }
                            }
                            if ((374491 & i12) == 74898 || !composerS.b()) {
                                if (i20 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                                } else {
                                    enterTransitionB = enterTransition2;
                                }
                                if (i15 != 0) {
                                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                                } else {
                                    exitTransitionB = exitTransition2;
                                }
                                if (i17 != 0) {
                                    str2 = "AnimatedVisibility";
                                }
                                int i21 = i12 << 3;
                                int i22 = (i21 & 57344) | (i21 & 896) | 48 | (i21 & 7168) | (i12 & 458752);
                                modifier2 = modifier3;
                                enterTransition3 = enterTransitionB;
                                exitTransition3 = exitTransitionB;
                                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i22);
                            } else {
                                composerS.g();
                                enterTransition3 = enterTransition2;
                                exitTransition3 = exitTransition2;
                            }
                            str3 = str2;
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                        }
                        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i12 |= i19;
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i23 = i12 << 3;
                            int i24 = (i23 & 57344) | (i23 & 896) | 48 | (i23 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i24);
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i25 = i12 << 3;
                            int i26 = (i25 & 57344) | (i25 & 896) | 48 | (i25 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i26);
                        }
                        str3 = str2;
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    str2 = str;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i27 = i12 << 3;
                            int i28 = (i27 & 57344) | (i27 & 896) | 48 | (i27 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i28);
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i29 = i12 << 3;
                            int i210 = (i29 & 57344) | (i29 & 896) | 48 | (i29 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i210);
                        }
                        str3 = str2;
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211 = i12 << 3;
                        int i212 = (i211 & 57344) | (i211 & 896) | 48 | (i211 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i212);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i213 = i12 << 3;
                        int i214 = (i213 & 57344) | (i213 & 896) | 48 | (i213 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i214);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= 3072;
                exitTransition2 = exitTransition;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i215 = i12 << 3;
                            int i216 = (i215 & 57344) | (i215 & 896) | 48 | (i215 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i216);
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i217 = i12 << 3;
                            int i218 = (i217 & 57344) | (i217 & 896) | 48 | (i217 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i218);
                        }
                        str3 = str2;
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i219 = i12 << 3;
                        int i2110 = (i219 & 57344) | (i219 & 896) | 48 | (i219 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2110);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111 = i12 << 3;
                        int i2112 = (i2111 & 57344) | (i2111 & 896) | 48 | (i2111 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2112);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2113 = i12 << 3;
                        int i2114 = (i2113 & 57344) | (i2113 & 896) | 48 | (i2113 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2114);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2115 = i12 << 3;
                        int i2116 = (i2115 & 57344) | (i2115 & 896) | 48 | (i2115 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2116);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2117 = i12 << 3;
                    int i2118 = (i2117 & 57344) | (i2117 & 896) | 48 | (i2117 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2118);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2119 = i12 << 3;
                    int i21110 = (i2119 & 57344) | (i2119 & 896) | 48 | (i2119 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21110);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 384;
            enterTransition2 = enterTransition;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21111 = i12 << 3;
                            int i21112 = (i21111 & 57344) | (i21111 & 896) | 48 | (i21111 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21112);
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21113 = i12 << 3;
                            int i21114 = (i21113 & 57344) | (i21113 & 896) | 48 | (i21113 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21114);
                        }
                        str3 = str2;
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21115 = i12 << 3;
                        int i21116 = (i21115 & 57344) | (i21115 & 896) | 48 | (i21115 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21116);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21117 = i12 << 3;
                        int i21118 = (i21117 & 57344) | (i21117 & 896) | 48 | (i21117 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21118);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21119 = i12 << 3;
                        int i211110 = (i21119 & 57344) | (i21119 & 896) | 48 | (i21119 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211110);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111 = i12 << 3;
                        int i211112 = (i211111 & 57344) | (i211111 & 896) | 48 | (i211111 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211112);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211113 = i12 << 3;
                    int i211114 = (i211113 & 57344) | (i211113 & 896) | 48 | (i211113 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211114);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211115 = i12 << 3;
                    int i211116 = (i211115 & 57344) | (i211115 & 896) | 48 | (i211115 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211116);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211117 = i12 << 3;
                        int i211118 = (i211117 & 57344) | (i211117 & 896) | 48 | (i211117 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211118);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211119 = i12 << 3;
                        int i2111110 = (i211119 & 57344) | (i211119 & 896) | 48 | (i211119 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111110);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111 = i12 << 3;
                    int i2111112 = (i2111111 & 57344) | (i2111111 & 896) | 48 | (i2111111 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111112);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111113 = i12 << 3;
                    int i2111114 = (i2111113 & 57344) | (i2111113 & 896) | 48 | (i2111113 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111114);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111115 = i12 << 3;
                    int i2111116 = (i2111115 & 57344) | (i2111115 & 896) | 48 | (i2111115 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111116);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111117 = i12 << 3;
                    int i2111118 = (i2111117 & 57344) | (i2111117 & 896) | 48 | (i2111117 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111118);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111119 = i12 << 3;
                int i21111110 = (i2111119 & 57344) | (i2111119 & 896) | 48 | (i2111119 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111110);
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111 = i12 << 3;
                int i21111112 = (i21111111 & 57344) | (i21111111 & 896) | 48 | (i21111111 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111112);
            }
            str3 = str2;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                enterTransition2 = enterTransition;
                if (composerS.k(enterTransition2)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    exitTransition2 = exitTransition;
                    if (composerS.k(exitTransition2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        str2 = str;
                        if (composerS.k(str2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21111113 = i12 << 3;
                            int i21111114 = (i21111113 & 57344) | (i21111113 & 896) | 48 | (i21111113 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111114);
                        } else {
                            if (i20 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                            } else {
                                enterTransitionB = enterTransition2;
                            }
                            if (i15 != 0) {
                                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                            } else {
                                exitTransitionB = exitTransition2;
                            }
                            if (i17 != 0) {
                                str2 = "AnimatedVisibility";
                            }
                            int i21111115 = i12 << 3;
                            int i21111116 = (i21111115 & 57344) | (i21111115 & 896) | 48 | (i21111115 & 7168) | (i12 & 458752);
                            modifier2 = modifier3;
                            enterTransition3 = enterTransitionB;
                            exitTransition3 = exitTransitionB;
                            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111116);
                        }
                        str3 = str2;
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21111117 = i12 << 3;
                        int i21111118 = (i21111117 & 57344) | (i21111117 & 896) | 48 | (i21111117 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111118);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21111119 = i12 << 3;
                        int i211111110 = (i21111119 & 57344) | (i21111119 & 896) | 48 | (i21111119 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111110);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                str2 = str;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111111 = i12 << 3;
                        int i211111112 = (i211111111 & 57344) | (i211111111 & 896) | 48 | (i211111111 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111112);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111113 = i12 << 3;
                        int i211111114 = (i211111113 & 57344) | (i211111113 & 896) | 48 | (i211111113 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111114);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211111115 = i12 << 3;
                    int i211111116 = (i211111115 & 57344) | (i211111115 & 896) | 48 | (i211111115 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111116);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211111117 = i12 << 3;
                    int i211111118 = (i211111117 & 57344) | (i211111117 & 896) | 48 | (i211111117 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111118);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= 3072;
            exitTransition2 = exitTransition;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i211111119 = i12 << 3;
                        int i2111111110 = (i211111119 & 57344) | (i211111119 & 896) | 48 | (i211111119 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111110);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i2111111111 = i12 << 3;
                        int i2111111112 = (i2111111111 & 57344) | (i2111111111 & 896) | 48 | (i2111111111 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111112);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111113 = i12 << 3;
                    int i2111111114 = (i2111111113 & 57344) | (i2111111113 & 896) | 48 | (i2111111113 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111114);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111115 = i12 << 3;
                    int i2111111116 = (i2111111115 & 57344) | (i2111111115 & 896) | 48 | (i2111111115 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111116);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111117 = i12 << 3;
                    int i2111111118 = (i2111111117 & 57344) | (i2111111117 & 896) | 48 | (i2111111117 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111118);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111119 = i12 << 3;
                    int i21111111110 = (i2111111119 & 57344) | (i2111111119 & 896) | 48 | (i2111111119 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111110);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111111 = i12 << 3;
                int i21111111112 = (i21111111111 & 57344) | (i21111111111 & 896) | 48 | (i21111111111 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111112);
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111113 = i12 << 3;
                int i21111111114 = (i21111111113 & 57344) | (i21111111113 & 896) | 48 | (i21111111113 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111114);
            }
            str3 = str2;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 384;
        enterTransition2 = enterTransition;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                exitTransition2 = exitTransition;
                if (composerS.k(exitTransition2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    str2 = str;
                    if (composerS.k(str2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21111111115 = i12 << 3;
                        int i21111111116 = (i21111111115 & 57344) | (i21111111115 & 896) | 48 | (i21111111115 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111116);
                    } else {
                        if (i20 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                        } else {
                            enterTransitionB = enterTransition2;
                        }
                        if (i15 != 0) {
                            exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                        } else {
                            exitTransitionB = exitTransition2;
                        }
                        if (i17 != 0) {
                            str2 = "AnimatedVisibility";
                        }
                        int i21111111117 = i12 << 3;
                        int i21111111118 = (i21111111117 & 57344) | (i21111111117 & 896) | 48 | (i21111111117 & 7168) | (i12 & 458752);
                        modifier2 = modifier3;
                        enterTransition3 = enterTransitionB;
                        exitTransition3 = exitTransitionB;
                        a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111118);
                    }
                    str3 = str2;
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i21111111119 = i12 << 3;
                    int i211111111110 = (i21111111119 & 57344) | (i21111111119 & 896) | 48 | (i21111111119 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111111110);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211111111111 = i12 << 3;
                    int i211111111112 = (i211111111111 & 57344) | (i211111111111 & 896) | 48 | (i211111111111 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111111112);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            str2 = str;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211111111113 = i12 << 3;
                    int i211111111114 = (i211111111113 & 57344) | (i211111111113 & 896) | 48 | (i211111111113 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111111114);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i211111111115 = i12 << 3;
                    int i211111111116 = (i211111111115 & 57344) | (i211111111115 & 896) | 48 | (i211111111115 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111111116);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211111111117 = i12 << 3;
                int i211111111118 = (i211111111117 & 57344) | (i211111111117 & 896) | 48 | (i211111111117 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i211111111118);
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i211111111119 = i12 << 3;
                int i2111111111110 = (i211111111119 & 57344) | (i211111111119 & 896) | 48 | (i211111111119 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111111110);
            }
            str3 = str2;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= 3072;
        exitTransition2 = exitTransition;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 57344) == 0) {
                str2 = str;
                if (composerS.k(str2)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111111111 = i12 << 3;
                    int i2111111111112 = (i2111111111111 & 57344) | (i2111111111111 & 896) | 48 | (i2111111111111 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111111112);
                } else {
                    if (i20 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                    } else {
                        enterTransitionB = enterTransition2;
                    }
                    if (i15 != 0) {
                        exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                    } else {
                        exitTransitionB = exitTransition2;
                    }
                    if (i17 != 0) {
                        str2 = "AnimatedVisibility";
                    }
                    int i2111111111113 = i12 << 3;
                    int i2111111111114 = (i2111111111113 & 57344) | (i2111111111113 & 896) | 48 | (i2111111111113 & 7168) | (i12 & 458752);
                    modifier2 = modifier3;
                    enterTransition3 = enterTransitionB;
                    exitTransition3 = exitTransitionB;
                    a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111111114);
                }
                str3 = str2;
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111111111115 = i12 << 3;
                int i2111111111116 = (i2111111111115 & 57344) | (i2111111111115 & 896) | 48 | (i2111111111115 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111111116);
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111111111117 = i12 << 3;
                int i2111111111118 = (i2111111111117 & 57344) | (i2111111111117 & 896) | 48 | (i2111111111117 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i2111111111118);
            }
            str3 = str2;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        str2 = str;
        if ((i11 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(content)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
            }
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i2111111111119 = i12 << 3;
                int i21111111111110 = (i2111111111119 & 57344) | (i2111111111119 & 896) | 48 | (i2111111111119 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111111110);
            } else {
                if (i20 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
                } else {
                    enterTransitionB = enterTransition2;
                }
                if (i15 != 0) {
                    exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
                } else {
                    exitTransitionB = exitTransition2;
                }
                if (i17 != 0) {
                    str2 = "AnimatedVisibility";
                }
                int i21111111111111 = i12 << 3;
                int i21111111111112 = (i21111111111111 & 57344) | (i21111111111111 & 896) | 48 | (i21111111111111 & 7168) | (i12 & 458752);
                modifier2 = modifier3;
                enterTransition3 = enterTransitionB;
                exitTransition3 = exitTransitionB;
                a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111111112);
            }
            str3 = str2;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
        }
        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i19;
        if ((374491 & i12) == 74898) {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111111111113 = i12 << 3;
            int i21111111111114 = (i21111111111113 & 57344) | (i21111111111113 & 896) | 48 | (i21111111111113 & 7168) | (i12 & 458752);
            modifier2 = modifier3;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111111114);
        } else {
            if (i20 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                enterTransitionB = EnterExitTransitionKt.v(null, 0.0f, 3, null).b(EnterExitTransitionKt.r(null, null, false, null, 15, null));
            } else {
                enterTransitionB = enterTransition2;
            }
            if (i15 != 0) {
                exitTransitionB = EnterExitTransitionKt.E(null, null, false, null, 15, null).b(EnterExitTransitionKt.x(null, 0.0f, 3, null));
            } else {
                exitTransitionB = exitTransition2;
            }
            if (i17 != 0) {
                str2 = "AnimatedVisibility";
            }
            int i21111111111115 = i12 << 3;
            int i21111111111116 = (i21111111111115 & 57344) | (i21111111111115 & 896) | 48 | (i21111111111115 & 7168) | (i12 & 458752);
            modifier2 = modifier3;
            enterTransition3 = enterTransitionB;
            exitTransition3 = exitTransitionB;
            a(androidx.compose.animation.core.TransitionKt.e(Boolean.valueOf(z6), str2, composerS, (i12 & 14) | ((i12 >> 9) & 112), 0), AnimatedVisibilityKt$AnimatedVisibility$1.INSTANCE, modifier2, enterTransition3, exitTransition3, content, composerS, i21111111111116);
        }
        str3 = str2;
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$2(z6, modifier2, enterTransition3, exitTransition3, str3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005a  */
    /* JADX WARN: Code duplicated, block: B:27:0x005d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0061  */
    /* JADX WARN: Code duplicated, block: B:31:0x0067  */
    /* JADX WARN: Code duplicated, block: B:32:0x006a  */
    /* JADX WARN: Code duplicated, block: B:36:0x0071  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:46:0x0088  */
    /* JADX WARN: Code duplicated, block: B:47:0x008d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:51:0x009b  */
    /* JADX WARN: Code duplicated, block: B:52:0x009e  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:80:0x0134  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    @Composable
    @ExperimentalAnimationApi
    @ComposableInferredTarget
    public static final void i(boolean z6, @Nullable Modifier modifier, @NotNull EnterTransition enter, @NotNull ExitTransition exit, boolean z10, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        int i14;
        int i15;
        int i16;
        Modifier modifier3;
        Object objH;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(enter, "enter");
        t.j(exit, "exit");
        t.j(content, "content");
        Composer composerS = composer.s(1121582420);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.m(z6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i17 = i11 & 2;
        if (i17 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            if ((i11 & 4) != 0) {
                i12 |= 384;
            } else if ((i10 & 896) == 0) {
                if (composerS.k(enter)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i12 |= i13;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(exit)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.m(z10)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i12 |= i15;
            }
            if ((i11 & 32) != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((458752 & i10) == 0) {
                if (composerS.k(content)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            if ((374491 & i12) == 74898 || !composerS.b()) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new MutableTransitionState(Boolean.valueOf(z10));
                    composerS.z(objH);
                }
                composerS.Q();
                MutableTransitionState mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                b(mutableTransitionState, modifier3, enter, exit, null, ComposableLambdaKt.b(composerS, 1996320812, true, new AnimatedVisibilityKt$AnimatedVisibility$16(content, i12)), composerS, MutableTransitionState.$stable | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i12 & 112) | (i12 & 896) | (i12 & 7168), 16);
                modifier2 = modifier3;
            } else {
                composerS.g();
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$17(z6, modifier2, enter, exit, z10, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            if (composerS.k(enter)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i12 |= i13;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(exit)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i12 |= i14;
        }
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.m(z10)) {
                i15 = 16384;
            } else {
                i15 = 8192;
            }
            i12 |= i15;
        }
        if ((i11 & 32) != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((458752 & i10) == 0) {
            if (composerS.k(content)) {
                i16 = 131072;
            } else {
                i16 = 65536;
            }
            i12 |= i16;
        }
        if ((374491 & i12) == 74898) {
            if (i17 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new MutableTransitionState(Boolean.valueOf(z10));
                composerS.z(objH);
            }
            composerS.Q();
            MutableTransitionState mutableTransitionState2 = (MutableTransitionState) objH;
            mutableTransitionState2.e(Boolean.valueOf(z6));
            b(mutableTransitionState2, modifier3, enter, exit, null, ComposableLambdaKt.b(composerS, 1996320812, true, new AnimatedVisibilityKt$AnimatedVisibility$16(content, i12)), composerS, MutableTransitionState.$stable | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i12 & 112) | (i12 & 896) | (i12 & 7168), 16);
            modifier2 = modifier3;
        } else {
            if (i17 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new MutableTransitionState(Boolean.valueOf(z10));
                composerS.z(objH);
            }
            composerS.Q();
            MutableTransitionState mutableTransitionState3 = (MutableTransitionState) objH;
            mutableTransitionState3.e(Boolean.valueOf(z6));
            b(mutableTransitionState3, modifier3, enter, exit, null, ComposableLambdaKt.b(composerS, 1996320812, true, new AnimatedVisibilityKt$AnimatedVisibility$16(content, i12)), composerS, MutableTransitionState.$stable | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i12 & 112) | (i12 & 896) | (i12 & 7168), 16);
            modifier2 = modifier3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedVisibilityKt$AnimatedVisibility$17(z6, modifier2, enter, exit, z10, content, i10, i11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Composable
    private static final <T> EnterExitState k(Transition<T> transition, l<? super T, Boolean> lVar, T t5, Composer composer, int i10) {
        EnterExitState enterExitState;
        composer.G(361571134);
        composer.K(-721837481, transition);
        if (transition.q()) {
            if (lVar.invoke(t5).booleanValue()) {
                enterExitState = EnterExitState.Visible;
            } else if (lVar.invoke(transition.g()).booleanValue()) {
                enterExitState = EnterExitState.PostExit;
            } else {
                enterExitState = EnterExitState.PreEnter;
            }
        } else {
            composer.G(-492369756);
            Object objH = composer.H();
            if (objH == Composer.Companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
                composer.z(objH);
            }
            composer.Q();
            MutableState mutableState = (MutableState) objH;
            if (lVar.invoke(transition.g()).booleanValue()) {
                mutableState.setValue(Boolean.TRUE);
            }
            if (lVar.invoke(t5).booleanValue()) {
                enterExitState = EnterExitState.Visible;
            } else if (((Boolean) mutableState.getValue()).booleanValue()) {
                enterExitState = EnterExitState.PostExit;
            } else {
                enterExitState = EnterExitState.PreEnter;
            }
        }
        composer.P();
        composer.Q();
        return enterExitState;
    }
}
