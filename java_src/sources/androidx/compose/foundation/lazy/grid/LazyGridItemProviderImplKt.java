package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import e8.l;
import j8.i;
import j8.o;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class LazyGridItemProviderImplKt {
    private static final int ExtraItemsNearTheSlidingWindow = 200;
    private static final int VisibleItemsSlidingWindowSize = 90;

    /* JADX INFO: Access modifiers changed from: private */
    public static final i b(int i10) {
        int i11 = VisibleItemsSlidingWindowSize;
        int i12 = (i10 / i11) * i11;
        int i13 = ExtraItemsNearTheSlidingWindow;
        return o.v(Math.max(i12 - i13, 0), i12 + i11 + i13);
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Map<Object, Integer> c(@NotNull i range, @NotNull IntervalList<LazyGridIntervalContent> list) {
        t.j(range, "range");
        t.j(list, "list");
        int iE = range.e();
        if (iE < 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        int iMin = Math.min(range.f(), list.getSize() - 1);
        if (iMin < iE) {
            return s0.h();
        }
        HashMap map = new HashMap();
        list.a(iE, iMin, new LazyGridItemProviderImplKt$generateKeyToIndexMap$1$1(iE, iMin, map));
        return map;
    }

    @Composable
    @ExperimentalFoundationApi
    @NotNull
    public static final LazyGridItemProvider d(@NotNull LazyGridState state, @NotNull l<? super LazyGridScope, l0> content, @Nullable Composer composer, int i10) {
        t.j(state, "state");
        t.j(content, "content");
        composer.G(1895482293);
        State stateN = SnapshotStateKt.n(content, composer, (i10 >> 3) & 14);
        composer.G(1157296644);
        boolean zK = composer.k(state);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            Snapshot snapshotA = Snapshot.Companion.a();
            try {
                Snapshot snapshotK = snapshotA.k();
                try {
                    i iVarB = b(state.j());
                    snapshotA.r(snapshotK);
                    snapshotA.d();
                    objH = SnapshotStateKt__SnapshotStateKt.e(iVarB, null, 2, null);
                    composer.z(objH);
                } catch (Throwable th) {
                    snapshotA.r(snapshotK);
                    throw th;
                }
            } catch (Throwable th2) {
                snapshotA.d();
                throw th2;
            }
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        EffectsKt.d(mutableState, new LazyGridItemProviderImplKt$rememberItemProvider$1(state, mutableState, null), composer, 0);
        composer.G(1157296644);
        boolean zK2 = composer.k(mutableState);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = new LazyGridItemProviderImpl(SnapshotStateKt.c(new LazyGridItemProviderImplKt$rememberItemProvider$2$1(stateN, mutableState)));
            composer.z(objH2);
        }
        composer.Q();
        LazyGridItemProviderImpl lazyGridItemProviderImpl = (LazyGridItemProviderImpl) objH2;
        composer.Q();
        return lazyGridItemProviderImpl;
    }
}
