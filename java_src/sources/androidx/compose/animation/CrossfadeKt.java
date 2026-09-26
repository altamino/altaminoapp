package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.a0;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class CrossfadeKt {
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x0056  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:35:0x005f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x007a  */
    /* JADX WARN: Code duplicated, block: B:46:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    @Composable
    public static final <T> void b(T t5, @Nullable Modifier modifier, @Nullable FiniteAnimationSpec<Float> finiteAnimationSpec, @NotNull q<? super T, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        Modifier modifier2;
        FiniteAnimationSpec<Float> finiteAnimationSpecK;
        Modifier modifier3;
        FiniteAnimationSpec<Float> finiteAnimationSpec2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(523603005);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(t5) ? 4 : 2) | i10;
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
                i12 |= 128;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if (i13 != 4 && (i12 & 5851) == 1170 && composerS.b()) {
                composerS.g();
                finiteAnimationSpec2 = finiteAnimationSpec;
                modifier3 = modifier;
            } else {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecK = finiteAnimationSpec;
                }
                a(androidx.compose.animation.core.TransitionKt.e(t5, null, composerS, (i12 & 8) | (i12 & 14), 2), modifier2, finiteAnimationSpecK, null, content, composerS, (i12 & 112) | 512 | ((i12 << 3) & 57344), 4);
                modifier3 = modifier2;
                finiteAnimationSpec2 = finiteAnimationSpecK;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CrossfadeKt$Crossfade$1(t5, modifier3, finiteAnimationSpec2, content, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            i12 |= 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(content)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i12 |= i14;
        }
        if (i13 != 4) {
            if (i15 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i13 != 0) {
                finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
            } else {
                finiteAnimationSpecK = finiteAnimationSpec;
            }
            a(androidx.compose.animation.core.TransitionKt.e(t5, null, composerS, (i12 & 8) | (i12 & 14), 2), modifier2, finiteAnimationSpecK, null, content, composerS, (i12 & 112) | 512 | ((i12 << 3) & 57344), 4);
            modifier3 = modifier2;
            finiteAnimationSpec2 = finiteAnimationSpecK;
        } else {
            if (i15 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i13 != 0) {
                finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
            } else {
                finiteAnimationSpecK = finiteAnimationSpec;
            }
            a(androidx.compose.animation.core.TransitionKt.e(t5, null, composerS, (i12 & 8) | (i12 & 14), 2), modifier2, finiteAnimationSpecK, null, content, composerS, (i12 & 112) | 512 | ((i12 << 3) & 57344), 4);
            modifier3 = modifier2;
            finiteAnimationSpec2 = finiteAnimationSpecK;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CrossfadeKt$Crossfade$1(t5, modifier3, finiteAnimationSpec2, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x022b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0237  */
    /* JADX WARN: Code duplicated, block: B:105:0x023b  */
    /* JADX WARN: Code duplicated, block: B:108:0x0284  */
    /* JADX WARN: Code duplicated, block: B:112:0x0291  */
    /* JADX WARN: Code duplicated, block: B:114:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:119:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:121:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:124:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:131:0x0304  */
    /* JADX WARN: Code duplicated, block: B:133:0x0185 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x0186 A[EDGE_INSN: B:134:0x0186->B:93:0x0186 BREAK  A[LOOP:0: B:86:0x0163->B:91:0x0181], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x02de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code duplicated, block: B:31:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0061  */
    /* JADX WARN: Code duplicated, block: B:35:0x0069  */
    /* JADX WARN: Code duplicated, block: B:36:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x0077  */
    /* JADX WARN: Code duplicated, block: B:44:0x007d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x0086  */
    /* JADX WARN: Code duplicated, block: B:50:0x008c  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:73:0x0114  */
    /* JADX WARN: Code duplicated, block: B:79:0x0138  */
    /* JADX WARN: Code duplicated, block: B:81:0x013e  */
    /* JADX WARN: Code duplicated, block: B:85:0x015e  */
    /* JADX WARN: Code duplicated, block: B:88:0x016a  */
    /* JADX WARN: Code duplicated, block: B:91:0x0181 A[LOOP:0: B:86:0x0163->B:91:0x0181, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:94:0x0188  */
    /* JADX WARN: Code duplicated, block: B:95:0x0190  */
    /* JADX WARN: Code duplicated, block: B:98:0x01a1 A[LOOP:1: B:97:0x019f->B:98:0x01a1, LOOP_END] */
    @Composable
    @ExperimentalAnimationApi
    @ComposableInferredTarget
    public static final <T> void a(@NotNull Transition<T> transition, @Nullable Modifier modifier, @Nullable FiniteAnimationSpec<Float> finiteAnimationSpec, @Nullable l<? super T, ? extends Object> lVar, @NotNull q<? super T, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        int i14;
        l<? super T, ? extends Object> lVar2;
        int i15;
        int i16;
        int i17;
        Modifier modifier3;
        FiniteAnimationSpec<Float> finiteAnimationSpecK;
        Object objH;
        Composer.Companion companion;
        Object obj;
        SnapshotStateList snapshotStateList;
        Object objH2;
        Map map;
        Map map2;
        SnapshotStateList snapshotStateList2;
        l<? super T, ? extends Object> lVar3;
        int i18;
        a<ComposeUiNode> aVarA;
        int i19;
        int size;
        int i20;
        p pVar;
        l<? super T, ? extends Object> lVar4;
        l<? super T, ? extends Object> lVar5;
        FiniteAnimationSpec<Float> finiteAnimationSpec2;
        Iterator<T> it;
        int i21;
        int size2;
        int i22;
        boolean zK;
        Object objH3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(transition, "<this>");
        t.j(content, "content");
        Composer composerS = composer.s(679005231);
        if ((i11 & Integer.MIN_VALUE) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(transition) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i23 = i11 & 1;
        if (i23 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 2;
            if (i13 != 0) {
                i12 |= 128;
            }
            i14 = i11 & 4;
            if (i14 != 0) {
                if ((i10 & 7168) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i12 |= i15;
                }
                if ((i11 & 8) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i12;
                if (i13 != 2 && (46811 & i17) == 9362 && composerS.b()) {
                    composerS.g();
                    finiteAnimationSpec2 = finiteAnimationSpec;
                    lVar5 = lVar2;
                } else {
                    if (i23 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
                    } else {
                        finiteAnimationSpecK = finiteAnimationSpec;
                    }
                    if (i14 != 0) {
                        lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    obj = objH;
                    if (objH == companion.a()) {
                        SnapshotStateList snapshotStateListD = SnapshotStateKt.d();
                        snapshotStateListD.add(transition.g());
                        l0 l0Var = l0.INSTANCE;
                        composerS.z(snapshotStateListD);
                        obj = snapshotStateListD;
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) obj;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = new LinkedHashMap();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    map = (Map) objH2;
                    composerS.G(-1621449801);
                    if (t.e(transition.g(), transition.m()) && (snapshotStateList.size() != 1 || !t.e(snapshotStateList.get(0), transition.m()))) {
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK || objH3 == companion.a()) {
                            objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        a0.J(snapshotStateList, (l) objH3);
                        map.clear();
                    }
                    composerS.Q();
                    if (!map.containsKey(transition.m())) {
                        it = snapshotStateList.iterator();
                        i21 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i21 = -1;
                                break;
                            } else if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                                break;
                            } else {
                                i21++;
                            }
                        }
                        if (i21 == -1) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i21, transition.m());
                        }
                        map.clear();
                        size2 = snapshotStateList.size();
                        i22 = 0;
                        while (i22 < size2) {
                            T t5 = snapshotStateList.get(i22);
                            Map map3 = map;
                            map3.put(t5, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t5, content)));
                            i22++;
                            snapshotStateList = snapshotStateList;
                            map = map3;
                            lVar2 = lVar2;
                        }
                    }
                    map2 = map;
                    snapshotStateList2 = snapshotStateList;
                    lVar3 = lVar2;
                    i18 = (i17 >> 3) & 14;
                    composerS.G(-1990474327);
                    int i24 = i18 >> 3;
                    MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composerS, (i24 & 112) | (i24 & 14));
                    composerS.G(1376089335);
                    Density density = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    aVarA = companion2.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier3);
                    i19 = (((i18 << 3) & 112) << 9) & 7168;
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
                    Updater.e(composerA, measurePolicyH, companion2.d());
                    Updater.e(composerA, density, companion2.b());
                    Updater.e(composerA, layoutDirection, companion2.c());
                    composerS.o();
                    qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
                    composerS.G(2058660585);
                    composerS.G(-1253629305);
                    if ((((i19 >> 9) & 10) ^ 2) == 0 || !composerS.b()) {
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        composerS.G(1930908853);
                        if (((((i18 >> 6) & 112) | 6) & 81) == 16 || !composerS.b()) {
                            size = snapshotStateList2.size();
                            i20 = 0;
                            while (i20 < size) {
                                SnapshotStateList snapshotStateList3 = snapshotStateList2;
                                Object obj2 = snapshotStateList3.get(i20);
                                l<? super T, ? extends Object> lVar6 = lVar3;
                                composerS.K(-450541954, lVar6.invoke(obj2));
                                pVar = (p) map2.get(obj2);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var2 = l0.INSTANCE;
                                }
                                composerS.P();
                                i20++;
                                snapshotStateList2 = snapshotStateList3;
                                lVar3 = lVar6;
                            }
                        } else {
                            composerS.g();
                        }
                        lVar4 = lVar3;
                        composerS.Q();
                    } else {
                        composerS.g();
                        lVar4 = lVar3;
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    lVar5 = lVar4;
                    modifier2 = modifier3;
                    finiteAnimationSpec2 = finiteAnimationSpecK;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CrossfadeKt$Crossfade$6(transition, modifier2, finiteAnimationSpec2, lVar5, content, i10, i11));
            }
            i12 |= 3072;
            lVar2 = lVar;
            if ((i11 & 8) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i12;
            if (i13 != 2) {
                if (i23 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecK = finiteAnimationSpec;
                }
                if (i14 != 0) {
                    lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                obj = objH;
                if (objH == companion.a()) {
                    SnapshotStateList snapshotStateListD2 = SnapshotStateKt.d();
                    snapshotStateListD2.add(transition.g());
                    l0 l0Var3 = l0.INSTANCE;
                    composerS.z(snapshotStateListD2);
                    obj = snapshotStateListD2;
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) obj;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new LinkedHashMap();
                    composerS.z(objH2);
                }
                composerS.Q();
                map = (Map) objH2;
                composerS.G(-1621449801);
                if (t.e(transition.g(), transition.m())) {
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    } else {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    a0.J(snapshotStateList, (l) objH3);
                    map.clear();
                }
                composerS.Q();
                if (!map.containsKey(transition.m())) {
                    it = snapshotStateList.iterator();
                    i21 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i21 = -1;
                            break;
                        } else {
                            if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                                break;
                                break;
                            }
                            i21++;
                        }
                    }
                    if (i21 == -1) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i21, transition.m());
                    }
                    map.clear();
                    size2 = snapshotStateList.size();
                    i22 = 0;
                    while (i22 < size2) {
                        T t10 = snapshotStateList.get(i22);
                        Map map4 = map;
                        map4.put(t10, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t10, content)));
                        i22++;
                        snapshotStateList = snapshotStateList;
                        map = map4;
                        lVar2 = lVar2;
                    }
                }
                map2 = map;
                snapshotStateList2 = snapshotStateList;
                lVar3 = lVar2;
                i18 = (i17 >> 3) & 14;
                composerS.G(-1990474327);
                int i25 = i18 >> 3;
                MeasurePolicy measurePolicyH2 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i25 & 112) | (i25 & 14));
                composerS.G(1376089335);
                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                aVarA = companion3.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifier3);
                i19 = (((i18 << 3) & 112) << 9) & 7168;
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
                Updater.e(composerA2, measurePolicyH2, companion3.d());
                Updater.e(composerA2, density2, companion3.b());
                Updater.e(composerA2, layoutDirection2, companion3.c());
                composerS.o();
                qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-1253629305);
                if ((((i19 >> 9) & 10) ^ 2) == 0) {
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList4 = snapshotStateList2;
                            Object obj3 = snapshotStateList4.get(i20);
                            l<? super T, ? extends Object> lVar7 = lVar3;
                            composerS.K(-450541954, lVar7.invoke(obj3));
                            pVar = (p) map2.get(obj3);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var4 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList4;
                            lVar3 = lVar7;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList5 = snapshotStateList2;
                            Object obj4 = snapshotStateList5.get(i20);
                            l<? super T, ? extends Object> lVar8 = lVar3;
                            composerS.K(-450541954, lVar8.invoke(obj4));
                            pVar = (p) map2.get(obj4);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var5 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList5;
                            lVar3 = lVar8;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                } else {
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList6 = snapshotStateList2;
                            Object obj5 = snapshotStateList6.get(i20);
                            l<? super T, ? extends Object> lVar9 = lVar3;
                            composerS.K(-450541954, lVar9.invoke(obj5));
                            pVar = (p) map2.get(obj5);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var6 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList6;
                            lVar3 = lVar9;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList7 = snapshotStateList2;
                            Object obj6 = snapshotStateList7.get(i20);
                            l<? super T, ? extends Object> lVar10 = lVar3;
                            composerS.K(-450541954, lVar10.invoke(obj6));
                            pVar = (p) map2.get(obj6);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var7 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList7;
                            lVar3 = lVar10;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                lVar5 = lVar4;
                modifier2 = modifier3;
                finiteAnimationSpec2 = finiteAnimationSpecK;
            } else {
                if (i23 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecK = finiteAnimationSpec;
                }
                if (i14 != 0) {
                    lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                obj = objH;
                if (objH == companion.a()) {
                    SnapshotStateList snapshotStateListD3 = SnapshotStateKt.d();
                    snapshotStateListD3.add(transition.g());
                    l0 l0Var8 = l0.INSTANCE;
                    composerS.z(snapshotStateListD3);
                    obj = snapshotStateListD3;
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) obj;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new LinkedHashMap();
                    composerS.z(objH2);
                }
                composerS.Q();
                map = (Map) objH2;
                composerS.G(-1621449801);
                if (t.e(transition.g(), transition.m())) {
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    } else {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    a0.J(snapshotStateList, (l) objH3);
                    map.clear();
                }
                composerS.Q();
                if (!map.containsKey(transition.m())) {
                    it = snapshotStateList.iterator();
                    i21 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i21 = -1;
                            break;
                        } else {
                            if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                                break;
                                break;
                            }
                            i21++;
                        }
                    }
                    if (i21 == -1) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i21, transition.m());
                    }
                    map.clear();
                    size2 = snapshotStateList.size();
                    i22 = 0;
                    while (i22 < size2) {
                        T t11 = snapshotStateList.get(i22);
                        Map map5 = map;
                        map5.put(t11, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t11, content)));
                        i22++;
                        snapshotStateList = snapshotStateList;
                        map = map5;
                        lVar2 = lVar2;
                    }
                }
                map2 = map;
                snapshotStateList2 = snapshotStateList;
                lVar3 = lVar2;
                i18 = (i17 >> 3) & 14;
                composerS.G(-1990474327);
                int i26 = i18 >> 3;
                MeasurePolicy measurePolicyH3 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i26 & 112) | (i26 & 14));
                composerS.G(1376089335);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                aVarA = companion4.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifier3);
                i19 = (((i18 << 3) & 112) << 9) & 7168;
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
                Updater.e(composerA3, measurePolicyH3, companion4.d());
                Updater.e(composerA3, density3, companion4.b());
                Updater.e(composerA3, layoutDirection3, companion4.c());
                composerS.o();
                qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-1253629305);
                if ((((i19 >> 9) & 10) ^ 2) == 0) {
                    BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList8 = snapshotStateList2;
                            Object obj7 = snapshotStateList8.get(i20);
                            l<? super T, ? extends Object> lVar11 = lVar3;
                            composerS.K(-450541954, lVar11.invoke(obj7));
                            pVar = (p) map2.get(obj7);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var9 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList8;
                            lVar3 = lVar11;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList9 = snapshotStateList2;
                            Object obj8 = snapshotStateList9.get(i20);
                            l<? super T, ? extends Object> lVar12 = lVar3;
                            composerS.K(-450541954, lVar12.invoke(obj8));
                            pVar = (p) map2.get(obj8);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var10 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList9;
                            lVar3 = lVar12;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                } else {
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList10 = snapshotStateList2;
                            Object obj9 = snapshotStateList10.get(i20);
                            l<? super T, ? extends Object> lVar13 = lVar3;
                            composerS.K(-450541954, lVar13.invoke(obj9));
                            pVar = (p) map2.get(obj9);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var11 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList10;
                            lVar3 = lVar13;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList11 = snapshotStateList2;
                            Object obj10 = snapshotStateList11.get(i20);
                            l<? super T, ? extends Object> lVar14 = lVar3;
                            composerS.K(-450541954, lVar14.invoke(obj10));
                            pVar = (p) map2.get(obj10);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var12 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList11;
                            lVar3 = lVar14;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                lVar5 = lVar4;
                modifier2 = modifier3;
                finiteAnimationSpec2 = finiteAnimationSpecK;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CrossfadeKt$Crossfade$6(transition, modifier2, finiteAnimationSpec2, lVar5, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 2;
        if (i13 != 0) {
            i12 |= 128;
        }
        i14 = i11 & 4;
        if (i14 != 0) {
            if ((i10 & 7168) == 0) {
                lVar2 = lVar;
                if (composerS.k(lVar2)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            if ((i11 & 8) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i12;
            if (i13 != 2) {
                if (i23 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecK = finiteAnimationSpec;
                }
                if (i14 != 0) {
                    lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                obj = objH;
                if (objH == companion.a()) {
                    SnapshotStateList snapshotStateListD4 = SnapshotStateKt.d();
                    snapshotStateListD4.add(transition.g());
                    l0 l0Var13 = l0.INSTANCE;
                    composerS.z(snapshotStateListD4);
                    obj = snapshotStateListD4;
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) obj;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new LinkedHashMap();
                    composerS.z(objH2);
                }
                composerS.Q();
                map = (Map) objH2;
                composerS.G(-1621449801);
                if (t.e(transition.g(), transition.m())) {
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    } else {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    a0.J(snapshotStateList, (l) objH3);
                    map.clear();
                }
                composerS.Q();
                if (!map.containsKey(transition.m())) {
                    it = snapshotStateList.iterator();
                    i21 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i21 = -1;
                            break;
                        } else {
                            if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                                break;
                                break;
                            }
                            i21++;
                        }
                    }
                    if (i21 == -1) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i21, transition.m());
                    }
                    map.clear();
                    size2 = snapshotStateList.size();
                    i22 = 0;
                    while (i22 < size2) {
                        T t12 = snapshotStateList.get(i22);
                        Map map6 = map;
                        map6.put(t12, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t12, content)));
                        i22++;
                        snapshotStateList = snapshotStateList;
                        map = map6;
                        lVar2 = lVar2;
                    }
                }
                map2 = map;
                snapshotStateList2 = snapshotStateList;
                lVar3 = lVar2;
                i18 = (i17 >> 3) & 14;
                composerS.G(-1990474327);
                int i27 = i18 >> 3;
                MeasurePolicy measurePolicyH4 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i27 & 112) | (i27 & 14));
                composerS.G(1376089335);
                Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                aVarA = companion5.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifier3);
                i19 = (((i18 << 3) & 112) << 9) & 7168;
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
                Updater.e(composerA4, measurePolicyH4, companion5.d());
                Updater.e(composerA4, density4, companion5.b());
                Updater.e(composerA4, layoutDirection4, companion5.c());
                composerS.o();
                qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-1253629305);
                if ((((i19 >> 9) & 10) ^ 2) == 0) {
                    BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList12 = snapshotStateList2;
                            Object obj11 = snapshotStateList12.get(i20);
                            l<? super T, ? extends Object> lVar15 = lVar3;
                            composerS.K(-450541954, lVar15.invoke(obj11));
                            pVar = (p) map2.get(obj11);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var14 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList12;
                            lVar3 = lVar15;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList13 = snapshotStateList2;
                            Object obj12 = snapshotStateList13.get(i20);
                            l<? super T, ? extends Object> lVar16 = lVar3;
                            composerS.K(-450541954, lVar16.invoke(obj12));
                            pVar = (p) map2.get(obj12);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var15 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList13;
                            lVar3 = lVar16;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                } else {
                    BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList14 = snapshotStateList2;
                            Object obj13 = snapshotStateList14.get(i20);
                            l<? super T, ? extends Object> lVar17 = lVar3;
                            composerS.K(-450541954, lVar17.invoke(obj13));
                            pVar = (p) map2.get(obj13);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var16 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList14;
                            lVar3 = lVar17;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList15 = snapshotStateList2;
                            Object obj14 = snapshotStateList15.get(i20);
                            l<? super T, ? extends Object> lVar18 = lVar3;
                            composerS.K(-450541954, lVar18.invoke(obj14));
                            pVar = (p) map2.get(obj14);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var17 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList15;
                            lVar3 = lVar18;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                lVar5 = lVar4;
                modifier2 = modifier3;
                finiteAnimationSpec2 = finiteAnimationSpecK;
            } else {
                if (i23 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
                } else {
                    finiteAnimationSpecK = finiteAnimationSpec;
                }
                if (i14 != 0) {
                    lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                obj = objH;
                if (objH == companion.a()) {
                    SnapshotStateList snapshotStateListD5 = SnapshotStateKt.d();
                    snapshotStateListD5.add(transition.g());
                    l0 l0Var18 = l0.INSTANCE;
                    composerS.z(snapshotStateListD5);
                    obj = snapshotStateListD5;
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) obj;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new LinkedHashMap();
                    composerS.z(objH2);
                }
                composerS.Q();
                map = (Map) objH2;
                composerS.G(-1621449801);
                if (t.e(transition.g(), transition.m())) {
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    } else {
                        objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    a0.J(snapshotStateList, (l) objH3);
                    map.clear();
                }
                composerS.Q();
                if (!map.containsKey(transition.m())) {
                    it = snapshotStateList.iterator();
                    i21 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i21 = -1;
                            break;
                        } else {
                            if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                                break;
                                break;
                            }
                            i21++;
                        }
                    }
                    if (i21 == -1) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i21, transition.m());
                    }
                    map.clear();
                    size2 = snapshotStateList.size();
                    i22 = 0;
                    while (i22 < size2) {
                        T t13 = snapshotStateList.get(i22);
                        Map map7 = map;
                        map7.put(t13, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t13, content)));
                        i22++;
                        snapshotStateList = snapshotStateList;
                        map = map7;
                        lVar2 = lVar2;
                    }
                }
                map2 = map;
                snapshotStateList2 = snapshotStateList;
                lVar3 = lVar2;
                i18 = (i17 >> 3) & 14;
                composerS.G(-1990474327);
                int i28 = i18 >> 3;
                MeasurePolicy measurePolicyH5 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i28 & 112) | (i28 & 14));
                composerS.G(1376089335);
                Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                aVarA = companion6.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifier3);
                i19 = (((i18 << 3) & 112) << 9) & 7168;
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
                Updater.e(composerA5, measurePolicyH5, companion6.d());
                Updater.e(composerA5, density5, companion6.b());
                Updater.e(composerA5, layoutDirection5, companion6.c());
                composerS.o();
                qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-1253629305);
                if ((((i19 >> 9) & 10) ^ 2) == 0) {
                    BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList16 = snapshotStateList2;
                            Object obj15 = snapshotStateList16.get(i20);
                            l<? super T, ? extends Object> lVar19 = lVar3;
                            composerS.K(-450541954, lVar19.invoke(obj15));
                            pVar = (p) map2.get(obj15);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var19 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList16;
                            lVar3 = lVar19;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList17 = snapshotStateList2;
                            Object obj16 = snapshotStateList17.get(i20);
                            l<? super T, ? extends Object> lVar110 = lVar3;
                            composerS.K(-450541954, lVar110.invoke(obj16));
                            pVar = (p) map2.get(obj16);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var110 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList17;
                            lVar3 = lVar110;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                } else {
                    BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                    composerS.G(1930908853);
                    if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList18 = snapshotStateList2;
                            Object obj17 = snapshotStateList18.get(i20);
                            l<? super T, ? extends Object> lVar111 = lVar3;
                            composerS.K(-450541954, lVar111.invoke(obj17));
                            pVar = (p) map2.get(obj17);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var111 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList18;
                            lVar3 = lVar111;
                        }
                    } else {
                        size = snapshotStateList2.size();
                        i20 = 0;
                        while (i20 < size) {
                            SnapshotStateList snapshotStateList19 = snapshotStateList2;
                            Object obj18 = snapshotStateList19.get(i20);
                            l<? super T, ? extends Object> lVar112 = lVar3;
                            composerS.K(-450541954, lVar112.invoke(obj18));
                            pVar = (p) map2.get(obj18);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var112 = l0.INSTANCE;
                            }
                            composerS.P();
                            i20++;
                            snapshotStateList2 = snapshotStateList19;
                            lVar3 = lVar112;
                        }
                    }
                    lVar4 = lVar3;
                    composerS.Q();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                lVar5 = lVar4;
                modifier2 = modifier3;
                finiteAnimationSpec2 = finiteAnimationSpecK;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CrossfadeKt$Crossfade$6(transition, modifier2, finiteAnimationSpec2, lVar5, content, i10, i11));
        }
        i12 |= 3072;
        lVar2 = lVar;
        if ((i11 & 8) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.k(content)) {
                i16 = 16384;
            } else {
                i16 = 8192;
            }
            i12 |= i16;
        }
        i17 = i12;
        if (i13 != 2) {
            if (i23 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
            } else {
                finiteAnimationSpecK = finiteAnimationSpec;
            }
            if (i14 != 0) {
                lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            obj = objH;
            if (objH == companion.a()) {
                SnapshotStateList snapshotStateListD6 = SnapshotStateKt.d();
                snapshotStateListD6.add(transition.g());
                l0 l0Var113 = l0.INSTANCE;
                composerS.z(snapshotStateListD6);
                obj = snapshotStateListD6;
            }
            composerS.Q();
            snapshotStateList = (SnapshotStateList) obj;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new LinkedHashMap();
                composerS.z(objH2);
            }
            composerS.Q();
            map = (Map) objH2;
            composerS.G(-1621449801);
            if (t.e(transition.g(), transition.m())) {
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                    composerS.z(objH3);
                } else {
                    objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                    composerS.z(objH3);
                }
                composerS.Q();
                a0.J(snapshotStateList, (l) objH3);
                map.clear();
            }
            composerS.Q();
            if (!map.containsKey(transition.m())) {
                it = snapshotStateList.iterator();
                i21 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i21 = -1;
                        break;
                    } else {
                        if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                            break;
                            break;
                        }
                        i21++;
                    }
                }
                if (i21 == -1) {
                    snapshotStateList.add(transition.m());
                } else {
                    snapshotStateList.set(i21, transition.m());
                }
                map.clear();
                size2 = snapshotStateList.size();
                i22 = 0;
                while (i22 < size2) {
                    T t14 = snapshotStateList.get(i22);
                    Map map8 = map;
                    map8.put(t14, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t14, content)));
                    i22++;
                    snapshotStateList = snapshotStateList;
                    map = map8;
                    lVar2 = lVar2;
                }
            }
            map2 = map;
            snapshotStateList2 = snapshotStateList;
            lVar3 = lVar2;
            i18 = (i17 >> 3) & 14;
            composerS.G(-1990474327);
            int i29 = i18 >> 3;
            MeasurePolicy measurePolicyH6 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i29 & 112) | (i29 & 14));
            composerS.G(1376089335);
            Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
            aVarA = companion7.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifier3);
            i19 = (((i18 << 3) & 112) << 9) & 7168;
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
            Updater.e(composerA6, measurePolicyH6, companion7.d());
            Updater.e(composerA6, density6, companion7.b());
            Updater.e(composerA6, layoutDirection6, companion7.c());
            composerS.o();
            qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(-1253629305);
            if ((((i19 >> 9) & 10) ^ 2) == 0) {
                BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                composerS.G(1930908853);
                if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList110 = snapshotStateList2;
                        Object obj19 = snapshotStateList110.get(i20);
                        l<? super T, ? extends Object> lVar113 = lVar3;
                        composerS.K(-450541954, lVar113.invoke(obj19));
                        pVar = (p) map2.get(obj19);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var114 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList110;
                        lVar3 = lVar113;
                    }
                } else {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList111 = snapshotStateList2;
                        Object obj110 = snapshotStateList111.get(i20);
                        l<? super T, ? extends Object> lVar114 = lVar3;
                        composerS.K(-450541954, lVar114.invoke(obj110));
                        pVar = (p) map2.get(obj110);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var115 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList111;
                        lVar3 = lVar114;
                    }
                }
                lVar4 = lVar3;
                composerS.Q();
            } else {
                BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                composerS.G(1930908853);
                if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList112 = snapshotStateList2;
                        Object obj111 = snapshotStateList112.get(i20);
                        l<? super T, ? extends Object> lVar115 = lVar3;
                        composerS.K(-450541954, lVar115.invoke(obj111));
                        pVar = (p) map2.get(obj111);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var116 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList112;
                        lVar3 = lVar115;
                    }
                } else {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList113 = snapshotStateList2;
                        Object obj112 = snapshotStateList113.get(i20);
                        l<? super T, ? extends Object> lVar116 = lVar3;
                        composerS.K(-450541954, lVar116.invoke(obj112));
                        pVar = (p) map2.get(obj112);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var117 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList113;
                        lVar3 = lVar116;
                    }
                }
                lVar4 = lVar3;
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            lVar5 = lVar4;
            modifier2 = modifier3;
            finiteAnimationSpec2 = finiteAnimationSpecK;
        } else {
            if (i23 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                finiteAnimationSpecK = AnimationSpecKt.k(0, 0, null, 7, null);
            } else {
                finiteAnimationSpecK = finiteAnimationSpec;
            }
            if (i14 != 0) {
                lVar2 = CrossfadeKt$Crossfade$2.INSTANCE;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            obj = objH;
            if (objH == companion.a()) {
                SnapshotStateList snapshotStateListD7 = SnapshotStateKt.d();
                snapshotStateListD7.add(transition.g());
                l0 l0Var118 = l0.INSTANCE;
                composerS.z(snapshotStateListD7);
                obj = snapshotStateListD7;
            }
            composerS.Q();
            snapshotStateList = (SnapshotStateList) obj;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new LinkedHashMap();
                composerS.z(objH2);
            }
            composerS.Q();
            map = (Map) objH2;
            composerS.G(-1621449801);
            if (t.e(transition.g(), transition.m())) {
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                    composerS.z(objH3);
                } else {
                    objH3 = new CrossfadeKt$Crossfade$3$1(transition);
                    composerS.z(objH3);
                }
                composerS.Q();
                a0.J(snapshotStateList, (l) objH3);
                map.clear();
            }
            composerS.Q();
            if (!map.containsKey(transition.m())) {
                it = snapshotStateList.iterator();
                i21 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i21 = -1;
                        break;
                    } else {
                        if (t.e(lVar2.invoke(it.next()), lVar2.invoke(transition.m()))) {
                            break;
                            break;
                        }
                        i21++;
                    }
                }
                if (i21 == -1) {
                    snapshotStateList.add(transition.m());
                } else {
                    snapshotStateList.set(i21, transition.m());
                }
                map.clear();
                size2 = snapshotStateList.size();
                i22 = 0;
                while (i22 < size2) {
                    T t15 = snapshotStateList.get(i22);
                    Map map9 = map;
                    map9.put(t15, ComposableLambdaKt.b(composerS, -1426421288, true, new CrossfadeKt$Crossfade$4$1(transition, i17, finiteAnimationSpecK, t15, content)));
                    i22++;
                    snapshotStateList = snapshotStateList;
                    map = map9;
                    lVar2 = lVar2;
                }
            }
            map2 = map;
            snapshotStateList2 = snapshotStateList;
            lVar3 = lVar2;
            i18 = (i17 >> 3) & 14;
            composerS.G(-1990474327);
            int i210 = i18 >> 3;
            MeasurePolicy measurePolicyH7 = BoxKt.h(Alignment.Companion.o(), false, composerS, (i210 & 112) | (i210 & 14));
            composerS.G(1376089335);
            Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
            aVarA = companion8.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifier3);
            i19 = (((i18 << 3) & 112) << 9) & 7168;
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
            Updater.e(composerA7, measurePolicyH7, companion8.d());
            Updater.e(composerA7, density7, companion8.b());
            Updater.e(composerA7, layoutDirection7, companion8.c());
            composerS.o();
            qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(-1253629305);
            if ((((i19 >> 9) & 10) ^ 2) == 0) {
                BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                composerS.G(1930908853);
                if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList114 = snapshotStateList2;
                        Object obj113 = snapshotStateList114.get(i20);
                        l<? super T, ? extends Object> lVar117 = lVar3;
                        composerS.K(-450541954, lVar117.invoke(obj113));
                        pVar = (p) map2.get(obj113);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var119 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList114;
                        lVar3 = lVar117;
                    }
                } else {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList115 = snapshotStateList2;
                        Object obj114 = snapshotStateList115.get(i20);
                        l<? super T, ? extends Object> lVar118 = lVar3;
                        composerS.K(-450541954, lVar118.invoke(obj114));
                        pVar = (p) map2.get(obj114);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var1110 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList115;
                        lVar3 = lVar118;
                    }
                }
                lVar4 = lVar3;
                composerS.Q();
            } else {
                BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                composerS.G(1930908853);
                if (((((i18 >> 6) & 112) | 6) & 81) == 16) {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList116 = snapshotStateList2;
                        Object obj115 = snapshotStateList116.get(i20);
                        l<? super T, ? extends Object> lVar119 = lVar3;
                        composerS.K(-450541954, lVar119.invoke(obj115));
                        pVar = (p) map2.get(obj115);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var1111 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList116;
                        lVar3 = lVar119;
                    }
                } else {
                    size = snapshotStateList2.size();
                    i20 = 0;
                    while (i20 < size) {
                        SnapshotStateList snapshotStateList117 = snapshotStateList2;
                        Object obj116 = snapshotStateList117.get(i20);
                        l<? super T, ? extends Object> lVar1110 = lVar3;
                        composerS.K(-450541954, lVar1110.invoke(obj116));
                        pVar = (p) map2.get(obj116);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var1112 = l0.INSTANCE;
                        }
                        composerS.P();
                        i20++;
                        snapshotStateList2 = snapshotStateList117;
                        lVar3 = lVar1110;
                    }
                }
                lVar4 = lVar3;
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            lVar5 = lVar4;
            modifier2 = modifier3;
            finiteAnimationSpec2 = finiteAnimationSpecK;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CrossfadeKt$Crossfade$6(transition, modifier2, finiteAnimationSpec2, lVar5, content, i10, i11));
    }
}
