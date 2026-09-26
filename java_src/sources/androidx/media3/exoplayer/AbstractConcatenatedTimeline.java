package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.ShuffleOrder;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public abstract class AbstractConcatenatedTimeline extends Timeline {
    private final int childCount;
    private final boolean isAtomic;
    private final ShuffleOrder shuffleOrder;

    protected abstract Object B(int i10);

    protected abstract int D(int i10);

    protected abstract int E(int i10);

    protected abstract Timeline H(int i10);

    protected abstract int w(Object obj);

    protected abstract int x(int i10);

    protected abstract int y(int i10);

    public static Object A(Object obj) {
        return ((Pair) obj).first;
    }

    private int F(int i10, boolean z6) {
        if (z6) {
            return this.shuffleOrder.getNextIndex(i10);
        }
        if (i10 < this.childCount - 1) {
            return i10 + 1;
        }
        return -1;
    }

    private int G(int i10, boolean z6) {
        if (z6) {
            return this.shuffleOrder.getPreviousIndex(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }

    public static Object z(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // androidx.media3.common.Timeline
    public int e(boolean z6) {
        if (this.childCount == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z6 = false;
        }
        int firstIndex = z6 ? this.shuffleOrder.getFirstIndex() : 0;
        while (H(firstIndex).u()) {
            firstIndex = F(firstIndex, z6);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return E(firstIndex) + H(firstIndex).e(z6);
    }

    @Override // androidx.media3.common.Timeline
    public final int f(Object obj) {
        int iF;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objA = A(obj);
        Object objZ = z(obj);
        int iW = w(objA);
        if (iW == -1 || (iF = H(iW).f(objZ)) == -1) {
            return -1;
        }
        return D(iW) + iF;
    }

    @Override // androidx.media3.common.Timeline
    public int g(boolean z6) {
        int i10 = this.childCount;
        if (i10 == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z6 = false;
        }
        int lastIndex = z6 ? this.shuffleOrder.getLastIndex() : i10 - 1;
        while (H(lastIndex).u()) {
            lastIndex = G(lastIndex, z6);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return E(lastIndex) + H(lastIndex).g(z6);
    }

    @Override // androidx.media3.common.Timeline
    public int i(int i10, int i11, boolean z6) {
        if (this.isAtomic) {
            if (i11 == 1) {
                i11 = 2;
            }
            z6 = false;
        }
        int iY = y(i10);
        int iE = E(iY);
        int i12 = H(iY).i(i10 - iE, i11 != 2 ? i11 : 0, z6);
        if (i12 != -1) {
            return iE + i12;
        }
        int iF = F(iY, z6);
        while (iF != -1 && H(iF).u()) {
            iF = F(iF, z6);
        }
        if (iF != -1) {
            return E(iF) + H(iF).e(z6);
        }
        if (i11 == 2) {
            return e(z6);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public int p(int i10, int i11, boolean z6) {
        if (this.isAtomic) {
            if (i11 == 1) {
                i11 = 2;
            }
            z6 = false;
        }
        int iY = y(i10);
        int iE = E(iY);
        int iP = H(iY).p(i10 - iE, i11 != 2 ? i11 : 0, z6);
        if (iP != -1) {
            return iE + iP;
        }
        int iG = G(iY, z6);
        while (iG != -1 && H(iG).u()) {
            iG = G(iG, z6);
        }
        if (iG != -1) {
            return E(iG) + H(iG).g(z6);
        }
        if (i11 == 2) {
            return g(z6);
        }
        return -1;
    }

    public AbstractConcatenatedTimeline(boolean z6, ShuffleOrder shuffleOrder) {
        this.isAtomic = z6;
        this.shuffleOrder = shuffleOrder;
        this.childCount = shuffleOrder.getLength();
    }

    public static Object C(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
        int iX = x(i10);
        int iE = E(iX);
        H(iX).k(i10 - D(iX), period, z6);
        period.windowIndex += iE;
        if (z6) {
            period.uid = C(B(iX), Assertions.e(period.uid));
        }
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period l(Object obj, Timeline.Period period) {
        Object objA = A(obj);
        Object objZ = z(obj);
        int iW = w(objA);
        int iE = E(iW);
        H(iW).l(objZ, period);
        period.windowIndex += iE;
        period.uid = obj;
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final Object q(int i10) {
        int iX = x(i10);
        return C(B(iX), H(iX).q(i10 - D(iX)));
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Window s(int i10, Timeline.Window window, long j6) {
        int iY = y(i10);
        int iE = E(iY);
        int iD = D(iY);
        H(iY).s(i10 - iE, window, j6);
        Object objB = B(iY);
        if (!Timeline.Window.SINGLE_WINDOW_UID.equals(window.uid)) {
            objB = C(objB, window.uid);
        }
        window.uid = objB;
        window.firstPeriodIndex += iD;
        window.lastPeriodIndex += iD;
        return window;
    }
}
