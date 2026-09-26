package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes9.dex */
public abstract class OrientationHelper {
    public static final int HORIZONTAL = 0;
    private static final int INVALID_SIZE = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    private int mLastTotalSpace;
    protected final RecyclerView.LayoutManager mLayoutManager;
    final Rect mTmpRect;

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i10);

    private OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.mLastTotalSpace = Integer.MIN_VALUE;
        this.mTmpRect = new Rect();
        this.mLayoutManager = layoutManager;
    }

    public static OrientationHelper a(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.1
            @Override // androidx.recyclerview.widget.OrientationHelper
            public int h() {
                return this.mLayoutManager.getWidth();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int i() {
                return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int j() {
                return this.mLayoutManager.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int k() {
                return this.mLayoutManager.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int l() {
                return this.mLayoutManager.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int m() {
                return this.mLayoutManager.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int n() {
                return (this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft()) - this.mLayoutManager.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int p(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.right;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int q(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.left;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void r(int i10) {
                this.mLayoutManager.offsetChildrenHorizontal(i10);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int d(View view) {
                return this.mLayoutManager.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.mLayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.mLayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int g(View view) {
                return this.mLayoutManager.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
            }
        };
    }

    public static OrientationHelper b(RecyclerView.LayoutManager layoutManager, int i10) {
        if (i10 == 0) {
            return a(layoutManager);
        }
        if (i10 == 1) {
            return c(layoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static OrientationHelper c(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.2
            @Override // androidx.recyclerview.widget.OrientationHelper
            public int h() {
                return this.mLayoutManager.getHeight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int i() {
                return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int j() {
                return this.mLayoutManager.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int k() {
                return this.mLayoutManager.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int l() {
                return this.mLayoutManager.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int m() {
                return this.mLayoutManager.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int n() {
                return (this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop()) - this.mLayoutManager.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int p(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.bottom;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int q(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.top;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void r(int i10) {
                this.mLayoutManager.offsetChildrenVertical(i10);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int d(View view) {
                return this.mLayoutManager.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.mLayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.mLayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int g(View view) {
                return this.mLayoutManager.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
            }
        };
    }

    public int o() {
        if (Integer.MIN_VALUE == this.mLastTotalSpace) {
            return 0;
        }
        return n() - this.mLastTotalSpace;
    }

    public void s() {
        this.mLastTotalSpace = n();
    }
}
