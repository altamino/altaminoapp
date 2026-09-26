package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import e8.r;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatedContentKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0179  */
    /* JADX WARN: Code duplicated, block: B:103:0x017f  */
    /* JADX WARN: Code duplicated, block: B:105:0x018e  */
    /* JADX WARN: Code duplicated, block: B:108:0x019e  */
    /* JADX WARN: Code duplicated, block: B:110:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:114:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:119:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:122:0x01ec A[LOOP:0: B:117:0x01ce->B:122:0x01ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:125:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:126:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:129:0x020d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0217 A[LOOP:1: B:130:0x0215->B:131:0x0217, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:134:0x027f  */
    /* JADX WARN: Code duplicated, block: B:136:0x0287  */
    /* JADX WARN: Code duplicated, block: B:139:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:142:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:145:0x0301  */
    /* JADX WARN: Code duplicated, block: B:146:0x0305  */
    /* JADX WARN: Code duplicated, block: B:150:0x0353  */
    /* JADX WARN: Code duplicated, block: B:153:0x036a  */
    /* JADX WARN: Code duplicated, block: B:159:0x038f  */
    /* JADX WARN: Code duplicated, block: B:161:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x0373 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:78:0x00db  */
    /* JADX WARN: Code duplicated, block: B:79:0x00df  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:86:0x0108  */
    /* JADX WARN: Code duplicated, block: B:88:0x0110  */
    /* JADX WARN: Code duplicated, block: B:91:0x012d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0135  */
    /* JADX WARN: Code duplicated, block: B:96:0x0156  */
    /* JADX WARN: Code duplicated, block: B:98:0x015e  */
    @Composable
    @ExperimentalAnimationApi
    @ComposableInferredTarget
    public static final <S> void a(@NotNull Transition<S> transition, @Nullable Modifier modifier, @Nullable l<? super AnimatedContentScope<S>, ContentTransform> lVar, @Nullable Alignment alignment, @Nullable l<? super S, ? extends Object> lVar2, @NotNull r<? super AnimatedVisibilityScope, ? super S, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        l<? super AnimatedContentScope<S>, ContentTransform> lVar3;
        int i14;
        int i15;
        Alignment alignmentO;
        int i16;
        int i17;
        l<? super S, ? extends Object> lVar4;
        int i18;
        int i19;
        int i20;
        Modifier modifier3;
        l<? super AnimatedContentScope<S>, ContentTransform> lVar5;
        LayoutDirection layoutDirection;
        boolean zK;
        Object objH;
        AnimatedContentScope animatedContentScope;
        boolean zK2;
        Object objH2;
        SnapshotStateList snapshotStateList;
        boolean zK3;
        Object objH3;
        Map map;
        Map map2;
        AnimatedContentScope animatedContentScope2;
        boolean zK4;
        ContentTransform contentTransformH;
        Object objH4;
        a<ComposeUiNode> aVarA;
        l<? super S, ? extends Object> lVar6;
        l<? super AnimatedContentScope<S>, ContentTransform> lVar7;
        Alignment alignment2;
        p pVar;
        int size;
        int i21;
        Iterator<T> it;
        int i22;
        int i23;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(transition, "<this>");
        t.j(content, "content");
        Composer composerS = composer.s(-114689412);
        if ((i11 & Integer.MIN_VALUE) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(transition) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i24 = i11 & 1;
        if (i24 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 2;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    lVar3 = lVar;
                    if (composerS.k(lVar3)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 4;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        alignmentO = alignment;
                        if (composerS.k(alignmentO)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 8;
                    if (i17 != 0) {
                        if ((57344 & i10) == 0) {
                            lVar4 = lVar2;
                            if (composerS.k(lVar4)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 16) != 0) {
                            if ((458752 & i10) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 131072;
                                } else {
                                    i19 = 65536;
                                }
                            }
                            i20 = i12;
                            if ((374491 & i20) == 74898 || !composerS.b()) {
                                if (i24 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if (i13 != 0) {
                                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                                } else {
                                    lVar5 = lVar3;
                                }
                                if (i15 != 0) {
                                    alignmentO = Alignment.Companion.o();
                                }
                                if (i17 != 0) {
                                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                                }
                                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                                composerS.G(1157296644);
                                zK = composerS.k(transition);
                                objH = composerS.H();
                                if (zK || objH == Composer.Companion.a()) {
                                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                animatedContentScope = (AnimatedContentScope) objH;
                                composerS.G(1157296644);
                                zK2 = composerS.k(transition);
                                objH2 = composerS.H();
                                if (zK2 || objH2 == Composer.Companion.a()) {
                                    objH2 = SnapshotStateKt.e(transition.g());
                                    composerS.z(objH2);
                                }
                                composerS.Q();
                                snapshotStateList = (SnapshotStateList) objH2;
                                composerS.G(1157296644);
                                zK3 = composerS.k(transition);
                                objH3 = composerS.H();
                                if (zK3 || objH3 == Composer.Companion.a()) {
                                    objH3 = new LinkedHashMap();
                                    composerS.z(objH3);
                                }
                                composerS.Q();
                                map = (Map) objH3;
                                if (t.e(transition.g(), transition.m())) {
                                    if (snapshotStateList.size() == 1 || !t.e(snapshotStateList.get(0), transition.g())) {
                                        snapshotStateList.clear();
                                        snapshotStateList.add(transition.g());
                                    }
                                    if (map.size() == 1 || map.containsKey(transition.g())) {
                                        map.clear();
                                    }
                                    animatedContentScope.p(alignmentO);
                                    animatedContentScope.q(layoutDirection);
                                }
                                if (!t.e(transition.g(), transition.m()) && !snapshotStateList.contains(transition.m())) {
                                    it = snapshotStateList.iterator();
                                    i22 = 0;
                                    while (true) {
                                        if (!it.hasNext()) {
                                            i23 = -1;
                                            i22 = -1;
                                            break;
                                        } else {
                                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                                i23 = -1;
                                                break;
                                            }
                                            i22++;
                                        }
                                    }
                                    if (i22 == i23) {
                                        snapshotStateList.add(transition.m());
                                    } else {
                                        snapshotStateList.set(i22, transition.m());
                                    }
                                }
                                if (!map.containsKey(transition.m())) {
                                    map.clear();
                                    size = snapshotStateList.size();
                                    i21 = 0;
                                    while (i21 < size) {
                                        T t5 = snapshotStateList.get(i21);
                                        Map map3 = map;
                                        SnapshotStateList snapshotStateList2 = snapshotStateList;
                                        map3.put(t5, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t5, i20, lVar5, animatedContentScope, content, snapshotStateList2)));
                                        i21++;
                                        map = map3;
                                        snapshotStateList = snapshotStateList2;
                                        size = size;
                                        alignmentO = alignmentO;
                                        animatedContentScope = animatedContentScope;
                                    }
                                }
                                map2 = map;
                                SnapshotStateList snapshotStateList3 = snapshotStateList;
                                Alignment alignment3 = alignmentO;
                                animatedContentScope2 = animatedContentScope;
                                Transition.Segment<S> segmentK = transition.k();
                                composerS.G(511388516);
                                zK4 = composerS.k(segmentK) | composerS.k(animatedContentScope2);
                                contentTransformH = composerS.H();
                                if (zK4 || contentTransformH == Composer.Companion.a()) {
                                    contentTransformH = lVar5.invoke(animatedContentScope2);
                                    composerS.z(contentTransformH);
                                }
                                composerS.Q();
                                Modifier modifierB = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                                composerS.G(-492369756);
                                objH4 = composerS.H();
                                if (objH4 == Composer.Companion.a()) {
                                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                    composerS.z(objH4);
                                }
                                composerS.Q();
                                AnimatedContentMeasurePolicy animatedContentMeasurePolicy = (AnimatedContentMeasurePolicy) objH4;
                                composerS.G(-1323940314);
                                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                                LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                aVarA = companion.a();
                                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
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
                                Updater.e(composerA, animatedContentMeasurePolicy, companion.d());
                                Updater.e(composerA, density, companion.b());
                                Updater.e(composerA, layoutDirection2, companion.c());
                                Updater.e(composerA, viewConfiguration, companion.f());
                                composerS.o();
                                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                                composerS.G(2058660585);
                                composerS.G(-451584589);
                                for (Object obj : snapshotStateList3) {
                                    composerS.K(-1739565921, lVar4.invoke(obj));
                                    pVar = (p) map2.get(obj);
                                    if (pVar != null) {
                                        pVar.invoke(composerS, 0);
                                        l0 l0Var = l0.INSTANCE;
                                    }
                                    composerS.P();
                                }
                                composerS.Q();
                                composerS.Q();
                                composerS.d();
                                composerS.Q();
                                lVar6 = lVar4;
                                modifier2 = modifier3;
                                lVar7 = lVar5;
                                alignment2 = alignment3;
                            } else {
                                composerS.g();
                                lVar7 = lVar3;
                                alignment2 = alignmentO;
                                lVar6 = lVar4;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                        }
                        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i12 |= i19;
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t10 = snapshotStateList.get(i21);
                                    Map map4 = map;
                                    SnapshotStateList snapshotStateList4 = snapshotStateList;
                                    map4.put(t10, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t10, i20, lVar5, animatedContentScope, content, snapshotStateList4)));
                                    i21++;
                                    map = map4;
                                    snapshotStateList = snapshotStateList4;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList5 = snapshotStateList;
                            Alignment alignment4 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK2 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK2) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB2 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy2 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                            aVarA = companion2.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB2);
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
                            Updater.e(composerA2, animatedContentMeasurePolicy2, companion2.d());
                            Updater.e(composerA2, density2, companion2.b());
                            Updater.e(composerA2, layoutDirection3, companion2.c());
                            Updater.e(composerA2, viewConfiguration2, companion2.f());
                            composerS.o();
                            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var2 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment4;
                        } else {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t11 = snapshotStateList.get(i21);
                                    Map map5 = map;
                                    SnapshotStateList snapshotStateList6 = snapshotStateList;
                                    map5.put(t11, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11, i20, lVar5, animatedContentScope, content, snapshotStateList6)));
                                    i21++;
                                    map = map5;
                                    snapshotStateList = snapshotStateList6;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList7 = snapshotStateList;
                            Alignment alignment5 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK3 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK3) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB3 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy3 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                            aVarA = companion3.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB3);
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
                            Updater.e(composerA3, animatedContentMeasurePolicy3, companion3.d());
                            Updater.e(composerA3, density3, companion3.b());
                            Updater.e(composerA3, layoutDirection4, companion3.c());
                            Updater.e(composerA3, viewConfiguration3, companion3.f());
                            composerS.o();
                            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var3 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment5;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    lVar4 = lVar2;
                    if ((i11 & 16) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t12 = snapshotStateList.get(i21);
                                    Map map6 = map;
                                    SnapshotStateList snapshotStateList8 = snapshotStateList;
                                    map6.put(t12, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t12, i20, lVar5, animatedContentScope, content, snapshotStateList8)));
                                    i21++;
                                    map = map6;
                                    snapshotStateList = snapshotStateList8;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList9 = snapshotStateList;
                            Alignment alignment6 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK4 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK4) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB4 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy4 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                            aVarA = companion4.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierB4);
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
                            Updater.e(composerA4, animatedContentMeasurePolicy4, companion4.d());
                            Updater.e(composerA4, density4, companion4.b());
                            Updater.e(composerA4, layoutDirection5, companion4.c());
                            Updater.e(composerA4, viewConfiguration4, companion4.f());
                            composerS.o();
                            qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var4 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment6;
                        } else {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t13 = snapshotStateList.get(i21);
                                    Map map7 = map;
                                    SnapshotStateList snapshotStateList10 = snapshotStateList;
                                    map7.put(t13, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t13, i20, lVar5, animatedContentScope, content, snapshotStateList10)));
                                    i21++;
                                    map = map7;
                                    snapshotStateList = snapshotStateList10;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList11 = snapshotStateList;
                            Alignment alignment7 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK5 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK5) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB5 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy5 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                            aVarA = companion5.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierB5);
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
                            Updater.e(composerA5, animatedContentMeasurePolicy5, companion5.d());
                            Updater.e(composerA5, density5, companion5.b());
                            Updater.e(composerA5, layoutDirection6, companion5.c());
                            Updater.e(composerA5, viewConfiguration5, companion5.f());
                            composerS.o();
                            qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var5 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment7;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t14 = snapshotStateList.get(i21);
                                Map map8 = map;
                                SnapshotStateList snapshotStateList12 = snapshotStateList;
                                map8.put(t14, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t14, i20, lVar5, animatedContentScope, content, snapshotStateList12)));
                                i21++;
                                map = map8;
                                snapshotStateList = snapshotStateList12;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList13 = snapshotStateList;
                        Alignment alignment8 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK6 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK6) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB6 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy6 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                        aVarA = companion6.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierB6);
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
                        Updater.e(composerA6, animatedContentMeasurePolicy6, companion6.d());
                        Updater.e(composerA6, density6, companion6.b());
                        Updater.e(composerA6, layoutDirection7, companion6.c());
                        Updater.e(composerA6, viewConfiguration6, companion6.f());
                        composerS.o();
                        qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var6 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment8;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t15 = snapshotStateList.get(i21);
                                Map map9 = map;
                                SnapshotStateList snapshotStateList14 = snapshotStateList;
                                map9.put(t15, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t15, i20, lVar5, animatedContentScope, content, snapshotStateList14)));
                                i21++;
                                map = map9;
                                snapshotStateList = snapshotStateList14;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList15 = snapshotStateList;
                        Alignment alignment9 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK7 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK7) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB7 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy7 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                        aVarA = companion7.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierB7);
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
                        Updater.e(composerA7, animatedContentMeasurePolicy7, companion7.d());
                        Updater.e(composerA7, density7, companion7.b());
                        Updater.e(composerA7, layoutDirection8, companion7.c());
                        Updater.e(composerA7, viewConfiguration7, companion7.f());
                        composerS.o();
                        qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var7 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment9;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i12 |= 3072;
                alignmentO = alignment;
                i17 = i11 & 8;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        lVar4 = lVar2;
                        if (composerS.k(lVar4)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 16) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t16 = snapshotStateList.get(i21);
                                    Map map10 = map;
                                    SnapshotStateList snapshotStateList16 = snapshotStateList;
                                    map10.put(t16, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t16, i20, lVar5, animatedContentScope, content, snapshotStateList16)));
                                    i21++;
                                    map = map10;
                                    snapshotStateList = snapshotStateList16;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList17 = snapshotStateList;
                            Alignment alignment10 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK8 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK8) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB8 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy8 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                            aVarA = companion8.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierB8);
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
                            Updater.e(composerA8, animatedContentMeasurePolicy8, companion8.d());
                            Updater.e(composerA8, density8, companion8.b());
                            Updater.e(composerA8, layoutDirection9, companion8.c());
                            Updater.e(composerA8, viewConfiguration8, companion8.f());
                            composerS.o();
                            qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var8 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment10;
                        } else {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t17 = snapshotStateList.get(i21);
                                    Map map11 = map;
                                    SnapshotStateList snapshotStateList18 = snapshotStateList;
                                    map11.put(t17, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t17, i20, lVar5, animatedContentScope, content, snapshotStateList18)));
                                    i21++;
                                    map = map11;
                                    snapshotStateList = snapshotStateList18;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList19 = snapshotStateList;
                            Alignment alignment11 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK9 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK9) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB9 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy9 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                            aVarA = companion9.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierB9);
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
                            Updater.e(composerA9, animatedContentMeasurePolicy9, companion9.d());
                            Updater.e(composerA9, density9, companion9.b());
                            Updater.e(composerA9, layoutDirection10, companion9.c());
                            Updater.e(composerA9, viewConfiguration9, companion9.f());
                            composerS.o();
                            qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var9 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment11;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t18 = snapshotStateList.get(i21);
                                Map map12 = map;
                                SnapshotStateList snapshotStateList110 = snapshotStateList;
                                map12.put(t18, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t18, i20, lVar5, animatedContentScope, content, snapshotStateList110)));
                                i21++;
                                map = map12;
                                snapshotStateList = snapshotStateList110;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList111 = snapshotStateList;
                        Alignment alignment12 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK10 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK10) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB10 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy10 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                        aVarA = companion10.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierB10);
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
                        Updater.e(composerA10, animatedContentMeasurePolicy10, companion10.d());
                        Updater.e(composerA10, density10, companion10.b());
                        Updater.e(composerA10, layoutDirection11, companion10.c());
                        Updater.e(composerA10, viewConfiguration10, companion10.f());
                        composerS.o();
                        qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var10 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment12;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t19 = snapshotStateList.get(i21);
                                Map map13 = map;
                                SnapshotStateList snapshotStateList112 = snapshotStateList;
                                map13.put(t19, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t19, i20, lVar5, animatedContentScope, content, snapshotStateList112)));
                                i21++;
                                map = map13;
                                snapshotStateList = snapshotStateList112;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList113 = snapshotStateList;
                        Alignment alignment13 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK11 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK11) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB11 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy11 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                        aVarA = companion11.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierB11);
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
                        Updater.e(composerA11, animatedContentMeasurePolicy11, companion11.d());
                        Updater.e(composerA11, density11, companion11.b());
                        Updater.e(composerA11, layoutDirection12, companion11.c());
                        Updater.e(composerA11, viewConfiguration11, companion11.f());
                        composerS.o();
                        qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var11 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                lVar4 = lVar2;
                if ((i11 & 16) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t110 = snapshotStateList.get(i21);
                                Map map14 = map;
                                SnapshotStateList snapshotStateList114 = snapshotStateList;
                                map14.put(t110, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t110, i20, lVar5, animatedContentScope, content, snapshotStateList114)));
                                i21++;
                                map = map14;
                                snapshotStateList = snapshotStateList114;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList115 = snapshotStateList;
                        Alignment alignment14 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK12 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK12) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB12 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy12 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                        aVarA = companion12.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierB12);
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
                        Updater.e(composerA12, animatedContentMeasurePolicy12, companion12.d());
                        Updater.e(composerA12, density12, companion12.b());
                        Updater.e(composerA12, layoutDirection13, companion12.c());
                        Updater.e(composerA12, viewConfiguration12, companion12.f());
                        composerS.o();
                        qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var12 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment14;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t111 = snapshotStateList.get(i21);
                                Map map15 = map;
                                SnapshotStateList snapshotStateList116 = snapshotStateList;
                                map15.put(t111, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111, i20, lVar5, animatedContentScope, content, snapshotStateList116)));
                                i21++;
                                map = map15;
                                snapshotStateList = snapshotStateList116;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList117 = snapshotStateList;
                        Alignment alignment15 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK13 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK13) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB13 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy13 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                        aVarA = companion13.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierB13);
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
                        Updater.e(composerA13, animatedContentMeasurePolicy13, companion13.d());
                        Updater.e(composerA13, density13, companion13.b());
                        Updater.e(composerA13, layoutDirection14, companion13.c());
                        Updater.e(composerA13, viewConfiguration13, companion13.f());
                        composerS.o();
                        qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var13 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment15;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t112 = snapshotStateList.get(i21);
                            Map map16 = map;
                            SnapshotStateList snapshotStateList118 = snapshotStateList;
                            map16.put(t112, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t112, i20, lVar5, animatedContentScope, content, snapshotStateList118)));
                            i21++;
                            map = map16;
                            snapshotStateList = snapshotStateList118;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList119 = snapshotStateList;
                    Alignment alignment16 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK14 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK14) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB14 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy14 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                    aVarA = companion14.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierB14);
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
                    Updater.e(composerA14, animatedContentMeasurePolicy14, companion14.d());
                    Updater.e(composerA14, density14, companion14.b());
                    Updater.e(composerA14, layoutDirection15, companion14.c());
                    Updater.e(composerA14, viewConfiguration14, companion14.f());
                    composerS.o();
                    qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var14 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment16;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t113 = snapshotStateList.get(i21);
                            Map map17 = map;
                            SnapshotStateList snapshotStateList1110 = snapshotStateList;
                            map17.put(t113, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t113, i20, lVar5, animatedContentScope, content, snapshotStateList1110)));
                            i21++;
                            map = map17;
                            snapshotStateList = snapshotStateList1110;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList1111 = snapshotStateList;
                    Alignment alignment17 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK15 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK15) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB15 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy15 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                    aVarA = companion15.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierB15);
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
                    Updater.e(composerA15, animatedContentMeasurePolicy15, companion15.d());
                    Updater.e(composerA15, density15, companion15.b());
                    Updater.e(composerA15, layoutDirection16, companion15.c());
                    Updater.e(composerA15, viewConfiguration15, companion15.f());
                    composerS.o();
                    qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var15 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment17;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i12 |= 384;
            lVar3 = lVar;
            i15 = i11 & 4;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    alignmentO = alignment;
                    if (composerS.k(alignmentO)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 8;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        lVar4 = lVar2;
                        if (composerS.k(lVar4)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 16) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t114 = snapshotStateList.get(i21);
                                    Map map18 = map;
                                    SnapshotStateList snapshotStateList1112 = snapshotStateList;
                                    map18.put(t114, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t114, i20, lVar5, animatedContentScope, content, snapshotStateList1112)));
                                    i21++;
                                    map = map18;
                                    snapshotStateList = snapshotStateList1112;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList1113 = snapshotStateList;
                            Alignment alignment18 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK16 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK16) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB16 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy16 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection17 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                            aVarA = companion16.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierB16);
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
                            Updater.e(composerA16, animatedContentMeasurePolicy16, companion16.d());
                            Updater.e(composerA16, density16, companion16.b());
                            Updater.e(composerA16, layoutDirection17, companion16.c());
                            Updater.e(composerA16, viewConfiguration16, companion16.f());
                            composerS.o();
                            qVarC16.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var16 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment18;
                        } else {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t115 = snapshotStateList.get(i21);
                                    Map map19 = map;
                                    SnapshotStateList snapshotStateList1114 = snapshotStateList;
                                    map19.put(t115, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t115, i20, lVar5, animatedContentScope, content, snapshotStateList1114)));
                                    i21++;
                                    map = map19;
                                    snapshotStateList = snapshotStateList1114;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList1115 = snapshotStateList;
                            Alignment alignment19 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK17 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK17) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB17 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy17 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection18 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration17 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                            aVarA = companion17.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC17 = LayoutKt.c(modifierB17);
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
                            Updater.e(composerA17, animatedContentMeasurePolicy17, companion17.d());
                            Updater.e(composerA17, density17, companion17.b());
                            Updater.e(composerA17, layoutDirection18, companion17.c());
                            Updater.e(composerA17, viewConfiguration17, companion17.f());
                            composerS.o();
                            qVarC17.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var17 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment19;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t116 = snapshotStateList.get(i21);
                                Map map110 = map;
                                SnapshotStateList snapshotStateList1116 = snapshotStateList;
                                map110.put(t116, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t116, i20, lVar5, animatedContentScope, content, snapshotStateList1116)));
                                i21++;
                                map = map110;
                                snapshotStateList = snapshotStateList1116;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList1117 = snapshotStateList;
                        Alignment alignment110 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK18 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK18) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB18 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy18 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection19 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration18 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                        aVarA = companion18.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC18 = LayoutKt.c(modifierB18);
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
                        Updater.e(composerA18, animatedContentMeasurePolicy18, companion18.d());
                        Updater.e(composerA18, density18, companion18.b());
                        Updater.e(composerA18, layoutDirection19, companion18.c());
                        Updater.e(composerA18, viewConfiguration18, companion18.f());
                        composerS.o();
                        qVarC18.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var18 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment110;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t117 = snapshotStateList.get(i21);
                                Map map111 = map;
                                SnapshotStateList snapshotStateList1118 = snapshotStateList;
                                map111.put(t117, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t117, i20, lVar5, animatedContentScope, content, snapshotStateList1118)));
                                i21++;
                                map = map111;
                                snapshotStateList = snapshotStateList1118;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList1119 = snapshotStateList;
                        Alignment alignment111 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK19 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK19) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB19 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy19 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration19 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                        aVarA = companion19.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC19 = LayoutKt.c(modifierB19);
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
                        Updater.e(composerA19, animatedContentMeasurePolicy19, companion19.d());
                        Updater.e(composerA19, density19, companion19.b());
                        Updater.e(composerA19, layoutDirection110, companion19.c());
                        Updater.e(composerA19, viewConfiguration19, companion19.f());
                        composerS.o();
                        qVarC19.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var19 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment111;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                lVar4 = lVar2;
                if ((i11 & 16) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t118 = snapshotStateList.get(i21);
                                Map map112 = map;
                                SnapshotStateList snapshotStateList11110 = snapshotStateList;
                                map112.put(t118, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t118, i20, lVar5, animatedContentScope, content, snapshotStateList11110)));
                                i21++;
                                map = map112;
                                snapshotStateList = snapshotStateList11110;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList11111 = snapshotStateList;
                        Alignment alignment112 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK110 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK110) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB110 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy110 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                        aVarA = companion110.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC110 = LayoutKt.c(modifierB110);
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
                        Updater.e(composerA110, animatedContentMeasurePolicy110, companion110.d());
                        Updater.e(composerA110, density110, companion110.b());
                        Updater.e(composerA110, layoutDirection111, companion110.c());
                        Updater.e(composerA110, viewConfiguration110, companion110.f());
                        composerS.o();
                        qVarC110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var110 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment112;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t119 = snapshotStateList.get(i21);
                                Map map113 = map;
                                SnapshotStateList snapshotStateList11112 = snapshotStateList;
                                map113.put(t119, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t119, i20, lVar5, animatedContentScope, content, snapshotStateList11112)));
                                i21++;
                                map = map113;
                                snapshotStateList = snapshotStateList11112;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList11113 = snapshotStateList;
                        Alignment alignment113 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK111 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK111) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB111 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy111 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                        aVarA = companion111.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111 = LayoutKt.c(modifierB111);
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
                        Updater.e(composerA111, animatedContentMeasurePolicy111, companion111.d());
                        Updater.e(composerA111, density111, companion111.b());
                        Updater.e(composerA111, layoutDirection112, companion111.c());
                        Updater.e(composerA111, viewConfiguration111, companion111.f());
                        composerS.o();
                        qVarC111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var111 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment113;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1110 = snapshotStateList.get(i21);
                            Map map114 = map;
                            SnapshotStateList snapshotStateList11114 = snapshotStateList;
                            map114.put(t1110, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1110, i20, lVar5, animatedContentScope, content, snapshotStateList11114)));
                            i21++;
                            map = map114;
                            snapshotStateList = snapshotStateList11114;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11115 = snapshotStateList;
                    Alignment alignment114 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK112 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK112) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB112 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy112 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                    aVarA = companion112.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC112 = LayoutKt.c(modifierB112);
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
                    Updater.e(composerA112, animatedContentMeasurePolicy112, companion112.d());
                    Updater.e(composerA112, density112, companion112.b());
                    Updater.e(composerA112, layoutDirection113, companion112.c());
                    Updater.e(composerA112, viewConfiguration112, companion112.f());
                    composerS.o();
                    qVarC112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var112 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment114;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1111 = snapshotStateList.get(i21);
                            Map map115 = map;
                            SnapshotStateList snapshotStateList11116 = snapshotStateList;
                            map115.put(t1111, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111, i20, lVar5, animatedContentScope, content, snapshotStateList11116)));
                            i21++;
                            map = map115;
                            snapshotStateList = snapshotStateList11116;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11117 = snapshotStateList;
                    Alignment alignment115 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK113 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK113) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB113 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy113 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                    aVarA = companion113.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC113 = LayoutKt.c(modifierB113);
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
                    Updater.e(composerA113, animatedContentMeasurePolicy113, companion113.d());
                    Updater.e(composerA113, density113, companion113.b());
                    Updater.e(composerA113, layoutDirection114, companion113.c());
                    Updater.e(composerA113, viewConfiguration113, companion113.f());
                    composerS.o();
                    qVarC113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var113 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment115;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i12 |= 3072;
            alignmentO = alignment;
            i17 = i11 & 8;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    lVar4 = lVar2;
                    if (composerS.k(lVar4)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 16) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t1112 = snapshotStateList.get(i21);
                                Map map116 = map;
                                SnapshotStateList snapshotStateList11118 = snapshotStateList;
                                map116.put(t1112, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1112, i20, lVar5, animatedContentScope, content, snapshotStateList11118)));
                                i21++;
                                map = map116;
                                snapshotStateList = snapshotStateList11118;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList11119 = snapshotStateList;
                        Alignment alignment116 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK114 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK114) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB114 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy114 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                        aVarA = companion114.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC114 = LayoutKt.c(modifierB114);
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
                        Updater.e(composerA114, animatedContentMeasurePolicy114, companion114.d());
                        Updater.e(composerA114, density114, companion114.b());
                        Updater.e(composerA114, layoutDirection115, companion114.c());
                        Updater.e(composerA114, viewConfiguration114, companion114.f());
                        composerS.o();
                        qVarC114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var114 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment116;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t1113 = snapshotStateList.get(i21);
                                Map map117 = map;
                                SnapshotStateList snapshotStateList111110 = snapshotStateList;
                                map117.put(t1113, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1113, i20, lVar5, animatedContentScope, content, snapshotStateList111110)));
                                i21++;
                                map = map117;
                                snapshotStateList = snapshotStateList111110;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList111111 = snapshotStateList;
                        Alignment alignment117 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK115 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK115) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB115 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy115 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                        aVarA = companion115.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC115 = LayoutKt.c(modifierB115);
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
                        Updater.e(composerA115, animatedContentMeasurePolicy115, companion115.d());
                        Updater.e(composerA115, density115, companion115.b());
                        Updater.e(composerA115, layoutDirection116, companion115.c());
                        Updater.e(composerA115, viewConfiguration115, companion115.f());
                        composerS.o();
                        qVarC115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var115 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment117;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1114 = snapshotStateList.get(i21);
                            Map map118 = map;
                            SnapshotStateList snapshotStateList111112 = snapshotStateList;
                            map118.put(t1114, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1114, i20, lVar5, animatedContentScope, content, snapshotStateList111112)));
                            i21++;
                            map = map118;
                            snapshotStateList = snapshotStateList111112;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111113 = snapshotStateList;
                    Alignment alignment118 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK116 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK116) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB116 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy116 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                    aVarA = companion116.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC116 = LayoutKt.c(modifierB116);
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
                    Updater.e(composerA116, animatedContentMeasurePolicy116, companion116.d());
                    Updater.e(composerA116, density116, companion116.b());
                    Updater.e(composerA116, layoutDirection117, companion116.c());
                    Updater.e(composerA116, viewConfiguration116, companion116.f());
                    composerS.o();
                    qVarC116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var116 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment118;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1115 = snapshotStateList.get(i21);
                            Map map119 = map;
                            SnapshotStateList snapshotStateList111114 = snapshotStateList;
                            map119.put(t1115, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1115, i20, lVar5, animatedContentScope, content, snapshotStateList111114)));
                            i21++;
                            map = map119;
                            snapshotStateList = snapshotStateList111114;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111115 = snapshotStateList;
                    Alignment alignment119 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK117 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK117) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB117 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy117 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                    aVarA = companion117.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC117 = LayoutKt.c(modifierB117);
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
                    Updater.e(composerA117, animatedContentMeasurePolicy117, companion117.d());
                    Updater.e(composerA117, density117, companion117.b());
                    Updater.e(composerA117, layoutDirection118, companion117.c());
                    Updater.e(composerA117, viewConfiguration117, companion117.f());
                    composerS.o();
                    qVarC117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var117 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment119;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            lVar4 = lVar2;
            if ((i11 & 16) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1116 = snapshotStateList.get(i21);
                            Map map1110 = map;
                            SnapshotStateList snapshotStateList111116 = snapshotStateList;
                            map1110.put(t1116, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1116, i20, lVar5, animatedContentScope, content, snapshotStateList111116)));
                            i21++;
                            map = map1110;
                            snapshotStateList = snapshotStateList111116;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111117 = snapshotStateList;
                    Alignment alignment1110 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK118 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK118) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB118 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy118 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                    aVarA = companion118.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC118 = LayoutKt.c(modifierB118);
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
                    Updater.e(composerA118, animatedContentMeasurePolicy118, companion118.d());
                    Updater.e(composerA118, density118, companion118.b());
                    Updater.e(composerA118, layoutDirection119, companion118.c());
                    Updater.e(composerA118, viewConfiguration118, companion118.f());
                    composerS.o();
                    qVarC118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var118 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment1110;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1117 = snapshotStateList.get(i21);
                            Map map1111 = map;
                            SnapshotStateList snapshotStateList111118 = snapshotStateList;
                            map1111.put(t1117, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1117, i20, lVar5, animatedContentScope, content, snapshotStateList111118)));
                            i21++;
                            map = map1111;
                            snapshotStateList = snapshotStateList111118;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111119 = snapshotStateList;
                    Alignment alignment1111 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK119 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK119) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB119 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy119 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection1110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                    aVarA = companion119.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC119 = LayoutKt.c(modifierB119);
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
                    Updater.e(composerA119, animatedContentMeasurePolicy119, companion119.d());
                    Updater.e(composerA119, density119, companion119.b());
                    Updater.e(composerA119, layoutDirection1110, companion119.c());
                    Updater.e(composerA119, viewConfiguration119, companion119.f());
                    composerS.o();
                    qVarC119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var119 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment1111;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1118 = snapshotStateList.get(i21);
                        Map map1112 = map;
                        SnapshotStateList snapshotStateList1111110 = snapshotStateList;
                        map1112.put(t1118, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1118, i20, lVar5, animatedContentScope, content, snapshotStateList1111110)));
                        i21++;
                        map = map1112;
                        snapshotStateList = snapshotStateList1111110;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList1111111 = snapshotStateList;
                Alignment alignment1112 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK1110 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK1110) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB1110 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy1110 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density1110 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
                aVarA = companion1110.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1110 = LayoutKt.c(modifierB1110);
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
                Updater.e(composerA1110, animatedContentMeasurePolicy1110, companion1110.d());
                Updater.e(composerA1110, density1110, companion1110.b());
                Updater.e(composerA1110, layoutDirection1111, companion1110.c());
                Updater.e(composerA1110, viewConfiguration1110, companion1110.f());
                composerS.o();
                qVarC1110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var1110 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment1112;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1119 = snapshotStateList.get(i21);
                        Map map1113 = map;
                        SnapshotStateList snapshotStateList1111112 = snapshotStateList;
                        map1113.put(t1119, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1119, i20, lVar5, animatedContentScope, content, snapshotStateList1111112)));
                        i21++;
                        map = map1113;
                        snapshotStateList = snapshotStateList1111112;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList1111113 = snapshotStateList;
                Alignment alignment1113 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK1111 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK1111) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB1111 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy1111 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density1111 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
                aVarA = companion1111.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111 = LayoutKt.c(modifierB1111);
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
                Updater.e(composerA1111, animatedContentMeasurePolicy1111, companion1111.d());
                Updater.e(composerA1111, density1111, companion1111.b());
                Updater.e(composerA1111, layoutDirection1112, companion1111.c());
                Updater.e(composerA1111, viewConfiguration1111, companion1111.f());
                composerS.o();
                qVarC1111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var1111 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment1113;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 2;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                lVar3 = lVar;
                if (composerS.k(lVar3)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 4;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    alignmentO = alignment;
                    if (composerS.k(alignmentO)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 8;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        lVar4 = lVar2;
                        if (composerS.k(lVar4)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 16) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t11110 = snapshotStateList.get(i21);
                                    Map map1114 = map;
                                    SnapshotStateList snapshotStateList1111114 = snapshotStateList;
                                    map1114.put(t11110, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11110, i20, lVar5, animatedContentScope, content, snapshotStateList1111114)));
                                    i21++;
                                    map = map1114;
                                    snapshotStateList = snapshotStateList1111114;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList1111115 = snapshotStateList;
                            Alignment alignment1114 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK1112 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK1112) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB1112 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy1112 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density1112 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection1113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration1112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion1112 = ComposeUiNode.Companion;
                            aVarA = companion1112.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1112 = LayoutKt.c(modifierB1112);
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
                            Composer composerA1112 = Updater.a(composerS);
                            Updater.e(composerA1112, animatedContentMeasurePolicy1112, companion1112.d());
                            Updater.e(composerA1112, density1112, companion1112.b());
                            Updater.e(composerA1112, layoutDirection1113, companion1112.c());
                            Updater.e(composerA1112, viewConfiguration1112, companion1112.f());
                            composerS.o();
                            qVarC1112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var1112 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment1114;
                        } else {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                            } else {
                                lVar5 = lVar3;
                            }
                            if (i15 != 0) {
                                alignmentO = Alignment.Companion.o();
                            }
                            if (i17 != 0) {
                                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                            }
                            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            composerS.G(1157296644);
                            zK = composerS.k(transition);
                            objH = composerS.H();
                            if (zK) {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            } else {
                                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            animatedContentScope = (AnimatedContentScope) objH;
                            composerS.G(1157296644);
                            zK2 = composerS.k(transition);
                            objH2 = composerS.H();
                            if (zK2) {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            } else {
                                objH2 = SnapshotStateKt.e(transition.g());
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            snapshotStateList = (SnapshotStateList) objH2;
                            composerS.G(1157296644);
                            zK3 = composerS.k(transition);
                            objH3 = composerS.H();
                            if (zK3) {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            } else {
                                objH3 = new LinkedHashMap();
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            map = (Map) objH3;
                            if (t.e(transition.g(), transition.m())) {
                                if (snapshotStateList.size() == 1) {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                } else {
                                    snapshotStateList.clear();
                                    snapshotStateList.add(transition.g());
                                }
                                if (map.size() == 1) {
                                    map.clear();
                                } else {
                                    map.clear();
                                }
                                animatedContentScope.p(alignmentO);
                                animatedContentScope.q(layoutDirection);
                            }
                            if (!t.e(transition.g(), transition.m())) {
                                it = snapshotStateList.iterator();
                                i22 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        i23 = -1;
                                        i22 = -1;
                                        break;
                                    } else {
                                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                            i23 = -1;
                                            break;
                                        }
                                        i22++;
                                    }
                                }
                                if (i22 == i23) {
                                    snapshotStateList.add(transition.m());
                                } else {
                                    snapshotStateList.set(i22, transition.m());
                                }
                            }
                            if (!map.containsKey(transition.m())) {
                                map.clear();
                                size = snapshotStateList.size();
                                i21 = 0;
                                while (i21 < size) {
                                    T t11111 = snapshotStateList.get(i21);
                                    Map map1115 = map;
                                    SnapshotStateList snapshotStateList1111116 = snapshotStateList;
                                    map1115.put(t11111, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11111, i20, lVar5, animatedContentScope, content, snapshotStateList1111116)));
                                    i21++;
                                    map = map1115;
                                    snapshotStateList = snapshotStateList1111116;
                                    size = size;
                                    alignmentO = alignmentO;
                                    animatedContentScope = animatedContentScope;
                                }
                            }
                            map2 = map;
                            SnapshotStateList snapshotStateList1111117 = snapshotStateList;
                            Alignment alignment1115 = alignmentO;
                            animatedContentScope2 = animatedContentScope;
                            Transition.Segment<S> segmentK1113 = transition.k();
                            composerS.G(511388516);
                            zK4 = composerS.k(segmentK1113) | composerS.k(animatedContentScope2);
                            contentTransformH = composerS.H();
                            if (zK4) {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            } else {
                                contentTransformH = lVar5.invoke(animatedContentScope2);
                                composerS.z(contentTransformH);
                            }
                            composerS.Q();
                            Modifier modifierB1113 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == Composer.Companion.a()) {
                                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            AnimatedContentMeasurePolicy animatedContentMeasurePolicy1113 = (AnimatedContentMeasurePolicy) objH4;
                            composerS.G(-1323940314);
                            Density density1113 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection1114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration1113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion1113 = ComposeUiNode.Companion;
                            aVarA = companion1113.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1113 = LayoutKt.c(modifierB1113);
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
                            Composer composerA1113 = Updater.a(composerS);
                            Updater.e(composerA1113, animatedContentMeasurePolicy1113, companion1113.d());
                            Updater.e(composerA1113, density1113, companion1113.b());
                            Updater.e(composerA1113, layoutDirection1114, companion1113.c());
                            Updater.e(composerA1113, viewConfiguration1113, companion1113.f());
                            composerS.o();
                            qVarC1113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-451584589);
                            while (r0.hasNext()) {
                                composerS.K(-1739565921, lVar4.invoke(obj));
                                pVar = (p) map2.get(obj);
                                if (pVar != null) {
                                    pVar.invoke(composerS, 0);
                                    l0 l0Var1113 = l0.INSTANCE;
                                }
                                composerS.P();
                            }
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar6 = lVar4;
                            modifier2 = modifier3;
                            lVar7 = lVar5;
                            alignment2 = alignment1115;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t11112 = snapshotStateList.get(i21);
                                Map map1116 = map;
                                SnapshotStateList snapshotStateList1111118 = snapshotStateList;
                                map1116.put(t11112, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11112, i20, lVar5, animatedContentScope, content, snapshotStateList1111118)));
                                i21++;
                                map = map1116;
                                snapshotStateList = snapshotStateList1111118;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList1111119 = snapshotStateList;
                        Alignment alignment1116 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK1114 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK1114) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB1114 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy1114 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density1114 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1114 = ComposeUiNode.Companion;
                        aVarA = companion1114.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1114 = LayoutKt.c(modifierB1114);
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
                        Composer composerA1114 = Updater.a(composerS);
                        Updater.e(composerA1114, animatedContentMeasurePolicy1114, companion1114.d());
                        Updater.e(composerA1114, density1114, companion1114.b());
                        Updater.e(composerA1114, layoutDirection1115, companion1114.c());
                        Updater.e(composerA1114, viewConfiguration1114, companion1114.f());
                        composerS.o();
                        qVarC1114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var1114 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment1116;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t11113 = snapshotStateList.get(i21);
                                Map map1117 = map;
                                SnapshotStateList snapshotStateList11111110 = snapshotStateList;
                                map1117.put(t11113, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11113, i20, lVar5, animatedContentScope, content, snapshotStateList11111110)));
                                i21++;
                                map = map1117;
                                snapshotStateList = snapshotStateList11111110;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList11111111 = snapshotStateList;
                        Alignment alignment1117 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK1115 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK1115) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB1115 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy1115 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density1115 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1115 = ComposeUiNode.Companion;
                        aVarA = companion1115.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1115 = LayoutKt.c(modifierB1115);
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
                        Composer composerA1115 = Updater.a(composerS);
                        Updater.e(composerA1115, animatedContentMeasurePolicy1115, companion1115.d());
                        Updater.e(composerA1115, density1115, companion1115.b());
                        Updater.e(composerA1115, layoutDirection1116, companion1115.c());
                        Updater.e(composerA1115, viewConfiguration1115, companion1115.f());
                        composerS.o();
                        qVarC1115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var1115 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment1117;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                lVar4 = lVar2;
                if ((i11 & 16) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t11114 = snapshotStateList.get(i21);
                                Map map1118 = map;
                                SnapshotStateList snapshotStateList11111112 = snapshotStateList;
                                map1118.put(t11114, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11114, i20, lVar5, animatedContentScope, content, snapshotStateList11111112)));
                                i21++;
                                map = map1118;
                                snapshotStateList = snapshotStateList11111112;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList11111113 = snapshotStateList;
                        Alignment alignment1118 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK1116 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK1116) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB1116 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy1116 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density1116 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1116 = ComposeUiNode.Companion;
                        aVarA = companion1116.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1116 = LayoutKt.c(modifierB1116);
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
                        Composer composerA1116 = Updater.a(composerS);
                        Updater.e(composerA1116, animatedContentMeasurePolicy1116, companion1116.d());
                        Updater.e(composerA1116, density1116, companion1116.b());
                        Updater.e(composerA1116, layoutDirection1117, companion1116.c());
                        Updater.e(composerA1116, viewConfiguration1116, companion1116.f());
                        composerS.o();
                        qVarC1116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var1116 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment1118;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t11115 = snapshotStateList.get(i21);
                                Map map1119 = map;
                                SnapshotStateList snapshotStateList11111114 = snapshotStateList;
                                map1119.put(t11115, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11115, i20, lVar5, animatedContentScope, content, snapshotStateList11111114)));
                                i21++;
                                map = map1119;
                                snapshotStateList = snapshotStateList11111114;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList11111115 = snapshotStateList;
                        Alignment alignment1119 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK1117 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK1117) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB1117 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy1117 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density1117 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1117 = ComposeUiNode.Companion;
                        aVarA = companion1117.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1117 = LayoutKt.c(modifierB1117);
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
                        Composer composerA1117 = Updater.a(composerS);
                        Updater.e(composerA1117, animatedContentMeasurePolicy1117, companion1117.d());
                        Updater.e(composerA1117, density1117, companion1117.b());
                        Updater.e(composerA1117, layoutDirection1118, companion1117.c());
                        Updater.e(composerA1117, viewConfiguration1117, companion1117.f());
                        composerS.o();
                        qVarC1117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var1117 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment1119;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t11116 = snapshotStateList.get(i21);
                            Map map11110 = map;
                            SnapshotStateList snapshotStateList11111116 = snapshotStateList;
                            map11110.put(t11116, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11116, i20, lVar5, animatedContentScope, content, snapshotStateList11111116)));
                            i21++;
                            map = map11110;
                            snapshotStateList = snapshotStateList11111116;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11111117 = snapshotStateList;
                    Alignment alignment11110 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK1118 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK1118) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB1118 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy1118 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density1118 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection1119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration1118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion1118 = ComposeUiNode.Companion;
                    aVarA = companion1118.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1118 = LayoutKt.c(modifierB1118);
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
                    Composer composerA1118 = Updater.a(composerS);
                    Updater.e(composerA1118, animatedContentMeasurePolicy1118, companion1118.d());
                    Updater.e(composerA1118, density1118, companion1118.b());
                    Updater.e(composerA1118, layoutDirection1119, companion1118.c());
                    Updater.e(composerA1118, viewConfiguration1118, companion1118.f());
                    composerS.o();
                    qVarC1118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var1118 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment11110;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t11117 = snapshotStateList.get(i21);
                            Map map11111 = map;
                            SnapshotStateList snapshotStateList11111118 = snapshotStateList;
                            map11111.put(t11117, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11117, i20, lVar5, animatedContentScope, content, snapshotStateList11111118)));
                            i21++;
                            map = map11111;
                            snapshotStateList = snapshotStateList11111118;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11111119 = snapshotStateList;
                    Alignment alignment11111 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK1119 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK1119) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB1119 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy1119 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density1119 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration1119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion1119 = ComposeUiNode.Companion;
                    aVarA = companion1119.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1119 = LayoutKt.c(modifierB1119);
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
                    Composer composerA1119 = Updater.a(composerS);
                    Updater.e(composerA1119, animatedContentMeasurePolicy1119, companion1119.d());
                    Updater.e(composerA1119, density1119, companion1119.b());
                    Updater.e(composerA1119, layoutDirection11110, companion1119.c());
                    Updater.e(composerA1119, viewConfiguration1119, companion1119.f());
                    composerS.o();
                    qVarC1119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var1119 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment11111;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i12 |= 3072;
            alignmentO = alignment;
            i17 = i11 & 8;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    lVar4 = lVar2;
                    if (composerS.k(lVar4)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 16) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t11118 = snapshotStateList.get(i21);
                                Map map11112 = map;
                                SnapshotStateList snapshotStateList111111110 = snapshotStateList;
                                map11112.put(t11118, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11118, i20, lVar5, animatedContentScope, content, snapshotStateList111111110)));
                                i21++;
                                map = map11112;
                                snapshotStateList = snapshotStateList111111110;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList111111111 = snapshotStateList;
                        Alignment alignment11112 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK11110 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK11110) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB11110 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy11110 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density11110 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11110 = ComposeUiNode.Companion;
                        aVarA = companion11110.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11110 = LayoutKt.c(modifierB11110);
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
                        Composer composerA11110 = Updater.a(composerS);
                        Updater.e(composerA11110, animatedContentMeasurePolicy11110, companion11110.d());
                        Updater.e(composerA11110, density11110, companion11110.b());
                        Updater.e(composerA11110, layoutDirection11111, companion11110.c());
                        Updater.e(composerA11110, viewConfiguration11110, companion11110.f());
                        composerS.o();
                        qVarC11110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var11110 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment11112;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t11119 = snapshotStateList.get(i21);
                                Map map11113 = map;
                                SnapshotStateList snapshotStateList111111112 = snapshotStateList;
                                map11113.put(t11119, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11119, i20, lVar5, animatedContentScope, content, snapshotStateList111111112)));
                                i21++;
                                map = map11113;
                                snapshotStateList = snapshotStateList111111112;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList111111113 = snapshotStateList;
                        Alignment alignment11113 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK11111 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK11111) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB11111 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy11111 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density11111 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11111 = ComposeUiNode.Companion;
                        aVarA = companion11111.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11111 = LayoutKt.c(modifierB11111);
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
                        Composer composerA11111 = Updater.a(composerS);
                        Updater.e(composerA11111, animatedContentMeasurePolicy11111, companion11111.d());
                        Updater.e(composerA11111, density11111, companion11111.b());
                        Updater.e(composerA11111, layoutDirection11112, companion11111.c());
                        Updater.e(composerA11111, viewConfiguration11111, companion11111.f());
                        composerS.o();
                        qVarC11111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var11111 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment11113;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t111110 = snapshotStateList.get(i21);
                            Map map11114 = map;
                            SnapshotStateList snapshotStateList111111114 = snapshotStateList;
                            map11114.put(t111110, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111110, i20, lVar5, animatedContentScope, content, snapshotStateList111111114)));
                            i21++;
                            map = map11114;
                            snapshotStateList = snapshotStateList111111114;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111111115 = snapshotStateList;
                    Alignment alignment11114 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK11112 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK11112) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB11112 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy11112 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density11112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11112 = ComposeUiNode.Companion;
                    aVarA = companion11112.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11112 = LayoutKt.c(modifierB11112);
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
                    Composer composerA11112 = Updater.a(composerS);
                    Updater.e(composerA11112, animatedContentMeasurePolicy11112, companion11112.d());
                    Updater.e(composerA11112, density11112, companion11112.b());
                    Updater.e(composerA11112, layoutDirection11113, companion11112.c());
                    Updater.e(composerA11112, viewConfiguration11112, companion11112.f());
                    composerS.o();
                    qVarC11112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var11112 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment11114;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t111111 = snapshotStateList.get(i21);
                            Map map11115 = map;
                            SnapshotStateList snapshotStateList111111116 = snapshotStateList;
                            map11115.put(t111111, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111111, i20, lVar5, animatedContentScope, content, snapshotStateList111111116)));
                            i21++;
                            map = map11115;
                            snapshotStateList = snapshotStateList111111116;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111111117 = snapshotStateList;
                    Alignment alignment11115 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK11113 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK11113) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB11113 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy11113 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density11113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11113 = ComposeUiNode.Companion;
                    aVarA = companion11113.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11113 = LayoutKt.c(modifierB11113);
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
                    Composer composerA11113 = Updater.a(composerS);
                    Updater.e(composerA11113, animatedContentMeasurePolicy11113, companion11113.d());
                    Updater.e(composerA11113, density11113, companion11113.b());
                    Updater.e(composerA11113, layoutDirection11114, companion11113.c());
                    Updater.e(composerA11113, viewConfiguration11113, companion11113.f());
                    composerS.o();
                    qVarC11113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var11113 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment11115;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            lVar4 = lVar2;
            if ((i11 & 16) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t111112 = snapshotStateList.get(i21);
                            Map map11116 = map;
                            SnapshotStateList snapshotStateList111111118 = snapshotStateList;
                            map11116.put(t111112, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111112, i20, lVar5, animatedContentScope, content, snapshotStateList111111118)));
                            i21++;
                            map = map11116;
                            snapshotStateList = snapshotStateList111111118;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111111119 = snapshotStateList;
                    Alignment alignment11116 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK11114 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK11114) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB11114 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy11114 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density11114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11114 = ComposeUiNode.Companion;
                    aVarA = companion11114.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11114 = LayoutKt.c(modifierB11114);
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
                    Composer composerA11114 = Updater.a(composerS);
                    Updater.e(composerA11114, animatedContentMeasurePolicy11114, companion11114.d());
                    Updater.e(composerA11114, density11114, companion11114.b());
                    Updater.e(composerA11114, layoutDirection11115, companion11114.c());
                    Updater.e(composerA11114, viewConfiguration11114, companion11114.f());
                    composerS.o();
                    qVarC11114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var11114 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment11116;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t111113 = snapshotStateList.get(i21);
                            Map map11117 = map;
                            SnapshotStateList snapshotStateList1111111110 = snapshotStateList;
                            map11117.put(t111113, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111113, i20, lVar5, animatedContentScope, content, snapshotStateList1111111110)));
                            i21++;
                            map = map11117;
                            snapshotStateList = snapshotStateList1111111110;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList1111111111 = snapshotStateList;
                    Alignment alignment11117 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK11115 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK11115) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB11115 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy11115 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density11115 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11115 = ComposeUiNode.Companion;
                    aVarA = companion11115.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11115 = LayoutKt.c(modifierB11115);
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
                    Composer composerA11115 = Updater.a(composerS);
                    Updater.e(composerA11115, animatedContentMeasurePolicy11115, companion11115.d());
                    Updater.e(composerA11115, density11115, companion11115.b());
                    Updater.e(composerA11115, layoutDirection11116, companion11115.c());
                    Updater.e(composerA11115, viewConfiguration11115, companion11115.f());
                    composerS.o();
                    qVarC11115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var11115 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment11117;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t111114 = snapshotStateList.get(i21);
                        Map map11118 = map;
                        SnapshotStateList snapshotStateList1111111112 = snapshotStateList;
                        map11118.put(t111114, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111114, i20, lVar5, animatedContentScope, content, snapshotStateList1111111112)));
                        i21++;
                        map = map11118;
                        snapshotStateList = snapshotStateList1111111112;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList1111111113 = snapshotStateList;
                Alignment alignment11118 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK11116 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK11116) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB11116 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy11116 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density11116 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion11116 = ComposeUiNode.Companion;
                aVarA = companion11116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11116 = LayoutKt.c(modifierB11116);
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
                Composer composerA11116 = Updater.a(composerS);
                Updater.e(composerA11116, animatedContentMeasurePolicy11116, companion11116.d());
                Updater.e(composerA11116, density11116, companion11116.b());
                Updater.e(composerA11116, layoutDirection11117, companion11116.c());
                Updater.e(composerA11116, viewConfiguration11116, companion11116.f());
                composerS.o();
                qVarC11116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var11116 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment11118;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t111115 = snapshotStateList.get(i21);
                        Map map11119 = map;
                        SnapshotStateList snapshotStateList1111111114 = snapshotStateList;
                        map11119.put(t111115, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111115, i20, lVar5, animatedContentScope, content, snapshotStateList1111111114)));
                        i21++;
                        map = map11119;
                        snapshotStateList = snapshotStateList1111111114;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList1111111115 = snapshotStateList;
                Alignment alignment11119 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK11117 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK11117) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB11117 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy11117 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density11117 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion11117 = ComposeUiNode.Companion;
                aVarA = companion11117.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11117 = LayoutKt.c(modifierB11117);
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
                Composer composerA11117 = Updater.a(composerS);
                Updater.e(composerA11117, animatedContentMeasurePolicy11117, companion11117.d());
                Updater.e(composerA11117, density11117, companion11117.b());
                Updater.e(composerA11117, layoutDirection11118, companion11117.c());
                Updater.e(composerA11117, viewConfiguration11117, companion11117.f());
                composerS.o();
                qVarC11117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var11117 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment11119;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
        }
        i12 |= 384;
        lVar3 = lVar;
        i15 = i11 & 4;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                alignmentO = alignment;
                if (composerS.k(alignmentO)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            i17 = i11 & 8;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    lVar4 = lVar2;
                    if (composerS.k(lVar4)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 16) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t111116 = snapshotStateList.get(i21);
                                Map map111110 = map;
                                SnapshotStateList snapshotStateList1111111116 = snapshotStateList;
                                map111110.put(t111116, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111116, i20, lVar5, animatedContentScope, content, snapshotStateList1111111116)));
                                i21++;
                                map = map111110;
                                snapshotStateList = snapshotStateList1111111116;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList1111111117 = snapshotStateList;
                        Alignment alignment111110 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK11118 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK11118) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB11118 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy11118 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density11118 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11118 = ComposeUiNode.Companion;
                        aVarA = companion11118.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11118 = LayoutKt.c(modifierB11118);
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
                        Composer composerA11118 = Updater.a(composerS);
                        Updater.e(composerA11118, animatedContentMeasurePolicy11118, companion11118.d());
                        Updater.e(composerA11118, density11118, companion11118.b());
                        Updater.e(composerA11118, layoutDirection11119, companion11118.c());
                        Updater.e(composerA11118, viewConfiguration11118, companion11118.f());
                        composerS.o();
                        qVarC11118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var11118 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment111110;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                        } else {
                            lVar5 = lVar3;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        }
                        if (i17 != 0) {
                            lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                        }
                        layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        composerS.G(1157296644);
                        zK = composerS.k(transition);
                        objH = composerS.H();
                        if (zK) {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        } else {
                            objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        animatedContentScope = (AnimatedContentScope) objH;
                        composerS.G(1157296644);
                        zK2 = composerS.k(transition);
                        objH2 = composerS.H();
                        if (zK2) {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        } else {
                            objH2 = SnapshotStateKt.e(transition.g());
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        snapshotStateList = (SnapshotStateList) objH2;
                        composerS.G(1157296644);
                        zK3 = composerS.k(transition);
                        objH3 = composerS.H();
                        if (zK3) {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        } else {
                            objH3 = new LinkedHashMap();
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        map = (Map) objH3;
                        if (t.e(transition.g(), transition.m())) {
                            if (snapshotStateList.size() == 1) {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            } else {
                                snapshotStateList.clear();
                                snapshotStateList.add(transition.g());
                            }
                            if (map.size() == 1) {
                                map.clear();
                            } else {
                                map.clear();
                            }
                            animatedContentScope.p(alignmentO);
                            animatedContentScope.q(layoutDirection);
                        }
                        if (!t.e(transition.g(), transition.m())) {
                            it = snapshotStateList.iterator();
                            i22 = 0;
                            while (true) {
                                if (!it.hasNext()) {
                                    i23 = -1;
                                    i22 = -1;
                                    break;
                                } else {
                                    if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                        i23 = -1;
                                        break;
                                    }
                                    i22++;
                                }
                            }
                            if (i22 == i23) {
                                snapshotStateList.add(transition.m());
                            } else {
                                snapshotStateList.set(i22, transition.m());
                            }
                        }
                        if (!map.containsKey(transition.m())) {
                            map.clear();
                            size = snapshotStateList.size();
                            i21 = 0;
                            while (i21 < size) {
                                T t111117 = snapshotStateList.get(i21);
                                Map map111111 = map;
                                SnapshotStateList snapshotStateList1111111118 = snapshotStateList;
                                map111111.put(t111117, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111117, i20, lVar5, animatedContentScope, content, snapshotStateList1111111118)));
                                i21++;
                                map = map111111;
                                snapshotStateList = snapshotStateList1111111118;
                                size = size;
                                alignmentO = alignmentO;
                                animatedContentScope = animatedContentScope;
                            }
                        }
                        map2 = map;
                        SnapshotStateList snapshotStateList1111111119 = snapshotStateList;
                        Alignment alignment111111 = alignmentO;
                        animatedContentScope2 = animatedContentScope;
                        Transition.Segment<S> segmentK11119 = transition.k();
                        composerS.G(511388516);
                        zK4 = composerS.k(segmentK11119) | composerS.k(animatedContentScope2);
                        contentTransformH = composerS.H();
                        if (zK4) {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        } else {
                            contentTransformH = lVar5.invoke(animatedContentScope2);
                            composerS.z(contentTransformH);
                        }
                        composerS.Q();
                        Modifier modifierB11119 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == Composer.Companion.a()) {
                            objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        AnimatedContentMeasurePolicy animatedContentMeasurePolicy11119 = (AnimatedContentMeasurePolicy) objH4;
                        composerS.G(-1323940314);
                        Density density11119 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection111110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11119 = ComposeUiNode.Companion;
                        aVarA = companion11119.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11119 = LayoutKt.c(modifierB11119);
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
                        Composer composerA11119 = Updater.a(composerS);
                        Updater.e(composerA11119, animatedContentMeasurePolicy11119, companion11119.d());
                        Updater.e(composerA11119, density11119, companion11119.b());
                        Updater.e(composerA11119, layoutDirection111110, companion11119.c());
                        Updater.e(composerA11119, viewConfiguration11119, companion11119.f());
                        composerS.o();
                        qVarC11119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-451584589);
                        while (r0.hasNext()) {
                            composerS.K(-1739565921, lVar4.invoke(obj));
                            pVar = (p) map2.get(obj);
                            if (pVar != null) {
                                pVar.invoke(composerS, 0);
                                l0 l0Var11119 = l0.INSTANCE;
                            }
                            composerS.P();
                        }
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar6 = lVar4;
                        modifier2 = modifier3;
                        lVar7 = lVar5;
                        alignment2 = alignment111111;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t111118 = snapshotStateList.get(i21);
                            Map map111112 = map;
                            SnapshotStateList snapshotStateList11111111110 = snapshotStateList;
                            map111112.put(t111118, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111118, i20, lVar5, animatedContentScope, content, snapshotStateList11111111110)));
                            i21++;
                            map = map111112;
                            snapshotStateList = snapshotStateList11111111110;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11111111111 = snapshotStateList;
                    Alignment alignment111112 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK111110 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK111110) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB111110 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy111110 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density111110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111110 = ComposeUiNode.Companion;
                    aVarA = companion111110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111110 = LayoutKt.c(modifierB111110);
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
                    Composer composerA111110 = Updater.a(composerS);
                    Updater.e(composerA111110, animatedContentMeasurePolicy111110, companion111110.d());
                    Updater.e(composerA111110, density111110, companion111110.b());
                    Updater.e(composerA111110, layoutDirection111111, companion111110.c());
                    Updater.e(composerA111110, viewConfiguration111110, companion111110.f());
                    composerS.o();
                    qVarC111110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var111110 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment111112;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t111119 = snapshotStateList.get(i21);
                            Map map111113 = map;
                            SnapshotStateList snapshotStateList11111111112 = snapshotStateList;
                            map111113.put(t111119, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t111119, i20, lVar5, animatedContentScope, content, snapshotStateList11111111112)));
                            i21++;
                            map = map111113;
                            snapshotStateList = snapshotStateList11111111112;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11111111113 = snapshotStateList;
                    Alignment alignment111113 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK111111 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK111111) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB111111 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy111111 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density111111 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111111 = ComposeUiNode.Companion;
                    aVarA = companion111111.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111111 = LayoutKt.c(modifierB111111);
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
                    Composer composerA111111 = Updater.a(composerS);
                    Updater.e(composerA111111, animatedContentMeasurePolicy111111, companion111111.d());
                    Updater.e(composerA111111, density111111, companion111111.b());
                    Updater.e(composerA111111, layoutDirection111112, companion111111.c());
                    Updater.e(composerA111111, viewConfiguration111111, companion111111.f());
                    composerS.o();
                    qVarC111111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var111111 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment111113;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            lVar4 = lVar2;
            if ((i11 & 16) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1111110 = snapshotStateList.get(i21);
                            Map map111114 = map;
                            SnapshotStateList snapshotStateList11111111114 = snapshotStateList;
                            map111114.put(t1111110, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111110, i20, lVar5, animatedContentScope, content, snapshotStateList11111111114)));
                            i21++;
                            map = map111114;
                            snapshotStateList = snapshotStateList11111111114;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11111111115 = snapshotStateList;
                    Alignment alignment111114 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK111112 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK111112) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB111112 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy111112 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density111112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111112 = ComposeUiNode.Companion;
                    aVarA = companion111112.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111112 = LayoutKt.c(modifierB111112);
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
                    Composer composerA111112 = Updater.a(composerS);
                    Updater.e(composerA111112, animatedContentMeasurePolicy111112, companion111112.d());
                    Updater.e(composerA111112, density111112, companion111112.b());
                    Updater.e(composerA111112, layoutDirection111113, companion111112.c());
                    Updater.e(composerA111112, viewConfiguration111112, companion111112.f());
                    composerS.o();
                    qVarC111112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var111112 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment111114;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1111111 = snapshotStateList.get(i21);
                            Map map111115 = map;
                            SnapshotStateList snapshotStateList11111111116 = snapshotStateList;
                            map111115.put(t1111111, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111111, i20, lVar5, animatedContentScope, content, snapshotStateList11111111116)));
                            i21++;
                            map = map111115;
                            snapshotStateList = snapshotStateList11111111116;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList11111111117 = snapshotStateList;
                    Alignment alignment111115 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK111113 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK111113) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB111113 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy111113 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density111113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111113 = ComposeUiNode.Companion;
                    aVarA = companion111113.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111113 = LayoutKt.c(modifierB111113);
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
                    Composer composerA111113 = Updater.a(composerS);
                    Updater.e(composerA111113, animatedContentMeasurePolicy111113, companion111113.d());
                    Updater.e(composerA111113, density111113, companion111113.b());
                    Updater.e(composerA111113, layoutDirection111114, companion111113.c());
                    Updater.e(composerA111113, viewConfiguration111113, companion111113.f());
                    composerS.o();
                    qVarC111113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var111113 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment111115;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1111112 = snapshotStateList.get(i21);
                        Map map111116 = map;
                        SnapshotStateList snapshotStateList11111111118 = snapshotStateList;
                        map111116.put(t1111112, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111112, i20, lVar5, animatedContentScope, content, snapshotStateList11111111118)));
                        i21++;
                        map = map111116;
                        snapshotStateList = snapshotStateList11111111118;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList11111111119 = snapshotStateList;
                Alignment alignment111116 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK111114 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK111114) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB111114 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy111114 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density111114 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111114 = ComposeUiNode.Companion;
                aVarA = companion111114.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111114 = LayoutKt.c(modifierB111114);
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
                Composer composerA111114 = Updater.a(composerS);
                Updater.e(composerA111114, animatedContentMeasurePolicy111114, companion111114.d());
                Updater.e(composerA111114, density111114, companion111114.b());
                Updater.e(composerA111114, layoutDirection111115, companion111114.c());
                Updater.e(composerA111114, viewConfiguration111114, companion111114.f());
                composerS.o();
                qVarC111114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var111114 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment111116;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1111113 = snapshotStateList.get(i21);
                        Map map111117 = map;
                        SnapshotStateList snapshotStateList111111111110 = snapshotStateList;
                        map111117.put(t1111113, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111113, i20, lVar5, animatedContentScope, content, snapshotStateList111111111110)));
                        i21++;
                        map = map111117;
                        snapshotStateList = snapshotStateList111111111110;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList111111111111 = snapshotStateList;
                Alignment alignment111117 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK111115 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK111115) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB111115 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy111115 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density111115 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111115 = ComposeUiNode.Companion;
                aVarA = companion111115.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111115 = LayoutKt.c(modifierB111115);
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
                Composer composerA111115 = Updater.a(composerS);
                Updater.e(composerA111115, animatedContentMeasurePolicy111115, companion111115.d());
                Updater.e(composerA111115, density111115, companion111115.b());
                Updater.e(composerA111115, layoutDirection111116, companion111115.c());
                Updater.e(composerA111115, viewConfiguration111115, companion111115.f());
                composerS.o();
                qVarC111115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var111115 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment111117;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
        }
        i12 |= 3072;
        alignmentO = alignment;
        i17 = i11 & 8;
        if (i17 != 0) {
            if ((57344 & i10) == 0) {
                lVar4 = lVar2;
                if (composerS.k(lVar4)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            if ((i11 & 16) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1111114 = snapshotStateList.get(i21);
                            Map map111118 = map;
                            SnapshotStateList snapshotStateList111111111112 = snapshotStateList;
                            map111118.put(t1111114, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111114, i20, lVar5, animatedContentScope, content, snapshotStateList111111111112)));
                            i21++;
                            map = map111118;
                            snapshotStateList = snapshotStateList111111111112;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111111111113 = snapshotStateList;
                    Alignment alignment111118 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK111116 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK111116) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB111116 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy111116 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density111116 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111116 = ComposeUiNode.Companion;
                    aVarA = companion111116.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111116 = LayoutKt.c(modifierB111116);
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
                    Composer composerA111116 = Updater.a(composerS);
                    Updater.e(composerA111116, animatedContentMeasurePolicy111116, companion111116.d());
                    Updater.e(composerA111116, density111116, companion111116.b());
                    Updater.e(composerA111116, layoutDirection111117, companion111116.c());
                    Updater.e(composerA111116, viewConfiguration111116, companion111116.f());
                    composerS.o();
                    qVarC111116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var111116 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment111118;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                    } else {
                        lVar5 = lVar3;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    }
                    if (i17 != 0) {
                        lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                    }
                    layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    composerS.G(1157296644);
                    zK = composerS.k(transition);
                    objH = composerS.H();
                    if (zK) {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    } else {
                        objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    animatedContentScope = (AnimatedContentScope) objH;
                    composerS.G(1157296644);
                    zK2 = composerS.k(transition);
                    objH2 = composerS.H();
                    if (zK2) {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    } else {
                        objH2 = SnapshotStateKt.e(transition.g());
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    snapshotStateList = (SnapshotStateList) objH2;
                    composerS.G(1157296644);
                    zK3 = composerS.k(transition);
                    objH3 = composerS.H();
                    if (zK3) {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    } else {
                        objH3 = new LinkedHashMap();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    map = (Map) objH3;
                    if (t.e(transition.g(), transition.m())) {
                        if (snapshotStateList.size() == 1) {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        } else {
                            snapshotStateList.clear();
                            snapshotStateList.add(transition.g());
                        }
                        if (map.size() == 1) {
                            map.clear();
                        } else {
                            map.clear();
                        }
                        animatedContentScope.p(alignmentO);
                        animatedContentScope.q(layoutDirection);
                    }
                    if (!t.e(transition.g(), transition.m())) {
                        it = snapshotStateList.iterator();
                        i22 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i23 = -1;
                                i22 = -1;
                                break;
                            } else {
                                if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                    i23 = -1;
                                    break;
                                }
                                i22++;
                            }
                        }
                        if (i22 == i23) {
                            snapshotStateList.add(transition.m());
                        } else {
                            snapshotStateList.set(i22, transition.m());
                        }
                    }
                    if (!map.containsKey(transition.m())) {
                        map.clear();
                        size = snapshotStateList.size();
                        i21 = 0;
                        while (i21 < size) {
                            T t1111115 = snapshotStateList.get(i21);
                            Map map111119 = map;
                            SnapshotStateList snapshotStateList111111111114 = snapshotStateList;
                            map111119.put(t1111115, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111115, i20, lVar5, animatedContentScope, content, snapshotStateList111111111114)));
                            i21++;
                            map = map111119;
                            snapshotStateList = snapshotStateList111111111114;
                            size = size;
                            alignmentO = alignmentO;
                            animatedContentScope = animatedContentScope;
                        }
                    }
                    map2 = map;
                    SnapshotStateList snapshotStateList111111111115 = snapshotStateList;
                    Alignment alignment111119 = alignmentO;
                    animatedContentScope2 = animatedContentScope;
                    Transition.Segment<S> segmentK111117 = transition.k();
                    composerS.G(511388516);
                    zK4 = composerS.k(segmentK111117) | composerS.k(animatedContentScope2);
                    contentTransformH = composerS.H();
                    if (zK4) {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    } else {
                        contentTransformH = lVar5.invoke(animatedContentScope2);
                        composerS.z(contentTransformH);
                    }
                    composerS.Q();
                    Modifier modifierB111117 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == Composer.Companion.a()) {
                        objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    AnimatedContentMeasurePolicy animatedContentMeasurePolicy111117 = (AnimatedContentMeasurePolicy) objH4;
                    composerS.G(-1323940314);
                    Density density111117 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111117 = ComposeUiNode.Companion;
                    aVarA = companion111117.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111117 = LayoutKt.c(modifierB111117);
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
                    Composer composerA111117 = Updater.a(composerS);
                    Updater.e(composerA111117, animatedContentMeasurePolicy111117, companion111117.d());
                    Updater.e(composerA111117, density111117, companion111117.b());
                    Updater.e(composerA111117, layoutDirection111118, companion111117.c());
                    Updater.e(composerA111117, viewConfiguration111117, companion111117.f());
                    composerS.o();
                    qVarC111117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-451584589);
                    while (r0.hasNext()) {
                        composerS.K(-1739565921, lVar4.invoke(obj));
                        pVar = (p) map2.get(obj);
                        if (pVar != null) {
                            pVar.invoke(composerS, 0);
                            l0 l0Var111117 = l0.INSTANCE;
                        }
                        composerS.P();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar6 = lVar4;
                    modifier2 = modifier3;
                    lVar7 = lVar5;
                    alignment2 = alignment111119;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1111116 = snapshotStateList.get(i21);
                        Map map1111110 = map;
                        SnapshotStateList snapshotStateList111111111116 = snapshotStateList;
                        map1111110.put(t1111116, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111116, i20, lVar5, animatedContentScope, content, snapshotStateList111111111116)));
                        i21++;
                        map = map1111110;
                        snapshotStateList = snapshotStateList111111111116;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList111111111117 = snapshotStateList;
                Alignment alignment1111110 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK111118 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK111118) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB111118 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy111118 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density111118 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111118 = ComposeUiNode.Companion;
                aVarA = companion111118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111118 = LayoutKt.c(modifierB111118);
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
                Composer composerA111118 = Updater.a(composerS);
                Updater.e(composerA111118, animatedContentMeasurePolicy111118, companion111118.d());
                Updater.e(composerA111118, density111118, companion111118.b());
                Updater.e(composerA111118, layoutDirection111119, companion111118.c());
                Updater.e(composerA111118, viewConfiguration111118, companion111118.f());
                composerS.o();
                qVarC111118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var111118 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment1111110;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1111117 = snapshotStateList.get(i21);
                        Map map1111111 = map;
                        SnapshotStateList snapshotStateList111111111118 = snapshotStateList;
                        map1111111.put(t1111117, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111117, i20, lVar5, animatedContentScope, content, snapshotStateList111111111118)));
                        i21++;
                        map = map1111111;
                        snapshotStateList = snapshotStateList111111111118;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList111111111119 = snapshotStateList;
                Alignment alignment1111111 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK111119 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK111119) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB111119 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy111119 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density111119 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111119 = ComposeUiNode.Companion;
                aVarA = companion111119.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111119 = LayoutKt.c(modifierB111119);
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
                Composer composerA111119 = Updater.a(composerS);
                Updater.e(composerA111119, animatedContentMeasurePolicy111119, companion111119.d());
                Updater.e(composerA111119, density111119, companion111119.b());
                Updater.e(composerA111119, layoutDirection1111110, companion111119.c());
                Updater.e(composerA111119, viewConfiguration111119, companion111119.f());
                composerS.o();
                qVarC111119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var111119 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment1111111;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        lVar4 = lVar2;
        if ((i11 & 16) != 0) {
            if ((458752 & i10) == 0) {
                if (composerS.k(content)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
            }
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1111118 = snapshotStateList.get(i21);
                        Map map1111112 = map;
                        SnapshotStateList snapshotStateList1111111111110 = snapshotStateList;
                        map1111112.put(t1111118, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111118, i20, lVar5, animatedContentScope, content, snapshotStateList1111111111110)));
                        i21++;
                        map = map1111112;
                        snapshotStateList = snapshotStateList1111111111110;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList1111111111111 = snapshotStateList;
                Alignment alignment1111112 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK1111110 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK1111110) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB1111110 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy1111110 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density1111110 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1111110 = ComposeUiNode.Companion;
                aVarA = companion1111110.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111110 = LayoutKt.c(modifierB1111110);
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
                Composer composerA1111110 = Updater.a(composerS);
                Updater.e(composerA1111110, animatedContentMeasurePolicy1111110, companion1111110.d());
                Updater.e(composerA1111110, density1111110, companion1111110.b());
                Updater.e(composerA1111110, layoutDirection1111111, companion1111110.c());
                Updater.e(composerA1111110, viewConfiguration1111110, companion1111110.f());
                composerS.o();
                qVarC1111110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var1111110 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment1111112;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
                } else {
                    lVar5 = lVar3;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                }
                if (i17 != 0) {
                    lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
                }
                layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                composerS.G(1157296644);
                zK = composerS.k(transition);
                objH = composerS.H();
                if (zK) {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                } else {
                    objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                    composerS.z(objH);
                }
                composerS.Q();
                animatedContentScope = (AnimatedContentScope) objH;
                composerS.G(1157296644);
                zK2 = composerS.k(transition);
                objH2 = composerS.H();
                if (zK2) {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                } else {
                    objH2 = SnapshotStateKt.e(transition.g());
                    composerS.z(objH2);
                }
                composerS.Q();
                snapshotStateList = (SnapshotStateList) objH2;
                composerS.G(1157296644);
                zK3 = composerS.k(transition);
                objH3 = composerS.H();
                if (zK3) {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                } else {
                    objH3 = new LinkedHashMap();
                    composerS.z(objH3);
                }
                composerS.Q();
                map = (Map) objH3;
                if (t.e(transition.g(), transition.m())) {
                    if (snapshotStateList.size() == 1) {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    } else {
                        snapshotStateList.clear();
                        snapshotStateList.add(transition.g());
                    }
                    if (map.size() == 1) {
                        map.clear();
                    } else {
                        map.clear();
                    }
                    animatedContentScope.p(alignmentO);
                    animatedContentScope.q(layoutDirection);
                }
                if (!t.e(transition.g(), transition.m())) {
                    it = snapshotStateList.iterator();
                    i22 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i23 = -1;
                            i22 = -1;
                            break;
                        } else {
                            if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                                i23 = -1;
                                break;
                            }
                            i22++;
                        }
                    }
                    if (i22 == i23) {
                        snapshotStateList.add(transition.m());
                    } else {
                        snapshotStateList.set(i22, transition.m());
                    }
                }
                if (!map.containsKey(transition.m())) {
                    map.clear();
                    size = snapshotStateList.size();
                    i21 = 0;
                    while (i21 < size) {
                        T t1111119 = snapshotStateList.get(i21);
                        Map map1111113 = map;
                        SnapshotStateList snapshotStateList1111111111112 = snapshotStateList;
                        map1111113.put(t1111119, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t1111119, i20, lVar5, animatedContentScope, content, snapshotStateList1111111111112)));
                        i21++;
                        map = map1111113;
                        snapshotStateList = snapshotStateList1111111111112;
                        size = size;
                        alignmentO = alignmentO;
                        animatedContentScope = animatedContentScope;
                    }
                }
                map2 = map;
                SnapshotStateList snapshotStateList1111111111113 = snapshotStateList;
                Alignment alignment1111113 = alignmentO;
                animatedContentScope2 = animatedContentScope;
                Transition.Segment<S> segmentK1111111 = transition.k();
                composerS.G(511388516);
                zK4 = composerS.k(segmentK1111111) | composerS.k(animatedContentScope2);
                contentTransformH = composerS.H();
                if (zK4) {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                } else {
                    contentTransformH = lVar5.invoke(animatedContentScope2);
                    composerS.z(contentTransformH);
                }
                composerS.Q();
                Modifier modifierB1111111 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == Composer.Companion.a()) {
                    objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                    composerS.z(objH4);
                }
                composerS.Q();
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy1111111 = (AnimatedContentMeasurePolicy) objH4;
                composerS.G(-1323940314);
                Density density1111111 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1111111 = ComposeUiNode.Companion;
                aVarA = companion1111111.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111111 = LayoutKt.c(modifierB1111111);
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
                Composer composerA1111111 = Updater.a(composerS);
                Updater.e(composerA1111111, animatedContentMeasurePolicy1111111, companion1111111.d());
                Updater.e(composerA1111111, density1111111, companion1111111.b());
                Updater.e(composerA1111111, layoutDirection1111112, companion1111111.c());
                Updater.e(composerA1111111, viewConfiguration1111111, companion1111111.f());
                composerS.o();
                qVarC1111111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-451584589);
                while (r0.hasNext()) {
                    composerS.K(-1739565921, lVar4.invoke(obj));
                    pVar = (p) map2.get(obj);
                    if (pVar != null) {
                        pVar.invoke(composerS, 0);
                        l0 l0Var1111111 = l0.INSTANCE;
                    }
                    composerS.P();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar6 = lVar4;
                modifier2 = modifier3;
                lVar7 = lVar5;
                alignment2 = alignment1111113;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
        }
        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i19;
        i20 = i12;
        if ((374491 & i20) == 74898) {
            if (i24 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
            } else {
                lVar5 = lVar3;
            }
            if (i15 != 0) {
                alignmentO = Alignment.Companion.o();
            }
            if (i17 != 0) {
                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
            }
            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            composerS.G(1157296644);
            zK = composerS.k(transition);
            objH = composerS.H();
            if (zK) {
                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                composerS.z(objH);
            } else {
                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                composerS.z(objH);
            }
            composerS.Q();
            animatedContentScope = (AnimatedContentScope) objH;
            composerS.G(1157296644);
            zK2 = composerS.k(transition);
            objH2 = composerS.H();
            if (zK2) {
                objH2 = SnapshotStateKt.e(transition.g());
                composerS.z(objH2);
            } else {
                objH2 = SnapshotStateKt.e(transition.g());
                composerS.z(objH2);
            }
            composerS.Q();
            snapshotStateList = (SnapshotStateList) objH2;
            composerS.G(1157296644);
            zK3 = composerS.k(transition);
            objH3 = composerS.H();
            if (zK3) {
                objH3 = new LinkedHashMap();
                composerS.z(objH3);
            } else {
                objH3 = new LinkedHashMap();
                composerS.z(objH3);
            }
            composerS.Q();
            map = (Map) objH3;
            if (t.e(transition.g(), transition.m())) {
                if (snapshotStateList.size() == 1) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition.g());
                } else {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition.g());
                }
                if (map.size() == 1) {
                    map.clear();
                } else {
                    map.clear();
                }
                animatedContentScope.p(alignmentO);
                animatedContentScope.q(layoutDirection);
            }
            if (!t.e(transition.g(), transition.m())) {
                it = snapshotStateList.iterator();
                i22 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i23 = -1;
                        i22 = -1;
                        break;
                    } else {
                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                            i23 = -1;
                            break;
                        }
                        i22++;
                    }
                }
                if (i22 == i23) {
                    snapshotStateList.add(transition.m());
                } else {
                    snapshotStateList.set(i22, transition.m());
                }
            }
            if (!map.containsKey(transition.m())) {
                map.clear();
                size = snapshotStateList.size();
                i21 = 0;
                while (i21 < size) {
                    T t11111110 = snapshotStateList.get(i21);
                    Map map1111114 = map;
                    SnapshotStateList snapshotStateList1111111111114 = snapshotStateList;
                    map1111114.put(t11111110, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11111110, i20, lVar5, animatedContentScope, content, snapshotStateList1111111111114)));
                    i21++;
                    map = map1111114;
                    snapshotStateList = snapshotStateList1111111111114;
                    size = size;
                    alignmentO = alignmentO;
                    animatedContentScope = animatedContentScope;
                }
            }
            map2 = map;
            SnapshotStateList snapshotStateList1111111111115 = snapshotStateList;
            Alignment alignment1111114 = alignmentO;
            animatedContentScope2 = animatedContentScope;
            Transition.Segment<S> segmentK1111112 = transition.k();
            composerS.G(511388516);
            zK4 = composerS.k(segmentK1111112) | composerS.k(animatedContentScope2);
            contentTransformH = composerS.H();
            if (zK4) {
                contentTransformH = lVar5.invoke(animatedContentScope2);
                composerS.z(contentTransformH);
            } else {
                contentTransformH = lVar5.invoke(animatedContentScope2);
                composerS.z(contentTransformH);
            }
            composerS.Q();
            Modifier modifierB1111112 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
            composerS.G(-492369756);
            objH4 = composerS.H();
            if (objH4 == Composer.Companion.a()) {
                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                composerS.z(objH4);
            }
            composerS.Q();
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy1111112 = (AnimatedContentMeasurePolicy) objH4;
            composerS.G(-1323940314);
            Density density1111112 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111112 = ComposeUiNode.Companion;
            aVarA = companion1111112.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111112 = LayoutKt.c(modifierB1111112);
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
            Composer composerA1111112 = Updater.a(composerS);
            Updater.e(composerA1111112, animatedContentMeasurePolicy1111112, companion1111112.d());
            Updater.e(composerA1111112, density1111112, companion1111112.b());
            Updater.e(composerA1111112, layoutDirection1111113, companion1111112.c());
            Updater.e(composerA1111112, viewConfiguration1111112, companion1111112.f());
            composerS.o();
            qVarC1111112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-451584589);
            while (r0.hasNext()) {
                composerS.K(-1739565921, lVar4.invoke(obj));
                pVar = (p) map2.get(obj);
                if (pVar != null) {
                    pVar.invoke(composerS, 0);
                    l0 l0Var1111112 = l0.INSTANCE;
                }
                composerS.P();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            lVar6 = lVar4;
            modifier2 = modifier3;
            lVar7 = lVar5;
            alignment2 = alignment1111114;
        } else {
            if (i24 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                lVar5 = AnimatedContentKt$AnimatedContent$3.INSTANCE;
            } else {
                lVar5 = lVar3;
            }
            if (i15 != 0) {
                alignmentO = Alignment.Companion.o();
            }
            if (i17 != 0) {
                lVar4 = AnimatedContentKt$AnimatedContent$4.INSTANCE;
            }
            layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            composerS.G(1157296644);
            zK = composerS.k(transition);
            objH = composerS.H();
            if (zK) {
                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                composerS.z(objH);
            } else {
                objH = new AnimatedContentScope(transition, alignmentO, layoutDirection);
                composerS.z(objH);
            }
            composerS.Q();
            animatedContentScope = (AnimatedContentScope) objH;
            composerS.G(1157296644);
            zK2 = composerS.k(transition);
            objH2 = composerS.H();
            if (zK2) {
                objH2 = SnapshotStateKt.e(transition.g());
                composerS.z(objH2);
            } else {
                objH2 = SnapshotStateKt.e(transition.g());
                composerS.z(objH2);
            }
            composerS.Q();
            snapshotStateList = (SnapshotStateList) objH2;
            composerS.G(1157296644);
            zK3 = composerS.k(transition);
            objH3 = composerS.H();
            if (zK3) {
                objH3 = new LinkedHashMap();
                composerS.z(objH3);
            } else {
                objH3 = new LinkedHashMap();
                composerS.z(objH3);
            }
            composerS.Q();
            map = (Map) objH3;
            if (t.e(transition.g(), transition.m())) {
                if (snapshotStateList.size() == 1) {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition.g());
                } else {
                    snapshotStateList.clear();
                    snapshotStateList.add(transition.g());
                }
                if (map.size() == 1) {
                    map.clear();
                } else {
                    map.clear();
                }
                animatedContentScope.p(alignmentO);
                animatedContentScope.q(layoutDirection);
            }
            if (!t.e(transition.g(), transition.m())) {
                it = snapshotStateList.iterator();
                i22 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i23 = -1;
                        i22 = -1;
                        break;
                    } else {
                        if (t.e(lVar4.invoke((Object) it.next()), lVar4.invoke(transition.m()))) {
                            i23 = -1;
                            break;
                        }
                        i22++;
                    }
                }
                if (i22 == i23) {
                    snapshotStateList.add(transition.m());
                } else {
                    snapshotStateList.set(i22, transition.m());
                }
            }
            if (!map.containsKey(transition.m())) {
                map.clear();
                size = snapshotStateList.size();
                i21 = 0;
                while (i21 < size) {
                    T t11111111 = snapshotStateList.get(i21);
                    Map map1111115 = map;
                    SnapshotStateList snapshotStateList1111111111116 = snapshotStateList;
                    map1111115.put(t11111111, ComposableLambdaKt.b(composerS, 963631013, true, new AnimatedContentKt$AnimatedContent$5$1(transition, t11111111, i20, lVar5, animatedContentScope, content, snapshotStateList1111111111116)));
                    i21++;
                    map = map1111115;
                    snapshotStateList = snapshotStateList1111111111116;
                    size = size;
                    alignmentO = alignmentO;
                    animatedContentScope = animatedContentScope;
                }
            }
            map2 = map;
            SnapshotStateList snapshotStateList1111111111117 = snapshotStateList;
            Alignment alignment1111115 = alignmentO;
            animatedContentScope2 = animatedContentScope;
            Transition.Segment<S> segmentK1111113 = transition.k();
            composerS.G(511388516);
            zK4 = composerS.k(segmentK1111113) | composerS.k(animatedContentScope2);
            contentTransformH = composerS.H();
            if (zK4) {
                contentTransformH = lVar5.invoke(animatedContentScope2);
                composerS.z(contentTransformH);
            } else {
                contentTransformH = lVar5.invoke(animatedContentScope2);
                composerS.z(contentTransformH);
            }
            composerS.Q();
            Modifier modifierB1111113 = modifier3.B(animatedContentScope2.g((ContentTransform) contentTransformH, composerS, 72));
            composerS.G(-492369756);
            objH4 = composerS.H();
            if (objH4 == Composer.Companion.a()) {
                objH4 = new AnimatedContentMeasurePolicy(animatedContentScope2);
                composerS.z(objH4);
            }
            composerS.Q();
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy1111113 = (AnimatedContentMeasurePolicy) objH4;
            composerS.G(-1323940314);
            Density density1111113 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111113 = ComposeUiNode.Companion;
            aVarA = companion1111113.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111113 = LayoutKt.c(modifierB1111113);
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
            Composer composerA1111113 = Updater.a(composerS);
            Updater.e(composerA1111113, animatedContentMeasurePolicy1111113, companion1111113.d());
            Updater.e(composerA1111113, density1111113, companion1111113.b());
            Updater.e(composerA1111113, layoutDirection1111114, companion1111113.c());
            Updater.e(composerA1111113, viewConfiguration1111113, companion1111113.f());
            composerS.o();
            qVarC1111113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-451584589);
            while (r0.hasNext()) {
                composerS.K(-1739565921, lVar4.invoke(obj));
                pVar = (p) map2.get(obj);
                if (pVar != null) {
                    pVar.invoke(composerS, 0);
                    l0 l0Var1111113 = l0.INSTANCE;
                }
                composerS.P();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            lVar6 = lVar4;
            modifier2 = modifier3;
            lVar7 = lVar5;
            alignment2 = alignment1111115;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$8(transition, modifier2, lVar7, alignment2, lVar6, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:49:0x0083  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0092  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
    @Composable
    @ExperimentalAnimationApi
    public static final <S> void b(S s, @Nullable Modifier modifier, @Nullable l<? super AnimatedContentScope<S>, ContentTransform> lVar, @Nullable Alignment alignment, @NotNull r<? super AnimatedVisibilityScope, ? super S, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        l<? super AnimatedContentScope<S>, ContentTransform> lVar2;
        int i14;
        int i15;
        Alignment alignment2;
        int i16;
        int i17;
        Modifier modifier3;
        l<? super AnimatedContentScope<S>, ContentTransform> lVar3;
        Alignment alignmentO;
        Modifier modifier4;
        l<? super AnimatedContentScope<S>, ContentTransform> lVar4;
        Alignment alignment3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(2124549995);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(s) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i18 = i11 & 2;
        if (i18 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        alignment2 = alignment;
                        if (composerS.k(alignment2)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    if ((i11 & 16) != 0) {
                        i12 |= CpioConstants.C_ISBLK;
                    } else if ((57344 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 16384;
                        } else {
                            i17 = 8192;
                        }
                        i12 |= i17;
                    }
                    if ((46811 & i12) == 9362 || !composerS.b()) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                        } else {
                            lVar3 = lVar2;
                        }
                        if (i15 != 0) {
                            alignmentO = Alignment.Companion.o();
                        } else {
                            alignmentO = alignment2;
                        }
                        a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                        modifier4 = modifier3;
                        lVar4 = lVar3;
                        alignment3 = alignmentO;
                    } else {
                        composerS.g();
                        modifier4 = modifier2;
                        lVar4 = lVar2;
                        alignment3 = alignment2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
                }
                i12 |= 3072;
                alignment2 = alignment;
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i12 |= i17;
                }
                if ((46811 & i12) == 9362) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                    } else {
                        lVar3 = lVar2;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                    modifier4 = modifier3;
                    lVar4 = lVar3;
                    alignment3 = alignmentO;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                    } else {
                        lVar3 = lVar2;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                    modifier4 = modifier3;
                    lVar4 = lVar3;
                    alignment3 = alignmentO;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
            }
            i12 |= 384;
            lVar2 = lVar;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    alignment2 = alignment;
                    if (composerS.k(alignment2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i12 |= i17;
                }
                if ((46811 & i12) == 9362) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                    } else {
                        lVar3 = lVar2;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                    modifier4 = modifier3;
                    lVar4 = lVar3;
                    alignment3 = alignmentO;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                    } else {
                        lVar3 = lVar2;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                    modifier4 = modifier3;
                    lVar4 = lVar3;
                    alignment3 = alignmentO;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
            }
            i12 |= 3072;
            alignment2 = alignment;
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i12 |= i17;
            }
            if ((46811 & i12) == 9362) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                } else {
                    lVar3 = lVar2;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                modifier4 = modifier3;
                lVar4 = lVar3;
                alignment3 = alignmentO;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                } else {
                    lVar3 = lVar2;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                modifier4 = modifier3;
                lVar4 = lVar3;
                alignment3 = alignmentO;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                lVar2 = lVar;
                if (composerS.k(lVar2)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    alignment2 = alignment;
                    if (composerS.k(alignment2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i12 |= i17;
                }
                if ((46811 & i12) == 9362) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                    } else {
                        lVar3 = lVar2;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                    modifier4 = modifier3;
                    lVar4 = lVar3;
                    alignment3 = alignmentO;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                    } else {
                        lVar3 = lVar2;
                    }
                    if (i15 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                    modifier4 = modifier3;
                    lVar4 = lVar3;
                    alignment3 = alignmentO;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
            }
            i12 |= 3072;
            alignment2 = alignment;
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i12 |= i17;
            }
            if ((46811 & i12) == 9362) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                } else {
                    lVar3 = lVar2;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                modifier4 = modifier3;
                lVar4 = lVar3;
                alignment3 = alignmentO;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                } else {
                    lVar3 = lVar2;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                modifier4 = modifier3;
                lVar4 = lVar3;
                alignment3 = alignmentO;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
        }
        i12 |= 384;
        lVar2 = lVar;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                alignment2 = alignment;
                if (composerS.k(alignment2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i12 |= i17;
            }
            if ((46811 & i12) == 9362) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                } else {
                    lVar3 = lVar2;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                modifier4 = modifier3;
                lVar4 = lVar3;
                alignment3 = alignmentO;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
                } else {
                    lVar3 = lVar2;
                }
                if (i15 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
                modifier4 = modifier3;
                lVar4 = lVar3;
                alignment3 = alignmentO;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
        }
        i12 |= 3072;
        alignment2 = alignment;
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.k(content)) {
                i17 = 16384;
            } else {
                i17 = 8192;
            }
            i12 |= i17;
        }
        if ((46811 & i12) == 9362) {
            if (i18 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
            } else {
                lVar3 = lVar2;
            }
            if (i15 != 0) {
                alignmentO = Alignment.Companion.o();
            } else {
                alignmentO = alignment2;
            }
            a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
            modifier4 = modifier3;
            lVar4 = lVar3;
            alignment3 = alignmentO;
        } else {
            if (i18 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                lVar3 = AnimatedContentKt$AnimatedContent$1.INSTANCE;
            } else {
                lVar3 = lVar2;
            }
            if (i15 != 0) {
                alignmentO = Alignment.Companion.o();
            } else {
                alignmentO = alignment2;
            }
            a(androidx.compose.animation.core.TransitionKt.e(s, "AnimatedContent", composerS, (i12 & 8) | 48 | (i12 & 14), 0), modifier3, lVar3, alignmentO, null, content, composerS, (i12 & 112) | (i12 & 896) | (i12 & 7168) | ((i12 << 3) & 458752), 8);
            modifier4 = modifier3;
            lVar4 = lVar3;
            alignment3 = alignmentO;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AnimatedContentKt$AnimatedContent$2(s, modifier4, lVar4, alignment3, content, i10, i11));
    }

    @ExperimentalAnimationApi
    @NotNull
    public static final SizeTransform c(boolean z6, @NotNull p<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> sizeAnimationSpec) {
        t.j(sizeAnimationSpec, "sizeAnimationSpec");
        return new SizeTransformImpl(z6, sizeAnimationSpec);
    }

    public static /* synthetic */ SizeTransform d(boolean z6, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        if ((i10 & 2) != 0) {
            pVar = AnimatedContentKt$SizeTransform$1.INSTANCE;
        }
        return c(z6, pVar);
    }

    @ExperimentalAnimationApi
    @NotNull
    public static final ContentTransform e(@NotNull EnterTransition enterTransition, @NotNull ExitTransition exit) {
        t.j(enterTransition, "<this>");
        t.j(exit, "exit");
        return new ContentTransform(enterTransition, exit, 0.0f, null, 12, null);
    }
}
