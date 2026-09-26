package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        private void c() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        void a(int i10) {
            if (i10 < 64) {
                this.mData &= ~(1 << i10);
                return;
            }
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.a(i10 - 64);
            }
        }

        int b(int i10) {
            Bucket bucket = this.mNext;
            if (bucket == null) {
                return i10 >= 64 ? Long.bitCount(this.mData) : Long.bitCount(this.mData & ((1 << i10) - 1));
            }
            return i10 < 64 ? Long.bitCount(this.mData & ((1 << i10) - 1)) : bucket.b(i10 - 64) + Long.bitCount(this.mData);
        }

        boolean d(int i10) {
            if (i10 < 64) {
                return (this.mData & (1 << i10)) != 0;
            }
            c();
            return this.mNext.d(i10 - 64);
        }

        void e(int i10, boolean z6) {
            if (i10 >= 64) {
                c();
                this.mNext.e(i10 - 64, z6);
                return;
            }
            long j6 = this.mData;
            boolean z10 = (Long.MIN_VALUE & j6) != 0;
            long j10 = (1 << i10) - 1;
            this.mData = ((j6 & (~j10)) << 1) | (j6 & j10);
            if (z6) {
                h(i10);
            } else {
                a(i10);
            }
            if (z10 || this.mNext != null) {
                c();
                this.mNext.e(0, z10);
            }
        }

        boolean f(int i10) {
            if (i10 >= 64) {
                c();
                return this.mNext.f(i10 - 64);
            }
            long j6 = 1 << i10;
            long j10 = this.mData;
            boolean z6 = (j10 & j6) != 0;
            long j11 = j10 & (~j6);
            this.mData = j11;
            long j12 = j6 - 1;
            this.mData = (j11 & j12) | Long.rotateRight((~j12) & j11, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.d(0)) {
                    h(63);
                }
                this.mNext.f(0);
            }
            return z6;
        }

        void g() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.g();
            }
        }

        void h(int i10) {
            if (i10 < 64) {
                this.mData |= 1 << i10;
            } else {
                c();
                this.mNext.h(i10 - 64);
            }
        }

        public String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }

        Bucket() {
        }
    }

    interface Callback {
        void a(View view);

        void addView(View view, int i10);

        int b();

        RecyclerView.ViewHolder c(View view);

        void d();

        void e(View view, int i10, ViewGroup.LayoutParams layoutParams);

        void f(int i10);

        int g(View view);

        View getChildAt(int i10);

        void h(View view);

        void i(int i10);
    }

    private int h(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int iB = this.mCallback.b();
        int i11 = i10;
        while (i11 < iB) {
            int iB2 = i10 - (i11 - this.mBucket.b(i11));
            if (iB2 == 0) {
                while (this.mBucket.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iB2;
        }
        return -1;
    }

    void b(View view, boolean z6) {
        a(view, -1, z6);
    }

    private void l(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.a(view);
    }

    private boolean t(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.h(view);
        return true;
    }

    void a(View view, int i10, boolean z6) {
        int iB = i10 < 0 ? this.mCallback.b() : h(i10);
        this.mBucket.e(iB, z6);
        if (z6) {
            l(view);
        }
        this.mCallback.addView(view, iB);
    }

    void c(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z6) {
        int iB = i10 < 0 ? this.mCallback.b() : h(i10);
        this.mBucket.e(iB, z6);
        if (z6) {
            l(view);
        }
        this.mCallback.e(view, iB, layoutParams);
    }

    View e(int i10) {
        int size = this.mHiddenViews.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view = this.mHiddenViews.get(i11);
            RecyclerView.ViewHolder viewHolderC = this.mCallback.c(view);
            if (viewHolderC.getLayoutPosition() == i10 && !viewHolderC.isInvalid() && !viewHolderC.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    int g() {
        return this.mCallback.b() - this.mHiddenViews.size();
    }

    View i(int i10) {
        return this.mCallback.getChildAt(i10);
    }

    int j() {
        return this.mCallback.b();
    }

    void k(View view) {
        int iG = this.mCallback.g(view);
        if (iG >= 0) {
            this.mBucket.h(iG);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iG = this.mCallback.g(view);
        if (iG == -1 || this.mBucket.d(iG)) {
            return -1;
        }
        return iG - this.mBucket.b(iG);
    }

    boolean n(View view) {
        return this.mHiddenViews.contains(view);
    }

    void o() {
        this.mBucket.g();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.h(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.d();
    }

    void p(View view) {
        int iG = this.mCallback.g(view);
        if (iG < 0) {
            return;
        }
        if (this.mBucket.f(iG)) {
            t(view);
        }
        this.mCallback.i(iG);
    }

    boolean r(View view) {
        int iG = this.mCallback.g(view);
        if (iG == -1) {
            t(view);
            return true;
        }
        if (!this.mBucket.d(iG)) {
            return false;
        }
        this.mBucket.f(iG);
        t(view);
        this.mCallback.i(iG);
        return true;
    }

    void s(View view) {
        int iG = this.mCallback.g(view);
        if (iG < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.mBucket.d(iG)) {
            this.mBucket.a(iG);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    void d(int i10) {
        int iH = h(i10);
        this.mBucket.f(iH);
        this.mCallback.f(iH);
    }

    View f(int i10) {
        return this.mCallback.getChildAt(h(i10));
    }

    void q(int i10) {
        int iH = h(i10);
        View childAt = this.mCallback.getChildAt(iH);
        if (childAt == null) {
            return;
        }
        if (this.mBucket.f(iH)) {
            t(childAt);
        }
        this.mCallback.i(iH);
    }
}
