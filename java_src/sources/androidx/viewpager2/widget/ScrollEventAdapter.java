package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    private static final int NO_POSITION = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    private static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    private static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    private static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    private int mAdapterState;
    private ViewPager2.OnPageChangeCallback mCallback;
    private boolean mDataSetChangeHappened;
    private boolean mDispatchSelected;
    private int mDragStartPosition;
    private boolean mFakeDragging;

    @NonNull
    private final LinearLayoutManager mLayoutManager;

    @NonNull
    private final RecyclerView mRecyclerView;
    private boolean mScrollHappened;
    private int mScrollState;
    private ScrollEventValues mScrollValues;
    private int mTarget;

    @NonNull
    private final ViewPager2 mViewPager;

    private boolean i() {
        int i10 = this.mAdapterState;
        return i10 == 1 || i10 == 4;
    }

    private void l() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.a();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    int f() {
        return this.mScrollState;
    }

    boolean g() {
        return this.mFakeDragging;
    }

    boolean h() {
        return this.mScrollState == 0;
    }

    void j() {
        this.mDataSetChangeHappened = true;
    }

    void k(int i10, boolean z6) {
        this.mAdapterState = z6 ? 2 : 3;
        this.mFakeDragging = false;
        boolean z10 = this.mTarget != i10;
        this.mTarget = i10;
        c(2);
        if (z10) {
            b(i10);
        }
    }

    void m(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallback = onPageChangeCallback;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
        ScrollEventValues scrollEventValues;
        int i12;
        this.mScrollHappened = true;
        o();
        if (this.mDispatchSelected) {
            this.mDispatchSelected = false;
            if (i11 > 0) {
                scrollEventValues = this.mScrollValues;
                if (scrollEventValues.mOffsetPx != 0) {
                    i12 = scrollEventValues.mPosition + 1;
                } else {
                    i12 = this.mScrollValues.mPosition;
                }
            } else {
                if (i11 == 0) {
                    if ((i10 < 0) == this.mViewPager.e()) {
                        scrollEventValues = this.mScrollValues;
                        if (scrollEventValues.mOffsetPx != 0) {
                            i12 = scrollEventValues.mPosition + 1;
                        }
                    }
                }
                i12 = this.mScrollValues.mPosition;
            }
            this.mTarget = i12;
            if (this.mDragStartPosition != i12) {
                b(i12);
            }
        } else if (this.mAdapterState == 0) {
            int i13 = this.mScrollValues.mPosition;
            if (i13 == -1) {
                i13 = 0;
            }
            b(i13);
        }
        ScrollEventValues scrollEventValues2 = this.mScrollValues;
        int i14 = scrollEventValues2.mPosition;
        if (i14 == -1) {
            i14 = 0;
        }
        a(i14, scrollEventValues2.mOffset, scrollEventValues2.mOffsetPx);
        ScrollEventValues scrollEventValues3 = this.mScrollValues;
        int i15 = scrollEventValues3.mPosition;
        int i16 = this.mTarget;
        if ((i15 == i16 || i16 == -1) && scrollEventValues3.mOffsetPx == 0 && this.mScrollState != 1) {
            c(0);
            l();
        }
    }

    private static final class ScrollEventValues {
        float mOffset;
        int mOffsetPx;
        int mPosition;

        void a() {
            this.mPosition = -1;
            this.mOffset = 0.0f;
            this.mOffsetPx = 0;
        }

        ScrollEventValues() {
        }
    }

    private void a(int i10, float f, int i11) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.b(i10, f, i11);
        }
    }

    private void b(int i10) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.c(i10);
        }
    }

    private void c(int i10) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i10) {
            return;
        }
        this.mScrollState = i10;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.a(i10);
        }
    }

    private int d() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    private void n(boolean z6) {
        this.mFakeDragging = z6;
        this.mAdapterState = z6 ? 4 : 1;
        int i10 = this.mTarget;
        if (i10 != -1) {
            this.mDragStartPosition = i10;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = d();
        }
        c(1);
    }

    private void o() {
        int top;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        int iFindFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        scrollEventValues.mPosition = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            scrollEventValues.a();
            return;
        }
        View viewFindViewByPosition = this.mLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            scrollEventValues.a();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.mLayoutManager.getOrientation() == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - this.mRecyclerView.getPaddingLeft();
            if (this.mViewPager.e()) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - this.mRecyclerView.getPaddingTop();
        }
        int i10 = -top;
        scrollEventValues.mOffsetPx = i10;
        if (i10 >= 0) {
            scrollEventValues.mOffset = height == 0 ? 0.0f : i10 / height;
        } else {
            if (!new AnimateLayoutChangeDetector(this.mLayoutManager).d()) {
                throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.mOffsetPx)));
            }
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i10) {
        if (!(this.mAdapterState == 1 && this.mScrollState == 1) && i10 == 1) {
            n(false);
            return;
        }
        if (i() && i10 == 2) {
            if (this.mScrollHappened) {
                c(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        if (i() && i10 == 0) {
            o();
            if (this.mScrollHappened) {
                ScrollEventValues scrollEventValues = this.mScrollValues;
                if (scrollEventValues.mOffsetPx == 0) {
                    int i11 = this.mDragStartPosition;
                    int i12 = scrollEventValues.mPosition;
                    if (i11 != i12) {
                        b(i12);
                    }
                }
            } else {
                int i13 = this.mScrollValues.mPosition;
                if (i13 != -1) {
                    a(i13, 0.0f, 0);
                }
            }
            c(0);
            l();
        }
        if (this.mAdapterState == 2 && i10 == 0 && this.mDataSetChangeHappened) {
            o();
            ScrollEventValues scrollEventValues2 = this.mScrollValues;
            if (scrollEventValues2.mOffsetPx == 0) {
                int i14 = this.mTarget;
                int i15 = scrollEventValues2.mPosition;
                if (i14 != i15) {
                    if (i15 == -1) {
                        i15 = 0;
                    }
                    b(i15);
                }
                c(0);
                l();
            }
        }
    }

    ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.mScrollValues = new ScrollEventValues();
        l();
    }

    double e() {
        o();
        ScrollEventValues scrollEventValues = this.mScrollValues;
        return ((double) scrollEventValues.mPosition) + ((double) scrollEventValues.mOffset);
    }
}
