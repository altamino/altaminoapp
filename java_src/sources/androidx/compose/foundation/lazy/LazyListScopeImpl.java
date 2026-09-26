package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import java.util.List;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class LazyListScopeImpl implements LazyListScope {

    @Nullable
    private List<Integer> _headerIndexes;

    @NotNull
    private final MutableIntervalList<LazyListIntervalContent> _intervals;

    @NotNull
    private final IntervalList<LazyListIntervalContent> intervals;

    @NotNull
    public final IntervalList<LazyListIntervalContent> b() {
        return this.intervals;
    }

    @NotNull
    public final List<Integer> a() {
        List<Integer> list = this._headerIndexes;
        return list == null ? v.m() : list;
    }

    public LazyListScopeImpl() {
        MutableIntervalList<LazyListIntervalContent> mutableIntervalList = new MutableIntervalList<>();
        this._intervals = mutableIntervalList;
        this.intervals = mutableIntervalList;
    }
}
