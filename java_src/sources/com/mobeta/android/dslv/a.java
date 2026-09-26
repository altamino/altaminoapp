package com.mobeta.android.dslv;

import android.annotation.SuppressLint;
import android.graphics.Point;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes11.dex */
public class a extends e implements View.OnTouchListener, GestureDetector.OnGestureListener {
    public static final int CLICK_REMOVE = 0;
    public static final int FLING_REMOVE = 1;
    public static final int MISS = -1;
    public static final int ON_DOWN = 0;
    public static final int ON_DRAG = 1;
    public static final int ON_LONG_PRESS = 2;
    private boolean mCanDrag;
    private int mClickRemoveHitPos;
    private int mClickRemoveId;
    private int mCurrX;
    private int mCurrY;
    private GestureDetector mDetector;
    private int mDragHandleId;
    private int mDragInitMode;
    private boolean mDragging;
    private DragSortListView mDslv;
    private int mFlingHandleId;
    private int mFlingHitPos;
    private GestureDetector mFlingRemoveDetector;
    private float mFlingSpeed;
    private int mHitPos;
    private boolean mIsRemoving;
    private int mItemX;
    private int mItemY;
    private int mPositionX;
    private boolean mRemoveEnabled;
    private int mRemoveMode;
    private boolean mSortEnabled;
    private int[] mTempLoc;
    private int mTouchSlop;

    public a(DragSortListView dragSortListView) {
        this(dragSortListView, 0, 0, 1);
    }

    public int getDragInitMode() {
        return this.mDragInitMode;
    }

    public int getRemoveMode() {
        return this.mRemoveMode;
    }

    public boolean isRemoveEnabled() {
        return this.mRemoveEnabled;
    }

    public boolean isSortEnabled() {
        return this.mSortEnabled;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
        int i10;
        if (motionEvent == null || motionEvent2 == null) {
            Log.e("MotionEvent", "motion event is null");
            return false;
        }
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        int x10 = (int) motionEvent2.getX();
        int y10 = (int) motionEvent2.getY();
        int i11 = x10 - this.mItemX;
        int i12 = y10 - this.mItemY;
        if (this.mCanDrag && !this.mDragging && ((i10 = this.mHitPos) != -1 || this.mFlingHitPos != -1)) {
            if (i10 != -1) {
                if (this.mDragInitMode == 1 && Math.abs(y10 - y6) > this.mTouchSlop && this.mSortEnabled) {
                    startDrag(this.mHitPos, i11, i12);
                } else if (this.mDragInitMode != 0 && Math.abs(x10 - x6) > this.mTouchSlop && this.mRemoveEnabled) {
                    this.mIsRemoving = true;
                    startDrag(this.mFlingHitPos, i11, i12);
                }
            } else if (this.mFlingHitPos != -1) {
                if (Math.abs(x10 - x6) > this.mTouchSlop && this.mRemoveEnabled) {
                    this.mIsRemoving = true;
                    startDrag(this.mFlingHitPos, i11, i12);
                } else if (Math.abs(y10 - y6) > this.mTouchSlop) {
                    this.mCanDrag = false;
                }
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    public void setClickRemoveId(int i10) {
        this.mClickRemoveId = i10;
    }

    public void setDragHandleId(int i10) {
        this.mDragHandleId = i10;
    }

    public void setDragInitMode(int i10) {
        this.mDragInitMode = i10;
    }

    public void setFlingHandleId(int i10) {
        this.mFlingHandleId = i10;
    }

    public void setRemoveEnabled(boolean z6) {
        this.mRemoveEnabled = z6;
    }

    public void setRemoveMode(int i10) {
        this.mRemoveMode = i10;
    }

    public void setSortEnabled(boolean z6) {
        this.mSortEnabled = z6;
    }

    public a(DragSortListView dragSortListView, int i10, int i11, int i12) {
        this(dragSortListView, i10, i11, i12, 0);
    }

    public int dragHandleHitPosition(MotionEvent motionEvent) {
        return viewIdHitPosition(motionEvent, this.mDragHandleId);
    }

    public int flingHandleHitPosition(MotionEvent motionEvent) {
        return viewIdHitPosition(motionEvent, this.mFlingHandleId);
    }

    protected void onClickRemove(int i10) {
        this.mDslv.c0(i10);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (this.mRemoveEnabled && this.mRemoveMode == 0) {
            this.mClickRemoveHitPos = viewIdHitPosition(motionEvent, this.mClickRemoveId);
        }
        int iStartDragPosition = startDragPosition(motionEvent);
        this.mHitPos = iStartDragPosition;
        if (iStartDragPosition != -1 && this.mDragInitMode == 0) {
            startDrag(iStartDragPosition, ((int) motionEvent.getX()) - this.mItemX, ((int) motionEvent.getY()) - this.mItemY);
        }
        this.mIsRemoving = false;
        this.mCanDrag = true;
        this.mPositionX = 0;
        this.mFlingHitPos = startFlingPosition(motionEvent);
        return this.mClickRemoveHitPos != -1;
    }

    @Override // com.mobeta.android.dslv.e, com.mobeta.android.dslv.DragSortListView.k
    public void onDragFloatView(View view, Point point, Point point2) {
        if (this.mRemoveEnabled && this.mIsRemoving) {
            this.mPositionX = point.x;
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.mHitPos == -1 || this.mDragInitMode != 2) {
            return;
        }
        this.mDslv.performHapticFeedback(0);
        startDrag(this.mHitPos, this.mCurrX - this.mItemX, this.mCurrY - this.mItemY);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int i10;
        if (!this.mRemoveEnabled || this.mRemoveMode != 0 || (i10 = this.mClickRemoveHitPos) == -1) {
            return false;
        }
        onClickRemove(i10 - this.mDslv.getHeaderViewsCount());
        return true;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mDslv.X() || this.mDslv.Y()) {
            return false;
        }
        boolean zOnTouchEvent = this.mDetector.onTouchEvent(motionEvent);
        if (this.mRemoveEnabled && this.mDragging && this.mRemoveMode == 1) {
            this.mFlingRemoveDetector.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 3) {
                }
            } else if (this.mRemoveEnabled && this.mIsRemoving) {
                this.mDslv.j0(0.0f);
            }
            this.mIsRemoving = false;
            this.mDragging = false;
        } else {
            this.mCurrX = (int) motionEvent.getX();
            this.mCurrY = (int) motionEvent.getY();
        }
        return zOnTouchEvent;
    }

    public boolean startDrag(int i10, int i11, int i12) {
        int i13 = (!this.mSortEnabled || this.mIsRemoving) ? 0 : 12;
        if (this.mRemoveEnabled && this.mIsRemoving) {
            i13 |= 3;
        }
        DragSortListView dragSortListView = this.mDslv;
        boolean zF0 = dragSortListView.f0(i10 - dragSortListView.getHeaderViewsCount(), i13, i11, i12);
        this.mDragging = zF0;
        return zF0;
    }

    public int startFlingPosition(MotionEvent motionEvent) {
        if (this.mRemoveMode == 1) {
            return flingHandleHitPosition(motionEvent);
        }
        return -1;
    }

    public a(DragSortListView dragSortListView, int i10, int i11, int i12, int i13) {
        this(dragSortListView, i10, i11, i12, i13, 0);
    }

    public int startDragPosition(MotionEvent motionEvent) {
        return dragHandleHitPosition(motionEvent);
    }

    public int viewIdHitPosition(MotionEvent motionEvent, int i10) {
        View viewFindViewById;
        int iPointToPosition = this.mDslv.pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        int headerViewsCount = this.mDslv.getHeaderViewsCount();
        int footerViewsCount = this.mDslv.getFooterViewsCount();
        int count = this.mDslv.getCount();
        if (iPointToPosition != -1 && iPointToPosition >= headerViewsCount && iPointToPosition < count - footerViewsCount) {
            DragSortListView dragSortListView = this.mDslv;
            View childAt = dragSortListView.getChildAt(iPointToPosition - dragSortListView.getFirstVisiblePosition());
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            if (i10 == 0) {
                viewFindViewById = childAt;
            } else {
                viewFindViewById = childAt.findViewById(i10);
            }
            if (viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
                viewFindViewById.getLocationOnScreen(this.mTempLoc);
                int[] iArr = this.mTempLoc;
                int i11 = iArr[0];
                if (rawX > i11 && rawY > iArr[1] && rawX < i11 + viewFindViewById.getWidth() && rawY < this.mTempLoc[1] + viewFindViewById.getHeight()) {
                    this.mItemX = childAt.getLeft();
                    this.mItemY = childAt.getTop();
                    return iPointToPosition;
                }
            }
        }
        return -1;
    }

    public a(DragSortListView dragSortListView, int i10, int i11, int i12, int i13, int i14) {
        super(dragSortListView);
        this.mDragInitMode = 0;
        this.mSortEnabled = true;
        this.mRemoveEnabled = false;
        this.mIsRemoving = false;
        this.mHitPos = -1;
        this.mFlingHitPos = -1;
        this.mClickRemoveHitPos = -1;
        this.mTempLoc = new int[2];
        this.mDragging = false;
        this.mFlingSpeed = 500.0f;
        this.mDslv = dragSortListView;
        GestureDetector gestureDetector = new GestureDetector(dragSortListView.getContext(), this);
        this.mDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.mTouchSlop = ViewConfiguration.get(dragSortListView.getContext()).getScaledTouchSlop();
        this.mDragHandleId = i10;
        this.mClickRemoveId = i13;
        this.mFlingHandleId = i14;
        setRemoveMode(i12);
        setDragInitMode(i11);
    }
}
