package com.narvii.widget;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Transformation;
import android.widget.ListView;
import android.widget.Scroller;
import com.narvii.list.NVListFragment;
import com.narvii.util.ws.WsMessage;

/* JADX INFO: loaded from: classes5.dex */
public class Gallery extends AbsSpinner implements GestureDetector.OnGestureListener {
    private static final int SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT = 250;
    private int mAnimationDuration;
    private AdapterView.AdapterContextMenuInfo mContextMenuInfo;
    private final Runnable mDisableSuppressSelectionChangedRunnable;
    private int mDownTouchPosition;
    private View mDownTouchView;
    private final FlingRunnable mFlingRunnable;
    private final GestureDetector mGestureDetector;
    private int mGravity;
    private boolean mIsFirstScroll;
    private boolean mIsRtl;
    private int mLeftMost;
    private boolean mReceivedInvokeKeyDown;
    private int mRightMost;
    private View mSelectedChild;
    private boolean mShouldCallbackDuringFling;
    private boolean mShouldCallbackOnUnselectedItemClick;
    private boolean mShouldStopFling;
    private int mSpacing;
    private boolean mSuppressSelectionChanged;
    private float mUnselectedAlpha;

    private class FlingRunnable implements Runnable {
        private int mLastFlingX;
        private final Scroller mScroller;

        public FlingRunnable() {
            this.mScroller = new Scroller(Gallery.this.getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void endFling(boolean z6) {
            this.mScroller.forceFinished(true);
            if (z6) {
                Gallery.this.scrollIntoSlots();
            }
        }

        private void startCommon() {
            Gallery.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            int childCount;
            int iMax;
            int childCount2;
            Gallery gallery = Gallery.this;
            if (gallery.mItemCount == 0) {
                endFling(true);
                return;
            }
            gallery.mShouldStopFling = false;
            Scroller scroller = this.mScroller;
            boolean zComputeScrollOffset = scroller.computeScrollOffset();
            int currX = scroller.getCurrX();
            int i10 = this.mLastFlingX - currX;
            if (i10 > 0) {
                Gallery gallery2 = Gallery.this;
                if (gallery2.mIsRtl) {
                    Gallery gallery3 = Gallery.this;
                    childCount2 = (gallery3.mFirstPosition + gallery3.getChildCount()) - 1;
                } else {
                    childCount2 = Gallery.this.mFirstPosition;
                }
                gallery2.mDownTouchPosition = childCount2;
                iMax = Math.min(((Gallery.this.getWidth() - Gallery.this.getPaddingLeft()) - Gallery.this.getPaddingRight()) - 1, i10);
            } else {
                Gallery gallery4 = Gallery.this;
                if (gallery4.mIsRtl) {
                    childCount = Gallery.this.mFirstPosition;
                } else {
                    Gallery gallery5 = Gallery.this;
                    childCount = (gallery5.mFirstPosition + gallery5.getChildCount()) - 1;
                }
                gallery4.mDownTouchPosition = childCount;
                iMax = Math.max(-(((Gallery.this.getWidth() - Gallery.this.getPaddingRight()) - Gallery.this.getPaddingLeft()) - 1), i10);
            }
            Gallery.this.trackMotionScroll(iMax);
            if (!zComputeScrollOffset || Gallery.this.mShouldStopFling) {
                endFling(true);
            } else {
                this.mLastFlingX = currX;
                Gallery.this.post(this);
            }
        }

        public void startUsingDistance(int i10) {
            if (i10 == 0) {
                return;
            }
            startCommon();
            this.mLastFlingX = 0;
            this.mScroller.startScroll(0, 0, -i10, 0, Gallery.this.mAnimationDuration);
            Gallery.this.post(this);
        }

        public void startUsingVelocity(int i10) {
            if (i10 == 0) {
                return;
            }
            startCommon();
            int i11 = i10 < 0 ? Integer.MAX_VALUE : 0;
            this.mLastFlingX = i11;
            this.mScroller.fling(i11, 0, i10, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            Gallery.this.post(this);
        }

        public void stop(boolean z6) {
            Gallery.this.removeCallbacks(this);
            endFling(z6);
        }
    }

    public Gallery(Context context) {
        this(context, null);
    }

    private void dispatchPress(View view) {
        if (view != null) {
            view.setPressed(true);
        }
        setPressed(true);
    }

    private ListView findListParent() {
        View view = this;
        for (int i10 = 0; i10 < 6; i10++) {
            if (view.getParent() instanceof ViewGroup) {
                view = (View) view.getParent();
                if (view instanceof ListView) {
                    return (ListView) view;
                }
            }
        }
        return null;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollExtent() {
        return 1;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollOffset() {
        return this.mSelectedPosition;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        return this.mItemCount;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.dispatch(this, null, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetSelected(boolean z6) {
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        int i12 = this.mSelectedPosition - this.mFirstPosition;
        if (i12 < 0) {
            return i11;
        }
        if (i11 == i10 - 1) {
            return i12;
        }
        return i11 >= i12 ? i11 + 1 : i11;
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    @Override // com.narvii.widget.AbsSpinner
    void layout(int i10, boolean z6) {
        this.mIsRtl = false;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        if (this.mItemCount == 0) {
            resetList();
            return;
        }
        int i11 = this.mNextSelectedPosition;
        if (i11 >= 0) {
            setSelectedPositionInt(i11);
        }
        recycleAllViews();
        detachAllViewsFromParent();
        this.mRightMost = 0;
        this.mLeftMost = 0;
        int i12 = this.mSelectedPosition;
        this.mFirstPosition = i12;
        makeAndAddView(i12, 0, 0, true).offsetLeftAndRight(getGalleryLockPoint());
        fillToGalleryRight();
        fillToGalleryLeft();
        this.mRecycler.clear();
        invalidate();
        checkSelectionChanged();
        this.mDataChanged = false;
        this.mNeedSync = false;
        setNextSelectedPositionInt(this.mSelectedPosition);
        updateSelectedItemMetadata();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    public void setAnimationDuration(int i10) {
        this.mAnimationDuration = i10;
    }

    public void setCallbackDuringFling(boolean z6) {
        this.mShouldCallbackDuringFling = z6;
    }

    public void setCallbackOnUnselectedItemClick(boolean z6) {
        this.mShouldCallbackOnUnselectedItemClick = z6;
    }

    public void setSpacing(int i10) {
        this.mSpacing = i10;
    }

    public void setUnselectedAlpha(float f) {
        this.mUnselectedAlpha = f;
    }

    public Gallery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.galleryStyle);
    }

    private int calculateTop(View view, boolean z6) {
        int measuredHeight = z6 ? getMeasuredHeight() : getHeight();
        int measuredHeight2 = z6 ? view.getMeasuredHeight() : view.getHeight();
        int i10 = this.mGravity;
        if (i10 == 16) {
            Rect rect = this.mSpinnerPadding;
            int i11 = measuredHeight - rect.bottom;
            int i12 = rect.top;
            return i12 + (((i11 - i12) - measuredHeight2) / 2);
        }
        if (i10 == 48) {
            return this.mSpinnerPadding.top;
        }
        if (i10 != 80) {
            return 0;
        }
        return (measuredHeight - this.mSpinnerPadding.bottom) - measuredHeight2;
    }

    private boolean dispatchLongPress(View view, int i10, long j6) {
        AdapterView.OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        boolean zOnItemLongClick = onItemLongClickListener != null ? onItemLongClickListener.onItemLongClick(this, this.mDownTouchView, this.mDownTouchPosition, j6) : false;
        if (!zOnItemLongClick) {
            this.mContextMenuInfo = new AdapterView.AdapterContextMenuInfo(view, i10, j6);
            zOnItemLongClick = super.showContextMenuForChild(this);
        }
        if (zOnItemLongClick) {
            performHapticFeedback(0);
        }
        return zOnItemLongClick;
    }

    private void fillToGalleryLeft() {
        if (this.mIsRtl) {
            fillToGalleryLeftRtl();
        } else {
            fillToGalleryLeftLtr();
        }
    }

    private void fillToGalleryLeftLtr() {
        int right;
        int i10;
        int i11 = this.mSpacing;
        int paddingLeft = getPaddingLeft();
        View childAt = getChildAt(0);
        if (childAt != null) {
            i10 = this.mFirstPosition - 1;
            right = childAt.getLeft() - i11;
        } else {
            right = (getRight() - getLeft()) - getPaddingRight();
            this.mShouldStopFling = true;
            i10 = 0;
        }
        while (right > paddingLeft && i10 >= 0) {
            View viewMakeAndAddView = makeAndAddView(i10, i10 - this.mSelectedPosition, right, false);
            this.mFirstPosition = i10;
            right = viewMakeAndAddView.getLeft() - i11;
            i10--;
        }
    }

    private void fillToGalleryLeftRtl() {
        int i10;
        int right;
        int i11 = this.mSpacing;
        int paddingLeft = getPaddingLeft();
        int childCount = getChildCount();
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i10 = this.mFirstPosition + childCount;
            right = childAt.getLeft() - i11;
        } else {
            i10 = this.mItemCount - 1;
            this.mFirstPosition = i10;
            right = (getRight() - getLeft()) - getPaddingRight();
            this.mShouldStopFling = true;
        }
        while (right > paddingLeft && i10 < this.mItemCount) {
            right = makeAndAddView(i10, i10 - this.mSelectedPosition, right, false).getLeft() - i11;
            i10++;
        }
    }

    private void fillToGalleryRight() {
        if (this.mIsRtl) {
            fillToGalleryRightRtl();
        } else {
            fillToGalleryRightLtr();
        }
    }

    private void fillToGalleryRightLtr() {
        int i10;
        int paddingLeft;
        int i11 = this.mSpacing;
        int right = (getRight() - getLeft()) - getPaddingRight();
        int childCount = getChildCount();
        int i12 = this.mItemCount;
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i10 = this.mFirstPosition + childCount;
            paddingLeft = childAt.getRight() + i11;
        } else {
            i10 = this.mItemCount - 1;
            this.mFirstPosition = i10;
            paddingLeft = getPaddingLeft();
            this.mShouldStopFling = true;
        }
        while (paddingLeft < right && i10 < i12) {
            paddingLeft = makeAndAddView(i10, i10 - this.mSelectedPosition, paddingLeft, true).getRight() + i11;
            i10++;
        }
    }

    private void fillToGalleryRightRtl() {
        int paddingLeft;
        int i10 = this.mSpacing;
        int right = (getRight() - getLeft()) - getPaddingRight();
        int i11 = 0;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i11 = this.mFirstPosition - 1;
            paddingLeft = childAt.getRight() + i10;
        } else {
            paddingLeft = getPaddingLeft();
            this.mShouldStopFling = true;
        }
        while (paddingLeft < right && i11 >= 0) {
            View viewMakeAndAddView = makeAndAddView(i11, i11 - this.mSelectedPosition, paddingLeft, true);
            this.mFirstPosition = i11;
            paddingLeft = viewMakeAndAddView.getRight() + i10;
            i11--;
        }
    }

    private View makeAndAddView(int i10, int i11, int i12, boolean z6) {
        View view;
        if (this.mDataChanged || (view = this.mRecycler.get(i10)) == null) {
            View view2 = this.mAdapter.getView(i10, null, this);
            setUpChild(view2, i11, i12, z6);
            return view2;
        }
        int left = view.getLeft();
        this.mRightMost = Math.max(this.mRightMost, view.getMeasuredWidth() + left);
        this.mLeftMost = Math.min(this.mLeftMost, left);
        setUpChild(view, i11, i12, z6);
        return view;
    }

    private void onFinishedMovement() {
        if (this.mSuppressSelectionChanged) {
            this.mSuppressSelectionChanged = false;
            super.selectionChanged();
        }
        invalidate();
    }

    private void setSelectionToChildClosestToLockPoint() {
        if (this.mSelectedChild == null) {
            return;
        }
        int galleryLockPoint = getGalleryLockPoint();
        int childCount = getChildCount() - 1;
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        while (true) {
            if (childCount < 0) {
                childCount = i11;
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt.getLeft() == galleryLockPoint && childAt.getRight() >= galleryLockPoint) {
                break;
            }
            int iMin = Math.min(Math.abs(childAt.getLeft() - galleryLockPoint), Math.abs(childAt.getRight() - galleryLockPoint));
            if (iMin < i10) {
                i11 = childCount;
                i10 = iMin;
            }
            childCount--;
        }
        int i12 = this.mFirstPosition + childCount;
        if (i12 != this.mSelectedPosition) {
            setSelectedPositionInt(i12);
            setNextSelectedPositionInt(i12);
            checkSelectionChanged();
        }
    }

    private void updateSelectedItemMetadata() {
        View view = this.mSelectedChild;
        View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
        this.mSelectedChild = childAt;
        if (childAt == null) {
            return;
        }
        childAt.setSelected(true);
        childAt.setFocusable(true);
        if (hasFocus()) {
            childAt.requestFocus();
        }
        if (view == null || view == childAt) {
            return;
        }
        view.setSelected(false);
        view.setFocusable(false);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z6) {
        View view = this.mSelectedChild;
        if (view != null) {
            view.setPressed(z6);
        }
    }

    @Override // com.narvii.widget.AbsSpinner, android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.LayoutParams(getContext(), attributeSet);
    }

    boolean moveNext() {
        int i10;
        int i11 = this.mItemCount;
        if (i11 <= 0 || (i10 = this.mSelectedPosition) >= i11 - 1) {
            return false;
        }
        scrollToChild((i10 - this.mFirstPosition) + 1);
        return true;
    }

    boolean movePrevious() {
        int i10;
        if (this.mItemCount <= 0 || (i10 = this.mSelectedPosition) <= 0) {
            return false;
        }
        setSelection(i10 - 1);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.mFlingRunnable.stop(false);
        int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        this.mDownTouchPosition = iPointToPosition;
        if (iPointToPosition >= 0) {
            View childAt = getChildAt(iPointToPosition - this.mFirstPosition);
            this.mDownTouchView = childAt;
            childAt.setPressed(true);
        }
        this.mIsFirstScroll = true;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
        if (!this.mShouldCallbackDuringFling) {
            removeCallbacks(this.mDisableSuppressSelectionChangedRunnable);
            if (!this.mSuppressSelectionChanged) {
                this.mSuppressSelectionChanged = true;
            }
        }
        this.mFlingRunnable.startUsingVelocity((int) (-f));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 66) {
            switch (i10) {
                case 21:
                    if (movePrevious()) {
                        playSoundEffect(1);
                    }
                    return true;
                case 22:
                    if (moveNext()) {
                        playSoundEffect(3);
                    }
                    return true;
                case 23:
                    this.mReceivedInvokeKeyDown = true;
                    break;
            }
        } else {
            this.mReceivedInvokeKeyDown = true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 != 23 && i10 != 66) {
            return super.onKeyUp(i10, keyEvent);
        }
        if (this.mReceivedInvokeKeyDown && this.mItemCount > 0) {
            dispatchPress(this.mSelectedChild);
            postDelayed(new Runnable() { // from class: com.narvii.widget.Gallery.2
                @Override // java.lang.Runnable
                public void run() {
                    Gallery.this.dispatchUnpress();
                }
            }, ViewConfiguration.getPressedStateDuration());
            View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
            int i11 = this.mSelectedPosition;
            performItemClick(childAt, i11, this.mAdapter.getItemId(i11));
        }
        this.mReceivedInvokeKeyDown = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.mDownTouchPosition < 0) {
            return;
        }
        performHapticFeedback(0);
        dispatchLongPress(this.mDownTouchView, this.mDownTouchPosition, getItemIdAtPosition(this.mDownTouchPosition));
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int i10 = this.mDownTouchPosition;
        if (i10 < 0) {
            return false;
        }
        if (!this.mShouldCallbackOnUnselectedItemClick && i10 != this.mSelectedPosition) {
            return true;
        }
        performItemClick(this.mDownTouchView, i10, this.mAdapter.getItemId(i10));
        return true;
    }

    void onUp() {
        if (this.mFlingRunnable.mScroller.isFinished()) {
            scrollIntoSlots();
        }
        dispatchUnpress();
    }

    @Override // com.narvii.widget.AdapterView
    void selectionChanged() {
        if (this.mSuppressSelectionChanged) {
            return;
        }
        super.selectionChanged();
    }

    public void setGravity(int i10) {
        if (this.mGravity != i10) {
            this.mGravity = i10;
            requestLayout();
        }
    }

    public Gallery(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSpacing = 0;
        this.mAnimationDuration = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
        this.mFlingRunnable = new FlingRunnable();
        this.mDisableSuppressSelectionChangedRunnable = new Runnable() { // from class: com.narvii.widget.Gallery.1
            @Override // java.lang.Runnable
            public void run() {
                Gallery.this.mSuppressSelectionChanged = false;
                Gallery.this.selectionChanged();
            }
        };
        this.mShouldCallbackDuringFling = true;
        this.mShouldCallbackOnUnselectedItemClick = true;
        this.mIsRtl = true;
        GestureDetector gestureDetector = new GestureDetector(context, this);
        this.mGestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006d A[PHI: r5 r6
      0x006d: PHI (r5v4 int) = (r5v1 int), (r5v6 int) binds: [B:28:0x006a, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x006d: PHI (r6v4 int) = (r6v1 int), (r6v6 int) binds: [B:28:0x006a, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    private void detachOffScreenChildren(boolean z6) {
        int i10;
        int i11;
        int i12;
        int i13;
        int childCount = getChildCount();
        int i14 = this.mFirstPosition;
        int i15 = 0;
        if (z6) {
            int paddingLeft = getPaddingLeft();
            int i16 = 0;
            i10 = 0;
            i11 = 0;
            while (i16 < childCount) {
                if (this.mIsRtl) {
                    i13 = (childCount - 1) - i16;
                } else {
                    i13 = i16;
                }
                View childAt = getChildAt(i13);
                if (childAt.getRight() >= paddingLeft) {
                    break;
                }
                i10++;
                this.mRecycler.put(i14 + i13, childAt);
                i16++;
                i11 = i13;
            }
            if (this.mIsRtl) {
                i15 = i11;
            }
        } else {
            int width = getWidth() - getPaddingRight();
            int i17 = childCount - 1;
            int i18 = i17;
            i10 = 0;
            i11 = 0;
            while (i18 >= 0) {
                if (this.mIsRtl) {
                    i12 = i17 - i18;
                } else {
                    i12 = i18;
                }
                View childAt2 = getChildAt(i12);
                if (childAt2.getLeft() <= width) {
                    break;
                }
                i10++;
                this.mRecycler.put(i14 + i12, childAt2);
                i18--;
                i11 = i12;
            }
            if (!this.mIsRtl) {
                i15 = i11;
            }
        }
        detachViewsFromParent(i15, i10);
        if (z6 != this.mIsRtl) {
            this.mFirstPosition += i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchUnpress() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount >= 0) {
                getChildAt(childCount).setPressed(false);
            } else {
                setPressed(false);
                return;
            }
        }
    }

    private int getGalleryLockPoint() {
        return getPaddingLeft();
    }

    private static int getLeftOfView(View view) {
        return view.getLeft();
    }

    private void miscTouchEvent(MotionEvent motionEvent) {
        ListView listViewFindListParent;
        int action = motionEvent.getAction();
        if (action != 0) {
            if ((action == 1 || action == 3) && (listViewFindListParent = findListParent()) != null) {
                NVListFragment.OVERRIDES.remove(listViewFindListParent);
                return;
            }
            return;
        }
        ListView listViewFindListParent2 = findListParent();
        if (listViewFindListParent2 != null) {
            NVListFragment.OVERRIDES.put(listViewFindListParent2, Boolean.TRUE);
        }
    }

    private void offsetChildrenLeftAndRight(int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            getChildAt(childCount).offsetLeftAndRight(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollIntoSlots() {
        int galleryLockPoint;
        if (getChildCount() != 0 && this.mSelectedChild != null) {
            View childAt = getChildAt((this.mItemCount - 1) - this.mFirstPosition);
            if (childAt != null && childAt.getRight() < (getWidth() - getPaddingLeft()) + childAt.getWidth()) {
                if (this.mFirstPosition == 0) {
                    galleryLockPoint = 0;
                } else {
                    galleryLockPoint = -((childAt.getRight() - getWidth()) + getPaddingLeft());
                }
            } else {
                galleryLockPoint = getGalleryLockPoint() - getLeftOfView(this.mSelectedChild);
            }
            if (galleryLockPoint != 0) {
                this.mFlingRunnable.startUsingDistance(galleryLockPoint);
            } else {
                onFinishedMovement();
            }
        }
    }

    private boolean scrollToChild(int i10) {
        View childAt = getChildAt(i10);
        if (childAt != null) {
            this.mFlingRunnable.startUsingDistance(getGalleryLockPoint() - getLeftOfView(childAt));
            return true;
        }
        return false;
    }

    private void setUpChild(View view, int i10, int i11, boolean z6) {
        int i12;
        int i13;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        boolean z10 = false;
        if (z6 != this.mIsRtl) {
            i12 = -1;
        } else {
            i12 = 0;
        }
        addViewInLayout(view, i12, layoutParams);
        if (i10 == 0) {
            z10 = true;
        }
        view.setSelected(z10);
        int i14 = this.mHeightMeasureSpec;
        Rect rect = this.mSpinnerPadding;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i14, rect.top + rect.bottom, layoutParams.height);
        int i15 = this.mWidthMeasureSpec;
        Rect rect2 = this.mSpinnerPadding;
        view.measure(ViewGroup.getChildMeasureSpec(i15, rect2.left + rect2.right, layoutParams.width), childMeasureSpec);
        int iCalculateTop = calculateTop(view, true);
        int measuredHeight = view.getMeasuredHeight() + iCalculateTop;
        int measuredWidth = view.getMeasuredWidth();
        if (z6) {
            i13 = measuredWidth + i11;
        } else {
            int i16 = i11 - measuredWidth;
            i13 = i11;
            i11 = i16;
        }
        view.layout(i11, iCalculateTop, i13, measuredHeight);
    }

    @Override // android.view.ViewGroup
    protected boolean getChildStaticTransformation(View view, Transformation transformation) {
        float f;
        transformation.clear();
        if (view == this.mSelectedChild) {
            f = 1.0f;
        } else {
            f = this.mUnselectedAlpha;
        }
        transformation.setAlpha(f);
        return true;
    }

    int getLimitedMotionScrollAmount(boolean z6, int i10) {
        int i11;
        int galleryLockPoint;
        int childCount = getChildCount();
        if (this.mItemCount == childCount && getChildAt(childCount - 1).getRight() < getWidth() - getPaddingRight()) {
            return 0;
        }
        if (z6 != this.mIsRtl) {
            i11 = this.mItemCount - 1;
        } else {
            i11 = 0;
        }
        View childAt = getChildAt(i11 - this.mFirstPosition);
        if (childAt == null) {
            return i10;
        }
        int leftOfView = getLeftOfView(childAt);
        if (i11 == this.mItemCount - 1) {
            galleryLockPoint = ((getWidth() - getPaddingLeft()) - getPaddingRight()) - childAt.getWidth();
        } else {
            galleryLockPoint = getGalleryLockPoint();
        }
        if (z6) {
            if (leftOfView <= galleryLockPoint) {
                return 0;
            }
        } else if (leftOfView >= galleryLockPoint) {
            return 0;
        }
        int i12 = galleryLockPoint - leftOfView;
        if (z6) {
            return Math.max(i12, i10);
        }
        return Math.min(i12, i10);
    }

    void onCancel() {
        onUp();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z6, int i10, Rect rect) {
        View view;
        super.onFocusChanged(z6, i10, rect);
        if (z6 && (view = this.mSelectedChild) != null) {
            view.requestFocus(i10);
            this.mSelectedChild.setSelected(true);
        }
    }

    @Override // com.narvii.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.mInLayout = true;
        layout(0, false);
        this.mInLayout = false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!this.mShouldCallbackDuringFling) {
            if (this.mIsFirstScroll) {
                if (!this.mSuppressSelectionChanged) {
                    this.mSuppressSelectionChanged = true;
                }
                postDelayed(this.mDisableSuppressSelectionChangedRunnable, 250L);
            }
        } else if (this.mSuppressSelectionChanged) {
            this.mSuppressSelectionChanged = false;
        }
        trackMotionScroll(((int) f) * (-1));
        this.mIsFirstScroll = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        miscTouchEvent(motionEvent);
        boolean zOnTouchEvent = this.mGestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            onUp();
        } else if (action == 3) {
            onCancel();
        }
        return zOnTouchEvent;
    }

    @Override // com.narvii.widget.AdapterView
    void setSelectedPositionInt(int i10) {
        super.setSelectedPositionInt(i10);
        updateSelectedItemMetadata();
    }

    @Override // android.view.View
    public boolean showContextMenu() {
        int i10;
        if (isPressed() && (i10 = this.mSelectedPosition) >= 0) {
            return dispatchLongPress(getChildAt(i10 - this.mFirstPosition), this.mSelectedPosition, this.mSelectedRowId);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        int positionForView = getPositionForView(view);
        if (positionForView < 0) {
            return false;
        }
        return dispatchLongPress(view, positionForView, this.mAdapter.getItemId(positionForView));
    }

    void trackMotionScroll(int i10) {
        boolean z6;
        if (getChildCount() == 0) {
            return;
        }
        if (i10 < 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        int limitedMotionScrollAmount = getLimitedMotionScrollAmount(z6, i10);
        if (limitedMotionScrollAmount != i10) {
            this.mFlingRunnable.endFling(false);
            onFinishedMovement();
        }
        offsetChildrenLeftAndRight(limitedMotionScrollAmount);
        detachOffScreenChildren(z6);
        if (z6) {
            fillToGalleryRight();
        } else {
            fillToGalleryLeft();
        }
        this.mRecycler.clear();
        setSelectionToChildClosestToLockPoint();
        onScrollChanged(0, 0, 0, 0);
        invalidate();
    }
}
