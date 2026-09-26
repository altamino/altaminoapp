package androidx.compose.foundation.lazy;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class LazyListBeyondBoundsInfo {

    @NotNull
    private final MutableVector<Interval> beyondBoundsItems = new MutableVector<>(new Interval[16], 0);

    public static final class Interval {
        private final int end;
        private final int start;

        public final int a() {
            return this.end;
        }

        public final int b() {
            return this.start;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interval)) {
                return false;
            }
            Interval interval = (Interval) obj;
            return this.start == interval.start && this.end == interval.end;
        }

        public int hashCode() {
            return (this.start * 31) + this.end;
        }

        @NotNull
        public String toString() {
            return "Interval(start=" + this.start + ", end=" + this.end + ')';
        }

        public Interval(int i10, int i11) {
            this.start = i10;
            this.end = i11;
            if (i10 >= 0) {
                if (i11 >= i10) {
                    return;
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    @NotNull
    public final Interval a(int i10, int i11) {
        Interval interval = new Interval(i10, i11);
        this.beyondBoundsItems.b(interval);
        return interval;
    }

    public final int b() {
        int iA = this.beyondBoundsItems.l().a();
        MutableVector<Interval> mutableVector = this.beyondBoundsItems;
        int iN = mutableVector.n();
        if (iN > 0) {
            Interval[] intervalArrM = mutableVector.m();
            int i10 = 0;
            do {
                Interval interval = intervalArrM[i10];
                if (interval.a() > iA) {
                    iA = interval.a();
                }
                i10++;
            } while (i10 < iN);
        }
        return iA;
    }

    public final int c() {
        int iB = this.beyondBoundsItems.l().b();
        MutableVector<Interval> mutableVector = this.beyondBoundsItems;
        int iN = mutableVector.n();
        if (iN > 0) {
            Interval[] intervalArrM = mutableVector.m();
            int i10 = 0;
            do {
                Interval interval = intervalArrM[i10];
                if (interval.b() < iB) {
                    iB = interval.b();
                }
                i10++;
            } while (i10 < iN);
        }
        if (iB >= 0) {
            return iB;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public final boolean d() {
        return this.beyondBoundsItems.q();
    }

    public final void e(@NotNull Interval interval) {
        t.j(interval, "interval");
        this.beyondBoundsItems.s(interval);
    }
}
