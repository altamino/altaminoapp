package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyLayoutKt {
    private static final int MaxItemsToRetainForReuse = 7;

    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0050  */
    /* JADX WARN: Code duplicated, block: B:30:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:51:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:69:0x0117  */
    /* JADX WARN: Code duplicated, block: B:71:0x011d  */
    /* JADX WARN: Code duplicated, block: B:76:0x013f  */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    @Composable
    @ExperimentalFoundationApi
    @ComposableInferredTarget
    public static final void a(@NotNull LazyLayoutItemProvider itemProvider, @Nullable Modifier modifier, @Nullable LazyLayoutPrefetchState lazyLayoutPrefetchState, @NotNull p<? super LazyLayoutMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Modifier modifier2;
        LazyLayoutPrefetchState lazyLayoutPrefetchState2;
        State stateN;
        SaveableStateHolder saveableStateHolderA;
        Object objH;
        Composer.Companion companion;
        LazyLayoutItemContentFactory lazyLayoutItemContentFactory;
        Object objH2;
        SubcomposeLayoutState subcomposeLayoutState;
        boolean zK;
        Object objH3;
        Modifier modifier3;
        LazyLayoutPrefetchState lazyLayoutPrefetchState3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(itemProvider, "itemProvider");
        t.j(measurePolicy, "measurePolicy");
        Composer composerS = composer.s(852831187);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(itemProvider) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i16 = i11 & 2;
        if (i16 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.k(lazyLayoutPrefetchState)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i11 & 8) != 0) {
                    i12 |= 3072;
                } else if ((i10 & 7168) == 0) {
                    if (composerS.k(measurePolicy)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i12 |= i15;
                }
                if ((i12 & 5851) == 1170 || !composerS.b()) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        lazyLayoutPrefetchState2 = null;
                    } else {
                        lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                    }
                    stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
                    saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    subcomposeLayoutState = (SubcomposeLayoutState) objH2;
                    composerS.G(617316839);
                    if (lazyLayoutPrefetchState2 != null) {
                        LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                        l0 l0Var = l0.INSTANCE;
                    }
                    composerS.Q();
                    composerS.G(511388516);
                    zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
                    objH3 = composerS.H();
                    if (zK || objH3 == companion.a()) {
                        objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
                    modifier3 = modifier2;
                    lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
                } else {
                    composerS.g();
                    modifier3 = modifier;
                    lazyLayoutPrefetchState3 = lazyLayoutPrefetchState;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyLayoutKt$LazyLayout$3(itemProvider, modifier3, lazyLayoutPrefetchState3, measurePolicy, i10, i11));
            }
            i12 |= 384;
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(measurePolicy)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            if ((i12 & 5851) == 1170) {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    lazyLayoutPrefetchState2 = null;
                } else {
                    lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                }
                stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
                saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                    composerS.z(objH);
                }
                composerS.Q();
                lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                    composerS.z(objH2);
                }
                composerS.Q();
                subcomposeLayoutState = (SubcomposeLayoutState) objH2;
                composerS.G(617316839);
                if (lazyLayoutPrefetchState2 != null) {
                    LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                    l0 l0Var2 = l0.INSTANCE;
                }
                composerS.Q();
                composerS.G(511388516);
                zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                }
                composerS.Q();
                SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
                modifier3 = modifier2;
                lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
            } else {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    lazyLayoutPrefetchState2 = null;
                } else {
                    lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                }
                stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
                saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                    composerS.z(objH);
                }
                composerS.Q();
                lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                    composerS.z(objH2);
                }
                composerS.Q();
                subcomposeLayoutState = (SubcomposeLayoutState) objH2;
                composerS.G(617316839);
                if (lazyLayoutPrefetchState2 != null) {
                    LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                    l0 l0Var3 = l0.INSTANCE;
                }
                composerS.Q();
                composerS.G(511388516);
                zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                }
                composerS.Q();
                SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
                modifier3 = modifier2;
                lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyLayoutKt$LazyLayout$3(itemProvider, modifier3, lazyLayoutPrefetchState3, measurePolicy, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.k(lazyLayoutPrefetchState)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(measurePolicy)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            if ((i12 & 5851) == 1170) {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    lazyLayoutPrefetchState2 = null;
                } else {
                    lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                }
                stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
                saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                    composerS.z(objH);
                }
                composerS.Q();
                lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                    composerS.z(objH2);
                }
                composerS.Q();
                subcomposeLayoutState = (SubcomposeLayoutState) objH2;
                composerS.G(617316839);
                if (lazyLayoutPrefetchState2 != null) {
                    LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                    l0 l0Var4 = l0.INSTANCE;
                }
                composerS.Q();
                composerS.G(511388516);
                zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                }
                composerS.Q();
                SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
                modifier3 = modifier2;
                lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
            } else {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    lazyLayoutPrefetchState2 = null;
                } else {
                    lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                }
                stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
                saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                    composerS.z(objH);
                }
                composerS.Q();
                lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                    composerS.z(objH2);
                }
                composerS.Q();
                subcomposeLayoutState = (SubcomposeLayoutState) objH2;
                composerS.G(617316839);
                if (lazyLayoutPrefetchState2 != null) {
                    LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                    l0 l0Var5 = l0.INSTANCE;
                }
                composerS.Q();
                composerS.G(511388516);
                zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                    composerS.z(objH3);
                }
                composerS.Q();
                SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
                modifier3 = modifier2;
                lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyLayoutKt$LazyLayout$3(itemProvider, modifier3, lazyLayoutPrefetchState3, measurePolicy, i10, i11));
        }
        i12 |= 384;
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(measurePolicy)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i12 |= i15;
        }
        if ((i12 & 5851) == 1170) {
            if (i16 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i13 != 0) {
                lazyLayoutPrefetchState2 = null;
            } else {
                lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
            }
            stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
            saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                composerS.z(objH);
            }
            composerS.Q();
            lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                composerS.z(objH2);
            }
            composerS.Q();
            subcomposeLayoutState = (SubcomposeLayoutState) objH2;
            composerS.G(617316839);
            if (lazyLayoutPrefetchState2 != null) {
                LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                l0 l0Var6 = l0.INSTANCE;
            }
            composerS.Q();
            composerS.G(511388516);
            zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
            objH3 = composerS.H();
            if (zK) {
                objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                composerS.z(objH3);
            } else {
                objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                composerS.z(objH3);
            }
            composerS.Q();
            SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
            modifier3 = modifier2;
            lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
        } else {
            if (i16 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i13 != 0) {
                lazyLayoutPrefetchState2 = null;
            } else {
                lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
            }
            stateN = SnapshotStateKt.n(itemProvider, composerS, i12 & 14);
            saveableStateHolderA = SaveableStateHolderKt.a(composerS, 0);
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new LazyLayoutItemContentFactory(saveableStateHolderA, new LazyLayoutKt$LazyLayout$itemContentFactory$1$1(stateN));
                composerS.z(objH);
            }
            composerS.Q();
            lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                composerS.z(objH2);
            }
            composerS.Q();
            subcomposeLayoutState = (SubcomposeLayoutState) objH2;
            composerS.G(617316839);
            if (lazyLayoutPrefetchState2 != null) {
                LazyLayoutPrefetcher_androidKt.a(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, composerS, ((i12 >> 6) & 14) | 64 | (SubcomposeLayoutState.$stable << 6));
                l0 l0Var7 = l0.INSTANCE;
            }
            composerS.Q();
            composerS.G(511388516);
            zK = composerS.k(lazyLayoutItemContentFactory) | composerS.k(measurePolicy);
            objH3 = composerS.H();
            if (zK) {
                objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                composerS.z(objH3);
            } else {
                objH3 = new LazyLayoutKt$LazyLayout$2$1(lazyLayoutItemContentFactory, measurePolicy);
                composerS.z(objH3);
            }
            composerS.Q();
            SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (p) objH3, composerS, SubcomposeLayoutState.$stable | (i12 & 112), 0);
            modifier3 = modifier2;
            lazyLayoutPrefetchState3 = lazyLayoutPrefetchState2;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyLayoutKt$LazyLayout$3(itemProvider, modifier3, lazyLayoutPrefetchState3, measurePolicy, i10, i11));
    }
}
