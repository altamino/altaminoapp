package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
@ExperimentalFoundationApi
public final class MutableIntervalList<T> implements IntervalList<T> {
    public static final int $stable = 8;

    @NotNull
    private final MutableVector<IntervalList.Interval<T>> intervals = new MutableVector<>(new IntervalList.Interval[16], 0);

    @Nullable
    private IntervalList.Interval<T> lastInterval;
    private int size;

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public int getSize() {
        return this.size;
    }

    private final void b(int i10) {
        if (i10 < 0 || i10 >= getSize()) {
            throw new IndexOutOfBoundsException("Index " + i10 + ", size " + getSize());
        }
    }

    private final IntervalList.Interval<T> d(int i10) {
        IntervalList.Interval<T> interval = this.lastInterval;
        if (interval != null && c(interval, i10)) {
            return interval;
        }
        MutableVector<IntervalList.Interval<T>> mutableVector = this.intervals;
        IntervalList.Interval<T> interval2 = mutableVector.m()[IntervalListKt.b(mutableVector, i10)];
        this.lastInterval = interval2;
        return interval2;
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public void a(int i10, int i11, @NotNull l<? super IntervalList.Interval<T>, l0> block) {
        t.j(block, "block");
        b(i10);
        b(i11);
        if (i11 < i10) {
            throw new IllegalArgumentException(("toIndex (" + i11 + ") should be not smaller than fromIndex (" + i10 + ')').toString());
        }
        int iB = IntervalListKt.b(this.intervals, i10);
        int iB2 = this.intervals.m()[iB].b();
        while (iB2 <= i11) {
            IntervalList.Interval<T> interval = this.intervals.m()[iB];
            block.invoke(interval);
            iB2 += interval.a();
            iB++;
        }
    }

    private final boolean c(IntervalList.Interval<T> interval, int i10) {
        int iB = interval.b();
        if (i10 >= interval.b() + interval.a() || iB > i10) {
            return false;
        }
        return true;
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    @NotNull
    public IntervalList.Interval<T> get(int i10) {
        b(i10);
        return d(i10);
    }
}
