package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.Lazy_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import e8.l;
import j8.i;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@ExperimentalFoundationApi
public final class LazyListItemsSnapshot {

    @NotNull
    private final List<Integer> headerIndexes;

    @NotNull
    private final IntervalList<LazyListIntervalContent> intervals;

    @NotNull
    private final Map<Object, Integer> keyToIndexMap;

    @NotNull
    public final List<Integer> c() {
        return this.headerIndexes;
    }

    @NotNull
    public final Map<Object, Integer> f() {
        return this.keyToIndexMap;
    }

    public LazyListItemsSnapshot(@NotNull IntervalList<LazyListIntervalContent> intervals, @NotNull List<Integer> headerIndexes, @NotNull i nearestItemsRange) {
        t.j(intervals, "intervals");
        t.j(headerIndexes, "headerIndexes");
        t.j(nearestItemsRange, "nearestItemsRange");
        this.intervals = intervals;
        this.headerIndexes = headerIndexes;
        this.keyToIndexMap = LazyListItemProviderImplKt.c(nearestItemsRange, intervals);
    }

    @Composable
    public final void a(@NotNull LazyItemScope scope, int i10, @Nullable Composer composer, int i11) {
        t.j(scope, "scope");
        Composer composerS = composer.s(1922528915);
        IntervalList.Interval<LazyListIntervalContent> interval = this.intervals.get(i10);
        interval.c().a().invoke(scope, Integer.valueOf(i10 - interval.b()), composerS, Integer.valueOf(i11 & 14));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyListItemsSnapshot$Item$1(this, scope, i10, i11));
    }

    @Nullable
    public final Object b(int i10) {
        IntervalList.Interval<LazyListIntervalContent> interval = this.intervals.get(i10);
        return interval.c().c().invoke(Integer.valueOf(i10 - interval.b()));
    }

    public final int d() {
        return this.intervals.getSize();
    }

    @NotNull
    public final Object e(int i10) {
        IntervalList.Interval<LazyListIntervalContent> interval = this.intervals.get(i10);
        int iB = i10 - interval.b();
        l<Integer, Object> lVarB = interval.c().b();
        Object objInvoke = lVarB != null ? lVarB.invoke(Integer.valueOf(iB)) : null;
        return objInvoke == null ? Lazy_androidKt.a(i10) : objInvoke;
    }
}
