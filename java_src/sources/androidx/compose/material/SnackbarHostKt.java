package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.work.WorkRequest;
import e8.a;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
public final class SnackbarHostKt {
    private static final int SnackbarFadeInMillis = 150;
    private static final int SnackbarFadeOutMillis = 75;
    private static final int SnackbarInBetweenDelayMillis = 0;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SnackbarDuration.values().length];
            iArr[SnackbarDuration.Indefinite.ordinal()] = 1;
            iArr[SnackbarDuration.Long.ordinal()] = 2;
            iArr[SnackbarDuration.Short.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    /* JADX WARN: Code duplicated, block: B:30:0x004c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0053  */
    /* JADX WARN: Code duplicated, block: B:33:0x0056  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:51:0x00af  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull SnackbarHostState hostState, @Nullable Modifier modifier, @Nullable q<? super SnackbarData, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        Modifier modifier2;
        q<? super SnackbarData, ? super Composer, ? super Integer, l0> qVarA;
        Modifier modifier3;
        q<? super SnackbarData, ? super Composer, ? super Integer, l0> qVar2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(hostState, "hostState");
        Composer composerS = composer.s(431012348);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(hostState) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i15 = i11 & 2;
        if (i15 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.k(qVar)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i12 & 731) == 146 || !composerS.b()) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    SnackbarData snackbarDataB = hostState.b();
                    EffectsKt.d(snackbarDataB, new SnackbarHostKt$SnackbarHost$1(snackbarDataB, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
                    a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
                    modifier3 = modifier2;
                    qVar2 = qVarA;
                } else {
                    composerS.g();
                    modifier3 = modifier;
                    qVar2 = qVar;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SnackbarHostKt$SnackbarHost$2(hostState, modifier3, qVar2, i10, i11));
            }
            i12 |= 384;
            if ((i12 & 731) == 146) {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                SnackbarData snackbarDataB2 = hostState.b();
                EffectsKt.d(snackbarDataB2, new SnackbarHostKt$SnackbarHost$1(snackbarDataB2, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
                a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
                modifier3 = modifier2;
                qVar2 = qVarA;
            } else {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                SnackbarData snackbarDataB3 = hostState.b();
                EffectsKt.d(snackbarDataB3, new SnackbarHostKt$SnackbarHost$1(snackbarDataB3, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
                a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
                modifier3 = modifier2;
                qVar2 = qVarA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarHostKt$SnackbarHost$2(hostState, modifier3, qVar2, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.k(qVar)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i12 & 731) == 146) {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                SnackbarData snackbarDataB4 = hostState.b();
                EffectsKt.d(snackbarDataB4, new SnackbarHostKt$SnackbarHost$1(snackbarDataB4, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
                a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
                modifier3 = modifier2;
                qVar2 = qVarA;
            } else {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                SnackbarData snackbarDataB5 = hostState.b();
                EffectsKt.d(snackbarDataB5, new SnackbarHostKt$SnackbarHost$1(snackbarDataB5, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
                a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
                modifier3 = modifier2;
                qVar2 = qVarA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarHostKt$SnackbarHost$2(hostState, modifier3, qVar2, i10, i11));
        }
        i12 |= 384;
        if ((i12 & 731) == 146) {
            if (i15 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i13 != 0) {
                qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
            } else {
                qVarA = qVar;
            }
            SnackbarData snackbarDataB6 = hostState.b();
            EffectsKt.d(snackbarDataB6, new SnackbarHostKt$SnackbarHost$1(snackbarDataB6, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
            a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
            modifier3 = modifier2;
            qVar2 = qVarA;
        } else {
            if (i15 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i13 != 0) {
                qVarA = ComposableSingletons$SnackbarHostKt.INSTANCE.a();
            } else {
                qVarA = qVar;
            }
            SnackbarData snackbarDataB7 = hostState.b();
            EffectsKt.d(snackbarDataB7, new SnackbarHostKt$SnackbarHost$1(snackbarDataB7, (AccessibilityManager) composerS.x(CompositionLocalsKt.c()), null), composerS, 0);
            a(hostState.b(), modifier2, qVarA, composerS, (i12 & 112) | (i12 & 896), 0);
            modifier3 = modifier2;
            qVar2 = qVarA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SnackbarHostKt$SnackbarHost$2(hostState, modifier3, qVar2, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:27:0x0048  */
    /* JADX WARN: Code duplicated, block: B:29:0x004c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x0055  */
    /* JADX WARN: Code duplicated, block: B:40:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:45:0x0083  */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b9 A[LOOP:0: B:49:0x00b3->B:51:0x00b9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f6 A[LOOP:1: B:56:0x00f0->B:58:0x00f6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:61:0x016f  */
    /* JADX WARN: Code duplicated, block: B:64:0x017b  */
    /* JADX WARN: Code duplicated, block: B:65:0x017f  */
    /* JADX WARN: Code duplicated, block: B:68:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:72:0x01da  */
    /* JADX WARN: Code duplicated, block: B:74:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:76:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:80:0x020c A[LOOP:2: B:79:0x020a->B:80:0x020c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:86:0x0256  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(SnackbarData snackbarData, Modifier modifier, q<? super SnackbarData, ? super Composer, ? super Integer, l0> qVar, Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        Modifier modifier3;
        Object objH;
        FadeInFadeOutState fadeInFadeOutState;
        int i14;
        a<ComposeUiNode> aVarA;
        int i15;
        List listB;
        int size;
        int i16;
        Modifier modifier4;
        ArrayList arrayList;
        Iterator it;
        List listW0;
        List listB2;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(2036134589);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(snackbarData) ? 4 : 2) | i10;
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
                if (composerS.k(qVar)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i12 |= i13;
            }
            if ((i12 & 731) == 146 || !composerS.b()) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new FadeInFadeOutState();
                    composerS.z(objH);
                }
                composerS.Q();
                fadeInFadeOutState = (FadeInFadeOutState) objH;
                if (!t.e(snackbarData, fadeInFadeOutState.a())) {
                    fadeInFadeOutState.d(snackbarData);
                    List listB3 = fadeInFadeOutState.b();
                    arrayList = new ArrayList(w.x(listB3, 10));
                    it = listB3.iterator();
                    while (it.hasNext()) {
                        arrayList.add((SnackbarData) ((FadeInFadeOutAnimationItem) it.next()).c());
                    }
                    listW0 = d0.W0(arrayList);
                    if (!listW0.contains(snackbarData)) {
                        listW0.add(snackbarData);
                    }
                    fadeInFadeOutState.b().clear();
                    List<SnackbarData> listG0 = d0.g0(listW0);
                    listB2 = fadeInFadeOutState.b();
                    for (SnackbarData snackbarData2 : listG0) {
                        listB2.add(new FadeInFadeOutAnimationItem(snackbarData2, ComposableLambdaKt.b(composerS, -94104314, true, new SnackbarHostKt$FadeInFadeOutWithScale$1$1(snackbarData2, snackbarData, listW0, fadeInFadeOutState))));
                    }
                }
                i14 = (i12 >> 3) & 14;
                composerS.G(733328855);
                int i18 = i14 >> 3;
                MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composerS, (i18 & 112) | (i18 & 14));
                composerS.G(-1323940314);
                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                aVarA = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier3);
                i15 = ((((i14 << 3) & 112) << 9) & 7168) | 6;
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
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i15 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i15 >> 9) & 10) == 2 || !composerS.b()) {
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    composerS.G(-1788016521);
                    if (((((i14 >> 6) & 112) | 6) & 81) == 16 || !composerS.b()) {
                        fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                        listB = fadeInFadeOutState.b();
                        size = listB.size();
                        for (i16 = 0; i16 < size; i16++) {
                            FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) listB.get(i16);
                            SnackbarData snackbarData3 = (SnackbarData) fadeInFadeOutAnimationItem.a();
                            q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB = fadeInFadeOutAnimationItem.b();
                            composerS.K(-208579897, snackbarData3);
                            qVarB.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData3, i12)), composerS, 6);
                            composerS.P();
                        }
                    } else {
                        composerS.g();
                    }
                    composerS.Q();
                } else {
                    composerS.g();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier3;
            } else {
                composerS.g();
                modifier4 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarHostKt$FadeInFadeOutWithScale$3(snackbarData, modifier4, qVar, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            if (composerS.k(qVar)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i12 |= i13;
        }
        if ((i12 & 731) == 146) {
            if (i17 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new FadeInFadeOutState();
                composerS.z(objH);
            }
            composerS.Q();
            fadeInFadeOutState = (FadeInFadeOutState) objH;
            if (!t.e(snackbarData, fadeInFadeOutState.a())) {
                fadeInFadeOutState.d(snackbarData);
                List listB4 = fadeInFadeOutState.b();
                arrayList = new ArrayList(w.x(listB4, 10));
                it = listB4.iterator();
                while (it.hasNext()) {
                    arrayList.add((SnackbarData) ((FadeInFadeOutAnimationItem) it.next()).c());
                }
                listW0 = d0.W0(arrayList);
                if (!listW0.contains(snackbarData)) {
                    listW0.add(snackbarData);
                }
                fadeInFadeOutState.b().clear();
                List<SnackbarData> listG1 = d0.g0(listW0);
                listB2 = fadeInFadeOutState.b();
                while (r12.hasNext()) {
                    listB2.add(new FadeInFadeOutAnimationItem(snackbarData2, ComposableLambdaKt.b(composerS, -94104314, true, new SnackbarHostKt$FadeInFadeOutWithScale$1$1(snackbarData2, snackbarData, listW0, fadeInFadeOutState))));
                }
            }
            i14 = (i12 >> 3) & 14;
            composerS.G(733328855);
            int i19 = i14 >> 3;
            MeasurePolicy measurePolicyH2 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i19 & 112) | (i19 & 14));
            composerS.G(-1323940314);
            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifier3);
            i15 = ((((i14 << 3) & 112) << 9) & 7168) | 6;
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
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i15 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(-2137368960);
            if (((i15 >> 9) & 10) == 2) {
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                composerS.G(-1788016521);
                if (((((i14 >> 6) & 112) | 6) & 81) == 16) {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem2 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData4 = (SnackbarData) fadeInFadeOutAnimationItem2.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB2 = fadeInFadeOutAnimationItem2.b();
                        composerS.K(-208579897, snackbarData4);
                        qVarB2.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData4, i12)), composerS, 6);
                        composerS.P();
                    }
                } else {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem3 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData5 = (SnackbarData) fadeInFadeOutAnimationItem3.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB3 = fadeInFadeOutAnimationItem3.b();
                        composerS.K(-208579897, snackbarData5);
                        qVarB3.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData5, i12)), composerS, 6);
                        composerS.P();
                    }
                }
                composerS.Q();
            } else {
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                composerS.G(-1788016521);
                if (((((i14 >> 6) & 112) | 6) & 81) == 16) {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem4 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData6 = (SnackbarData) fadeInFadeOutAnimationItem4.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB4 = fadeInFadeOutAnimationItem4.b();
                        composerS.K(-208579897, snackbarData6);
                        qVarB4.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData6, i12)), composerS, 6);
                        composerS.P();
                    }
                } else {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem5 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData7 = (SnackbarData) fadeInFadeOutAnimationItem5.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB5 = fadeInFadeOutAnimationItem5.b();
                        composerS.K(-208579897, snackbarData7);
                        qVarB5.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData7, i12)), composerS, 6);
                        composerS.P();
                    }
                }
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier3;
        } else {
            if (i17 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new FadeInFadeOutState();
                composerS.z(objH);
            }
            composerS.Q();
            fadeInFadeOutState = (FadeInFadeOutState) objH;
            if (!t.e(snackbarData, fadeInFadeOutState.a())) {
                fadeInFadeOutState.d(snackbarData);
                List listB5 = fadeInFadeOutState.b();
                arrayList = new ArrayList(w.x(listB5, 10));
                it = listB5.iterator();
                while (it.hasNext()) {
                    arrayList.add((SnackbarData) ((FadeInFadeOutAnimationItem) it.next()).c());
                }
                listW0 = d0.W0(arrayList);
                if (!listW0.contains(snackbarData)) {
                    listW0.add(snackbarData);
                }
                fadeInFadeOutState.b().clear();
                List<SnackbarData> listG2 = d0.g0(listW0);
                listB2 = fadeInFadeOutState.b();
                while (r12.hasNext()) {
                    listB2.add(new FadeInFadeOutAnimationItem(snackbarData2, ComposableLambdaKt.b(composerS, -94104314, true, new SnackbarHostKt$FadeInFadeOutWithScale$1$1(snackbarData2, snackbarData, listW0, fadeInFadeOutState))));
                }
            }
            i14 = (i12 >> 3) & 14;
            composerS.G(733328855);
            int i110 = i14 >> 3;
            MeasurePolicy measurePolicyH3 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i110 & 112) | (i110 & 14));
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            aVarA = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifier3);
            i15 = ((((i14 << 3) & 112) << 9) & 7168) | 6;
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
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i15 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(-2137368960);
            if (((i15 >> 9) & 10) == 2) {
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                composerS.G(-1788016521);
                if (((((i14 >> 6) & 112) | 6) & 81) == 16) {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem6 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData8 = (SnackbarData) fadeInFadeOutAnimationItem6.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB6 = fadeInFadeOutAnimationItem6.b();
                        composerS.K(-208579897, snackbarData8);
                        qVarB6.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData8, i12)), composerS, 6);
                        composerS.P();
                    }
                } else {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem7 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData9 = (SnackbarData) fadeInFadeOutAnimationItem7.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB7 = fadeInFadeOutAnimationItem7.b();
                        composerS.K(-208579897, snackbarData9);
                        qVarB7.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData9, i12)), composerS, 6);
                        composerS.P();
                    }
                }
                composerS.Q();
            } else {
                BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                composerS.G(-1788016521);
                if (((((i14 >> 6) & 112) | 6) & 81) == 16) {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem8 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData10 = (SnackbarData) fadeInFadeOutAnimationItem8.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB8 = fadeInFadeOutAnimationItem8.b();
                        composerS.K(-208579897, snackbarData10);
                        qVarB8.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData10, i12)), composerS, 6);
                        composerS.P();
                    }
                } else {
                    fadeInFadeOutState.e(ComposablesKt.b(composerS, 0));
                    listB = fadeInFadeOutState.b();
                    size = listB.size();
                    while (i16 < size) {
                        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem9 = (FadeInFadeOutAnimationItem) listB.get(i16);
                        SnackbarData snackbarData11 = (SnackbarData) fadeInFadeOutAnimationItem9.a();
                        q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> qVarB9 = fadeInFadeOutAnimationItem9.b();
                        composerS.K(-208579897, snackbarData11);
                        qVarB9.invoke(ComposableLambdaKt.b(composerS, 2041982076, true, new SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(qVar, snackbarData11, i12)), composerS, 6);
                        composerS.P();
                    }
                }
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SnackbarHostKt$FadeInFadeOutWithScale$3(snackbarData, modifier4, qVar, i10, i11));
    }

    public static final long h(@NotNull SnackbarDuration snackbarDuration, boolean z6, @Nullable AccessibilityManager accessibilityManager) {
        long j6;
        t.j(snackbarDuration, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[snackbarDuration.ordinal()];
        if (i10 == 1) {
            j6 = Long.MAX_VALUE;
        } else if (i10 == 2) {
            j6 = WorkRequest.MIN_BACKOFF_MILLIS;
        } else {
            if (i10 != 3) {
                throw new s();
            }
            j6 = 4000;
        }
        long j10 = j6;
        return accessibilityManager == null ? j10 : accessibilityManager.a(j10, true, true, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<Float> f(AnimationSpec<Float> animationSpec, boolean z6, a<l0> aVar, Composer composer, int i10, int i11) {
        float f;
        composer.G(1016418159);
        if ((i11 & 4) != 0) {
            aVar = SnackbarHostKt$animatedOpacity$1.INSTANCE;
        }
        a<l0> aVar2 = aVar;
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            if (!z6) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            objH = AnimatableKt.b(f, 0.0f, 2, null);
            composer.z(objH);
        }
        composer.Q();
        Animatable animatable = (Animatable) objH;
        EffectsKt.d(Boolean.valueOf(z6), new SnackbarHostKt$animatedOpacity$2(animatable, z6, animationSpec, aVar2, null), composer, (i10 >> 3) & 14);
        State<Float> stateG = animatable.g();
        composer.Q();
        return stateG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<Float> g(AnimationSpec<Float> animationSpec, boolean z6, Composer composer, int i10) {
        float f;
        composer.G(2003504988);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            if (!z6) {
                f = 1.0f;
            } else {
                f = 0.8f;
            }
            objH = AnimatableKt.b(f, 0.0f, 2, null);
            composer.z(objH);
        }
        composer.Q();
        Animatable animatable = (Animatable) objH;
        EffectsKt.d(Boolean.valueOf(z6), new SnackbarHostKt$animatedScale$1(animatable, z6, animationSpec, null), composer, (i10 >> 3) & 14);
        State<Float> stateG = animatable.g();
        composer.Q();
        return stateG;
    }
}
