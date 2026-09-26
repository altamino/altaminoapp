package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
class ViewBoundsCheck {
    static final int CVE_PVE_POS = 12;
    static final int CVE_PVS_POS = 8;
    static final int CVS_PVE_POS = 4;
    static final int CVS_PVS_POS = 0;
    static final int EQ = 2;
    static final int FLAG_CVE_EQ_PVE = 8192;
    static final int FLAG_CVE_EQ_PVS = 512;
    static final int FLAG_CVE_GT_PVE = 4096;
    static final int FLAG_CVE_GT_PVS = 256;
    static final int FLAG_CVE_LT_PVE = 16384;
    static final int FLAG_CVE_LT_PVS = 1024;
    static final int FLAG_CVS_EQ_PVE = 32;
    static final int FLAG_CVS_EQ_PVS = 2;
    static final int FLAG_CVS_GT_PVE = 16;
    static final int FLAG_CVS_GT_PVS = 1;
    static final int FLAG_CVS_LT_PVE = 64;
    static final int FLAG_CVS_LT_PVS = 4;
    static final int GT = 1;
    static final int LT = 4;
    static final int MASK = 7;
    BoundFlags mBoundFlags = new BoundFlags();
    final Callback mCallback;

    static class BoundFlags {
        int mBoundFlags = 0;
        int mChildEnd;
        int mChildStart;
        int mRvEnd;
        int mRvStart;

        void a(int i10) {
            this.mBoundFlags = i10 | this.mBoundFlags;
        }

        int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        void d() {
            this.mBoundFlags = 0;
        }

        void e(int i10, int i11, int i12, int i13) {
            this.mRvStart = i10;
            this.mRvEnd = i11;
            this.mChildStart = i12;
            this.mChildEnd = i13;
        }

        boolean b() {
            int i10 = this.mBoundFlags;
            if ((i10 & 7) != 0 && (i10 & c(this.mChildStart, this.mRvStart)) == 0) {
                return false;
            }
            int i11 = this.mBoundFlags;
            if ((i11 & 112) != 0 && (i11 & (c(this.mChildStart, this.mRvEnd) << 4)) == 0) {
                return false;
            }
            int i12 = this.mBoundFlags;
            if ((i12 & 1792) != 0 && (i12 & (c(this.mChildEnd, this.mRvStart) << 8)) == 0) {
                return false;
            }
            int i13 = this.mBoundFlags;
            return (i13 & 28672) == 0 || (i13 & (c(this.mChildEnd, this.mRvEnd) << 12)) != 0;
        }

        BoundFlags() {
        }
    }

    interface Callback {
        int a();

        int b();

        int c(View view);

        int d(View view);

        View getChildAt(int i10);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewBounds {
    }

    View a(int i10, int i11, int i12, int i13) {
        int iA = this.mCallback.a();
        int iB = this.mCallback.b();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View childAt = this.mCallback.getChildAt(i10);
            this.mBoundFlags.e(iA, iB, this.mCallback.c(childAt), this.mCallback.d(childAt));
            if (i12 != 0) {
                this.mBoundFlags.d();
                this.mBoundFlags.a(i12);
                if (this.mBoundFlags.b()) {
                    return childAt;
                }
            }
            if (i13 != 0) {
                this.mBoundFlags.d();
                this.mBoundFlags.a(i13);
                if (this.mBoundFlags.b()) {
                    view = childAt;
                }
            }
            i10 += i14;
        }
        return view;
    }

    boolean b(View view, int i10) {
        this.mBoundFlags.e(this.mCallback.a(), this.mCallback.b(), this.mCallback.c(view), this.mCallback.d(view));
        if (i10 == 0) {
            return false;
        }
        this.mBoundFlags.d();
        this.mBoundFlags.a(i10);
        return this.mBoundFlags.b();
    }

    ViewBoundsCheck(Callback callback) {
        this.mCallback = callback;
    }
}
