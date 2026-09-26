package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.Lazy_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import e8.l;
import j8.i;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalFoundationApi
public final class LazyGridItemsSnapshot {
    private final boolean hasCustomSpans;

    @NotNull
    private final IntervalList<LazyGridIntervalContent> intervals;

    @NotNull
    private final Map<Object, Integer> keyToIndexMap;

    @NotNull
    private final LazyGridSpanLayoutProvider spanLayoutProvider;

    public final boolean c() {
        return this.hasCustomSpans;
    }

    @NotNull
    public final Map<Object, Integer> f() {
        return this.keyToIndexMap;
    }

    @NotNull
    public final LazyGridSpanLayoutProvider h() {
        return this.spanLayoutProvider;
    }

    public LazyGridItemsSnapshot(@NotNull IntervalList<LazyGridIntervalContent> intervals, boolean z6, @NotNull i nearestItemsRange) {
        t.j(intervals, "intervals");
        t.j(nearestItemsRange, "nearestItemsRange");
        this.intervals = intervals;
        this.hasCustomSpans = z6;
        this.spanLayoutProvider = new LazyGridSpanLayoutProvider(this);
        this.keyToIndexMap = LazyGridItemProviderImplKt.c(nearestItemsRange, intervals);
    }

    @Nullable
    public final Object b(int i10) {
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        return interval.c().d().invoke(Integer.valueOf(i10 - interval.b()));
    }

    public final int d() {
        return this.intervals.getSize();
    }

    @NotNull
    public final Object e(int i10) {
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        int iB = i10 - interval.b();
        l<Integer, Object> lVarB = interval.c().b();
        Object objInvoke = lVarB != null ? lVarB.invoke(Integer.valueOf(iB)) : null;
        return objInvoke == null ? Lazy_androidKt.a(i10) : objInvoke;
    }

    public final long g(@NotNull LazyGridItemSpanScope getSpan, int i10) {
        t.j(getSpan, "$this$getSpan");
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        return interval.c().c().invoke(getSpan, Integer.valueOf(i10 - interval.b())).g();
    }

    @Composable
    public final void a(int i10, @Nullable Composer composer, int i11) {
        Composer composerS = composer.s(-405085610);
        IntervalList.Interval<LazyGridIntervalContent> interval = this.intervals.get(i10);
        interval.c().a().invoke(LazyGridItemScopeImpl.INSTANCE, Integer.valueOf(i10 - interval.b()), composerS, 6);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new LazyGridItemsSnapshot$Item$1(this, i10, i11));
        }
    }
}
