package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class NestedScrollingChildHelper {
    private boolean mIsNestedScrollingEnabled;
    private ViewParent mNestedScrollingParentNonTouch;
    private ViewParent mNestedScrollingParentTouch;
    private int[] mTempNestedScrollConsumed;
    private final View mView;

    private boolean h(int i10, int i11, int i12, int i13, @Nullable int[] iArr, int i14, @Nullable int[] iArr2) {
        ViewParent viewParentI;
        int i15;
        int i16;
        int[] iArr3;
        if (!m() || (viewParentI = i(i14)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.mView.getLocationInWindow(iArr);
            i15 = iArr[0];
            i16 = iArr[1];
        } else {
            i15 = 0;
            i16 = 0;
        }
        if (iArr2 == null) {
            int[] iArrJ = j();
            iArrJ[0] = 0;
            iArrJ[1] = 0;
            iArr3 = iArrJ;
        } else {
            iArr3 = iArr2;
        }
        ViewParentCompat.d(viewParentI, this.mView, i10, i11, i12, i13, i14, iArr3);
        if (iArr != null) {
            this.mView.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i15;
            iArr[1] = iArr[1] - i16;
        }
        return true;
    }

    private ViewParent i(int i10) {
        if (i10 == 0) {
            return this.mNestedScrollingParentTouch;
        }
        if (i10 != 1) {
            return null;
        }
        return this.mNestedScrollingParentNonTouch;
    }

    private int[] j() {
        if (this.mTempNestedScrollConsumed == null) {
            this.mTempNestedScrollConsumed = new int[2];
        }
        return this.mTempNestedScrollConsumed;
    }

    private void o(int i10, ViewParent viewParent) {
        if (i10 == 0) {
            this.mNestedScrollingParentTouch = viewParent;
        } else {
            if (i10 != 1) {
                return;
            }
            this.mNestedScrollingParentNonTouch = viewParent;
        }
    }

    public boolean c(int i10, int i11, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return d(i10, i11, iArr, iArr2, 0);
    }

    public boolean f(int i10, int i11, int i12, int i13, @Nullable int[] iArr) {
        return h(i10, i11, i12, i13, iArr, 0, null);
    }

    public boolean g(int i10, int i11, int i12, int i13, @Nullable int[] iArr, int i14) {
        return h(i10, i11, i12, i13, iArr, i14, null);
    }

    public boolean k() {
        return l(0);
    }

    public boolean m() {
        return this.mIsNestedScrollingEnabled;
    }

    public boolean p(int i10) {
        return q(i10, 0);
    }

    public void r() {
        s(0);
    }

    public void n(boolean z6) {
        if (this.mIsNestedScrollingEnabled) {
            ViewCompat.e1(this.mView);
        }
        this.mIsNestedScrollingEnabled = z6;
    }

    public NestedScrollingChildHelper(@NonNull View view) {
        this.mView = view;
    }

    public boolean a(float f, float f6, boolean z6) {
        ViewParent viewParentI;
        if (!m() || (viewParentI = i(0)) == null) {
            return false;
        }
        return ViewParentCompat.a(viewParentI, this.mView, f, f6, z6);
    }

    public boolean b(float f, float f6) {
        ViewParent viewParentI;
        if (!m() || (viewParentI = i(0)) == null) {
            return false;
        }
        return ViewParentCompat.b(viewParentI, this.mView, f, f6);
    }

    public boolean d(int i10, int i11, @Nullable int[] iArr, @Nullable int[] iArr2, int i12) {
        ViewParent viewParentI;
        int i13;
        int i14;
        if (!m() || (viewParentI = i(i12)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.mView.getLocationInWindow(iArr2);
            i13 = iArr2[0];
            i14 = iArr2[1];
        } else {
            i13 = 0;
            i14 = 0;
        }
        if (iArr == null) {
            iArr = j();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        ViewParentCompat.c(viewParentI, this.mView, i10, i11, iArr, i12);
        if (iArr2 != null) {
            this.mView.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i13;
            iArr2[1] = iArr2[1] - i14;
        }
        if (iArr[0] == 0 && iArr[1] == 0) {
            return false;
        }
        return true;
    }

    public void e(int i10, int i11, int i12, int i13, @Nullable int[] iArr, int i14, @Nullable int[] iArr2) {
        h(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    public boolean l(int i10) {
        if (i(i10) != null) {
            return true;
        }
        return false;
    }

    public boolean q(int i10, int i11) {
        if (l(i11)) {
            return true;
        }
        if (m()) {
            View view = this.mView;
            for (ViewParent parent = this.mView.getParent(); parent != null; parent = parent.getParent()) {
                if (ViewParentCompat.f(parent, view, this.mView, i10, i11)) {
                    o(i11, parent);
                    ViewParentCompat.e(parent, view, this.mView, i10, i11);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
            return false;
        }
        return false;
    }

    public void s(int i10) {
        ViewParent viewParentI = i(i10);
        if (viewParentI != null) {
            ViewParentCompat.g(viewParentI, this.mView, i10);
            o(i10, null);
        }
    }
}
