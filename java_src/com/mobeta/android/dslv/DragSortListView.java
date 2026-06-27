package com.mobeta.android.dslv;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class DragSortListView extends ListView {
    private static final int DRAGGING = 4;
    public static final int DRAG_NEG_X = 2;
    public static final int DRAG_NEG_Y = 8;
    public static final int DRAG_POS_X = 1;
    public static final int DRAG_POS_Y = 4;
    private static final int DROPPING = 2;
    private static final int IDLE = 0;
    private static final int NO_CANCEL = 0;
    private static final int ON_INTERCEPT_TOUCH_EVENT = 2;
    private static final int ON_TOUCH_EVENT = 1;
    private static final int STOPPED = 3;
    private static final int sCacheSize = 3;
    private AdapterWrapper mAdapterWrapper;
    private boolean mAnimate;
    private boolean mBlockLayoutRequests;
    private MotionEvent mCancelEvent;
    private int mCancelMethod;
    private boolean mCancelOnDataChanged;
    private HeightCache mChildHeightCache;
    private float mCurrFloatAlpha;
    private int mDownScrollStartY;
    private float mDownScrollStartYF;
    private int mDragDeltaX;
    private int mDragDeltaY;
    private float mDragDownScrollHeight;
    private float mDragDownScrollStartFrac;
    private boolean mDragEnabled;
    private int mDragFlags;
    private DragListener mDragListener;
    private DragScroller mDragScroller;
    private DragSortTracker mDragSortTracker;
    private int mDragStartY;
    private int mDragState;
    private float mDragUpScrollHeight;
    private float mDragUpScrollStartFrac;
    private DropAnimator mDropAnimator;
    private DropListener mDropListener;
    private int mFirstExpPos;
    private float mFloatAlpha;
    private Point mFloatLoc;
    private int mFloatPos;
    private View mFloatView;
    private int mFloatViewHeight;
    private int mFloatViewHeightHalf;
    private boolean mFloatViewInvalidated;
    private FloatViewManager mFloatViewManager;
    private int mFloatViewMid;
    private boolean mFloatViewOnMeasured;
    private boolean mIgnoreTouchEvent;
    private boolean mInTouchEvent;
    private int mItemHeightCollapsed;
    private boolean mLastCallWasIntercept;
    private int mLastX;
    private int mLastY;
    private LiftAnimator mLiftAnimator;
    private boolean mListViewIntercepted;
    private float mMaxScrollSpeed;
    private DataSetObserver mObserver;
    private int mOffsetX;
    private int mOffsetY;
    private RemoveListener mRemoveListener;
    private float mRemoveVelocityX;
    private View[] mSampleViewTypes;
    private DragScrollProfile mScrollProfile;
    private int mSecondExpPos;
    private float mSlideFrac;
    private float mSlideRegionFrac;
    private int mSrcPos;
    private Point mTouchLoc;
    private boolean mTrackDragSort;
    private int mUpScrollStartY;
    private float mUpScrollStartYF;
    private boolean mUseRemoveVelocity;
    private int mWidthMeasureSpec;
    private int mX;
    private int mY;

    public interface DragListener {
        void drag(int i, int i2);
    }

    public interface DragScrollProfile {
        float getSpeed(float f, long j);
    }

    public interface DragSortListener extends DropListener, DragListener, RemoveListener {
    }

    public interface DropListener {
        void drop(int i, int i2);
    }

    public interface FloatViewManager {
        View onCreateFloatView(int i);

        void onDestroyFloatView(View view);

        void onDragFloatView(View view, Point point, Point point2);
    }

    public interface RemoveListener {
        void remove(int i);
    }

    public void setCancelOnDataChanged(boolean z) {
        this.mCancelOnDataChanged = z;
    }

    public DragSortListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFloatLoc = new Point();
        this.mTouchLoc = new Point();
        this.mFloatViewOnMeasured = false;
        this.mFloatAlpha = 1.0f;
        this.mCurrFloatAlpha = 1.0f;
        this.mAnimate = false;
        this.mDragEnabled = true;
        this.mDragState = 0;
        this.mItemHeightCollapsed = 1;
        this.mWidthMeasureSpec = 0;
        this.mSampleViewTypes = new View[1];
        this.mDragUpScrollStartFrac = 0.33333334f;
        this.mDragDownScrollStartFrac = 0.33333334f;
        this.mMaxScrollSpeed = 0.5f;
        this.mScrollProfile = new DragScrollProfile() { // from class: com.mobeta.android.dslv.DragSortListView.1
            @Override // com.mobeta.android.dslv.DragSortListView.DragScrollProfile
            public float getSpeed(float f, long j) {
                return DragSortListView.this.mMaxScrollSpeed * f;
            }
        };
        this.mDragFlags = 0;
        this.mLastCallWasIntercept = false;
        this.mInTouchEvent = false;
        this.mFloatViewManager = null;
        this.mCancelMethod = 0;
        this.mSlideRegionFrac = 0.25f;
        this.mSlideFrac = 0.0f;
        this.mTrackDragSort = false;
        this.mBlockLayoutRequests = false;
        this.mIgnoreTouchEvent = false;
        this.mChildHeightCache = new HeightCache(3);
        this.mRemoveVelocityX = 0.0f;
        this.mCancelOnDataChanged = true;
        this.mListViewIntercepted = false;
        this.mFloatViewInvalidated = false;
        int i = 150;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.DragSortListView, 0, 0);
            this.mItemHeightCollapsed = Math.max(1, typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DragSortListView_collapsed_height, 1));
            this.mTrackDragSort = typedArrayObtainStyledAttributes.getBoolean(R$styleable.DragSortListView_track_drag_sort, false);
            if (this.mTrackDragSort) {
                this.mDragSortTracker = new DragSortTracker();
            }
            this.mFloatAlpha = typedArrayObtainStyledAttributes.getFloat(R$styleable.DragSortListView_float_alpha, this.mFloatAlpha);
            this.mCurrFloatAlpha = this.mFloatAlpha;
            this.mDragEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.DragSortListView_drag_enabled, this.mDragEnabled);
            this.mSlideRegionFrac = Math.max(0.0f, Math.min(1.0f, 1.0f - typedArrayObtainStyledAttributes.getFloat(R$styleable.DragSortListView_slide_shuffle_speed, 0.75f)));
            this.mAnimate = this.mSlideRegionFrac > 0.0f;
            setDragScrollStart(typedArrayObtainStyledAttributes.getFloat(R$styleable.DragSortListView_drag_scroll_start, this.mDragUpScrollStartFrac));
            this.mMaxScrollSpeed = typedArrayObtainStyledAttributes.getFloat(R$styleable.DragSortListView_max_drag_scroll_speed, this.mMaxScrollSpeed);
            typedArrayObtainStyledAttributes.getInt(R$styleable.DragSortListView_remove_animation_duration, 150);
            int i2 = typedArrayObtainStyledAttributes.getInt(R$styleable.DragSortListView_drop_animation_duration, 150);
            if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.DragSortListView_use_default_controller, true)) {
                boolean z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.DragSortListView_remove_enabled, false);
                int i3 = typedArrayObtainStyledAttributes.getInt(R$styleable.DragSortListView_remove_mode, 1);
                boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.DragSortListView_sort_enabled, true);
                int i4 = typedArrayObtainStyledAttributes.getInt(R$styleable.DragSortListView_drag_start_mode, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.DragSortListView_drag_handle_id, 0);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.DragSortListView_fling_handle_id, 0);
                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.DragSortListView_click_remove_id, 0);
                int color = typedArrayObtainStyledAttributes.getColor(R$styleable.DragSortListView_float_background_color, ViewCompat.MEASURED_STATE_MASK);
                DragSortController dragSortController = new DragSortController(this, resourceId, i4, i3, resourceId3, resourceId2);
                dragSortController.setRemoveEnabled(z);
                dragSortController.setSortEnabled(z2);
                dragSortController.setBackgroundColor(color);
                this.mFloatViewManager = dragSortController;
                setOnTouchListener(dragSortController);
            }
            typedArrayObtainStyledAttributes.recycle();
            i = i2;
        }
        this.mDragScroller = new DragScroller();
        if (i > 0) {
            this.mDropAnimator = new DropAnimator(0.5f, i);
        }
        this.mCancelEvent = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        this.mObserver = new DataSetObserver() { // from class: com.mobeta.android.dslv.DragSortListView.2
            private void cancel() {
                if (DragSortListView.this.mDragState == 4) {
                    DragSortListView.this.cancelDrag();
                }
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                if (DragSortListView.this.mCancelOnDataChanged) {
                    cancel();
                }
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                cancel();
            }
        };
    }

    public void setFloatAlpha(float f) {
        this.mCurrFloatAlpha = f;
    }

    public float getFloatAlpha() {
        return this.mCurrFloatAlpha;
    }

    public void setMaxScrollSpeed(float f) {
        this.mMaxScrollSpeed = f;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            this.mAdapterWrapper = new AdapterWrapper(listAdapter);
            listAdapter.registerDataSetObserver(this.mObserver);
            if (listAdapter instanceof DropListener) {
                setDropListener((DropListener) listAdapter);
            }
            if (listAdapter instanceof DragListener) {
                setDragListener((DragListener) listAdapter);
            }
            if (listAdapter instanceof RemoveListener) {
                setRemoveListener((RemoveListener) listAdapter);
            }
        } else {
            this.mAdapterWrapper = null;
        }
        super.setAdapter((ListAdapter) this.mAdapterWrapper);
    }

    public ListAdapter getInputAdapter() {
        AdapterWrapper adapterWrapper = this.mAdapterWrapper;
        if (adapterWrapper == null) {
            return null;
        }
        return adapterWrapper.getAdapter();
    }

    private class AdapterWrapper extends BaseAdapter {
        private ListAdapter mAdapter;

        public AdapterWrapper(ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            this.mAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.mobeta.android.dslv.DragSortListView.AdapterWrapper.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    AdapterWrapper.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public void onInvalidated() {
                    AdapterWrapper.this.notifyDataSetInvalidated();
                }
            });
        }

        public ListAdapter getAdapter() {
            return this.mAdapter;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.mAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter.getCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return this.mAdapter.areAllItemsEnabled();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return this.mAdapter.isEnabled(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return this.mAdapter.getItemViewType(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.mAdapter.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter.hasStableIds();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.mAdapter.isEmpty();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            DragSortItemView dragSortItemView;
            DragSortItemView dragSortItemView2;
            if (view != null) {
                dragSortItemView2 = (DragSortItemView) view;
                View childAt = dragSortItemView2.getChildAt(0);
                View view2 = this.mAdapter.getView(i, childAt, DragSortListView.this);
                if (view2 != childAt) {
                    if (childAt != null) {
                        dragSortItemView2.removeViewAt(0);
                    }
                    dragSortItemView2.addView(view2);
                }
            } else {
                View view3 = this.mAdapter.getView(i, null, DragSortListView.this);
                if (view3 instanceof Checkable) {
                    dragSortItemView = new DragSortItemViewCheckable(DragSortListView.this.getContext());
                } else {
                    dragSortItemView = new DragSortItemView(DragSortListView.this.getContext());
                }
                dragSortItemView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                dragSortItemView.addView(view3);
                dragSortItemView2 = dragSortItemView;
            }
            DragSortListView dragSortListView = DragSortListView.this;
            dragSortListView.adjustItem(i + dragSortListView.getHeaderViewsCount(), dragSortItemView2, true);
            return dragSortItemView2;
        }
    }

    private void drawDivider(int i, Canvas canvas) {
        ViewGroup viewGroup;
        int i2;
        int top;
        Drawable divider = getDivider();
        int dividerHeight = getDividerHeight();
        if (divider == null || dividerHeight == 0 || (viewGroup = (ViewGroup) getChildAt(i - getFirstVisiblePosition())) == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = viewGroup.getChildAt(0).getHeight();
        if (i > this.mSrcPos) {
            top = viewGroup.getTop() + height;
            i2 = dividerHeight + top;
        } else {
            int bottom = viewGroup.getBottom() - height;
            int i3 = bottom - dividerHeight;
            i2 = bottom;
            top = i3;
        }
        canvas.save();
        canvas.clipRect(paddingLeft, top, width, i2);
        divider.setBounds(paddingLeft, top, width, i2);
        divider.draw(canvas);
        canvas.restore();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        super.dispatchDraw(canvas);
        if (this.mDragState != 0) {
            int i = this.mFirstExpPos;
            if (i != this.mSrcPos) {
                drawDivider(i, canvas);
            }
            int i2 = this.mSecondExpPos;
            if (i2 != this.mFirstExpPos && i2 != this.mSrcPos) {
                drawDivider(i2, canvas);
            }
        }
        View view = this.mFloatView;
        if (view != null) {
            int width = view.getWidth();
            int height = this.mFloatView.getHeight();
            int i3 = this.mFloatLoc.x;
            int width2 = getWidth();
            if (i3 < 0) {
                i3 = -i3;
            }
            if (i3 < width2) {
                float f2 = (width2 - i3) / width2;
                f = f2 * f2;
            } else {
                f = 0.0f;
            }
            int i4 = (int) (this.mCurrFloatAlpha * 255.0f * f);
            canvas.save();
            Point point = this.mFloatLoc;
            canvas.translate(point.x, point.y);
            canvas.clipRect(0, 0, width, height);
            canvas.saveLayerAlpha(0.0f, 0.0f, width, height, i4, 31);
            this.mFloatView.draw(canvas);
            canvas.restore();
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getItemHeight(int i) {
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return childAt.getHeight();
        }
        return calcItemHeight(i, getChildHeight(i));
    }

    private class HeightCache {
        private SparseIntArray mMap;
        private int mMaxSize;
        private ArrayList<Integer> mOrder;

        public HeightCache(int i) {
            this.mMap = new SparseIntArray(i);
            this.mOrder = new ArrayList<>(i);
            this.mMaxSize = i;
        }

        public void add(int i, int i2) {
            int i3 = this.mMap.get(i, -1);
            if (i3 != i2) {
                if (i3 == -1) {
                    if (this.mMap.size() == this.mMaxSize) {
                        this.mMap.delete(this.mOrder.remove(0).intValue());
                    }
                } else {
                    this.mOrder.remove(Integer.valueOf(i));
                }
                this.mMap.put(i, i2);
                this.mOrder.add(Integer.valueOf(i));
            }
        }

        public int get(int i) {
            return this.mMap.get(i, -1);
        }

        public void clear() {
            this.mMap.clear();
            this.mOrder.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getShuffleEdge(int i, int i2) {
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        if (i <= headerViewsCount || i >= getCount() - footerViewsCount) {
            return i2;
        }
        int dividerHeight = getDividerHeight();
        int i3 = this.mFloatViewHeight - this.mItemHeightCollapsed;
        int childHeight = getChildHeight(i);
        int itemHeight = getItemHeight(i);
        int i4 = this.mSecondExpPos;
        int i5 = this.mSrcPos;
        if (i4 <= i5) {
            if (i != i4 || this.mFirstExpPos == i4) {
                if (i > this.mSecondExpPos && i <= this.mSrcPos) {
                }
            } else if (i == i5) {
                i2 += itemHeight;
                i3 = this.mFloatViewHeight;
            } else {
                i2 += itemHeight - childHeight;
            }
            i2 -= i3;
        } else if (i <= i5 || i > this.mFirstExpPos) {
            int i6 = this.mSecondExpPos;
            if (i == i6 && this.mFirstExpPos != i6) {
                i2 += itemHeight - childHeight;
            }
        } else {
            i2 += i3;
        }
        if (i <= this.mSrcPos) {
            return i2 + (((this.mFloatViewHeight - dividerHeight) - getChildHeight(i - 1)) / 2);
        }
        return i2 + (((childHeight - dividerHeight) - this.mFloatViewHeight) / 2);
    }

    private boolean updatePositions() {
        int i;
        int firstVisiblePosition = getFirstVisiblePosition();
        int count = this.mFirstExpPos;
        View childAt = getChildAt(count - firstVisiblePosition);
        if (childAt == null) {
            count = (getChildCount() / 2) + firstVisiblePosition;
            childAt = getChildAt(count - firstVisiblePosition);
        }
        int top = childAt.getTop();
        int height = childAt.getHeight();
        int shuffleEdge = getShuffleEdge(count, top);
        int dividerHeight = getDividerHeight();
        if (this.mFloatViewMid < shuffleEdge) {
            while (count >= 0) {
                count--;
                int itemHeight = getItemHeight(count);
                if (count == 0) {
                    i = (top - dividerHeight) - itemHeight;
                    break;
                }
                top -= itemHeight + dividerHeight;
                int shuffleEdge2 = getShuffleEdge(count, top);
                if (this.mFloatViewMid >= shuffleEdge2) {
                    i = shuffleEdge2;
                    break;
                }
                shuffleEdge = shuffleEdge2;
            }
            i = shuffleEdge;
        } else {
            int count2 = getCount();
            while (count < count2) {
                if (count == count2 - 1) {
                    i = top + dividerHeight + height;
                    break;
                }
                top += height + dividerHeight;
                int i2 = count + 1;
                int itemHeight2 = getItemHeight(i2);
                int shuffleEdge3 = getShuffleEdge(i2, top);
                if (this.mFloatViewMid < shuffleEdge3) {
                    i = shuffleEdge3;
                    break;
                }
                count = i2;
                height = itemHeight2;
                shuffleEdge = shuffleEdge3;
            }
            i = shuffleEdge;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int i3 = this.mFirstExpPos;
        int i4 = this.mSecondExpPos;
        float f = this.mSlideFrac;
        if (this.mAnimate) {
            int iAbs = Math.abs(i - shuffleEdge);
            if (this.mFloatViewMid < i) {
                int i5 = shuffleEdge;
                shuffleEdge = i;
                i = i5;
            }
            int i6 = (int) (this.mSlideRegionFrac * 0.5f * iAbs);
            float f2 = i6;
            int i7 = i + i6;
            int i8 = shuffleEdge - i6;
            int i9 = this.mFloatViewMid;
            if (i9 < i7) {
                this.mFirstExpPos = count - 1;
                this.mSecondExpPos = count;
                this.mSlideFrac = ((i7 - i9) * 0.5f) / f2;
            } else if (i9 < i8) {
                this.mFirstExpPos = count;
                this.mSecondExpPos = count;
            } else {
                this.mFirstExpPos = count;
                this.mSecondExpPos = count + 1;
                this.mSlideFrac = (((shuffleEdge - i9) / f2) + 1.0f) * 0.5f;
            }
        } else {
            this.mFirstExpPos = count;
            this.mSecondExpPos = count;
        }
        if (this.mFirstExpPos < headerViewsCount) {
            this.mFirstExpPos = headerViewsCount;
            this.mSecondExpPos = headerViewsCount;
            count = headerViewsCount;
        } else if (this.mSecondExpPos >= getCount() - footerViewsCount) {
            count = (getCount() - footerViewsCount) - 1;
            this.mFirstExpPos = count;
            this.mSecondExpPos = count;
        }
        boolean z = (this.mFirstExpPos == i3 && this.mSecondExpPos == i4 && this.mSlideFrac == f) ? false : true;
        int i10 = this.mFloatPos;
        if (count == i10) {
            return z;
        }
        DragListener dragListener = this.mDragListener;
        if (dragListener != null) {
            dragListener.drag(i10 - headerViewsCount, count - headerViewsCount);
        }
        this.mFloatPos = count;
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mTrackDragSort) {
            this.mDragSortTracker.appendState();
        }
    }

    private class SmoothAnimator implements Runnable {
        private float mA;
        private float mAlpha;
        private float mB;
        private float mC;
        private boolean mCanceled;
        private float mD;
        private float mDurationF;
        protected long mStartTime;

        public void onStart() {
        }

        public void onStop() {
        }

        public void onUpdate(float f, float f2) {
        }

        public SmoothAnimator(float f, int i) {
            this.mAlpha = f;
            this.mDurationF = i;
            float f2 = this.mAlpha;
            float f3 = 1.0f / ((f2 * 2.0f) * (1.0f - f2));
            this.mD = f3;
            this.mA = f3;
            this.mB = f2 / ((f2 - 1.0f) * 2.0f);
            this.mC = 1.0f / (1.0f - f2);
        }

        public float transform(float f) {
            float f2 = this.mAlpha;
            if (f < f2) {
                return this.mA * f * f;
            }
            if (f < 1.0f - f2) {
                return this.mB + (this.mC * f);
            }
            float f3 = f - 1.0f;
            return 1.0f - ((this.mD * f3) * f3);
        }

        public void start() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mCanceled = false;
            onStart();
            DragSortListView.this.post(this);
        }

        public void cancel() {
            this.mCanceled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCanceled) {
                return;
            }
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.mStartTime) / this.mDurationF;
            if (fUptimeMillis >= 1.0f) {
                onUpdate(1.0f, 1.0f);
                onStop();
            } else {
                onUpdate(fUptimeMillis, transform(fUptimeMillis));
                DragSortListView.this.post(this);
            }
        }
    }

    private class LiftAnimator extends SmoothAnimator {
        private float mFinalDragDeltaY;
        private float mInitDragDeltaY;

        public LiftAnimator(float f, int i) {
            super(f, i);
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mInitDragDeltaY = DragSortListView.this.mDragDeltaY;
            this.mFinalDragDeltaY = DragSortListView.this.mFloatViewHeightHalf;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f, float f2) {
            if (DragSortListView.this.mDragState != 4) {
                cancel();
                return;
            }
            DragSortListView.this.mDragDeltaY = (int) ((this.mFinalDragDeltaY * f2) + ((1.0f - f2) * this.mInitDragDeltaY));
            DragSortListView.this.mFloatLoc.y = DragSortListView.this.mY - DragSortListView.this.mDragDeltaY;
            DragSortListView.this.doDragFloatView(true);
        }
    }

    private class DropAnimator extends SmoothAnimator {
        private int mDropPos;
        private float mInitDeltaX;
        private float mInitDeltaY;
        private int srcPos;

        public DropAnimator(float f, int i) {
            super(f, i);
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mDropPos = DragSortListView.this.mFloatPos;
            this.srcPos = DragSortListView.this.mSrcPos;
            DragSortListView.this.mDragState = 2;
            this.mInitDeltaY = DragSortListView.this.mFloatLoc.y - getTargetY();
            this.mInitDeltaX = DragSortListView.this.mFloatLoc.x - DragSortListView.this.getPaddingLeft();
        }

        private int getTargetY() {
            int bottom;
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int dividerHeight = (DragSortListView.this.mItemHeightCollapsed + DragSortListView.this.getDividerHeight()) / 2;
            View childAt = DragSortListView.this.getChildAt(this.mDropPos - firstVisiblePosition);
            if (childAt != null) {
                int i = this.mDropPos;
                int i2 = this.srcPos;
                if (i == i2) {
                    return childAt.getTop();
                }
                if (i < i2) {
                    bottom = childAt.getTop();
                } else {
                    bottom = childAt.getBottom() + dividerHeight;
                    dividerHeight = DragSortListView.this.mFloatViewHeight;
                }
                return bottom - dividerHeight;
            }
            cancel();
            return -1;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f, float f2) {
            int targetY = getTargetY();
            int paddingLeft = DragSortListView.this.getPaddingLeft();
            float f3 = DragSortListView.this.mFloatLoc.y - targetY;
            float f4 = DragSortListView.this.mFloatLoc.x - paddingLeft;
            float f5 = 1.0f - f2;
            if (f5 < Math.abs(f3 / this.mInitDeltaY) || f5 < Math.abs(f4 / this.mInitDeltaX)) {
                DragSortListView.this.mFloatLoc.y = targetY + ((int) (this.mInitDeltaY * f5));
                DragSortListView.this.mFloatLoc.x = DragSortListView.this.getPaddingLeft() + ((int) (this.mInitDeltaX * f5));
                DragSortListView.this.doDragFloatView(true);
            }
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStop() {
            DragSortListView.this.dropFloatView();
        }
    }

    public void cancelDrag() {
        if (this.mDragState == 4) {
            this.mDragScroller.stopScrolling(true);
            destroyFloatView();
            clearPositions();
            adjustAllItems();
            if (this.mInTouchEvent) {
                this.mDragState = 3;
            } else {
                this.mDragState = 0;
            }
        }
    }

    private void clearPositions() {
        this.mSrcPos = -1;
        this.mFirstExpPos = -1;
        this.mSecondExpPos = -1;
        this.mFloatPos = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dropFloatView() {
        int i;
        this.mDragState = 2;
        if (this.mDropListener != null && (i = this.mFloatPos) >= 0 && i < getCount()) {
            int headerViewsCount = getHeaderViewsCount();
            this.mDropListener.drop(this.mSrcPos - headerViewsCount, this.mFloatPos - headerViewsCount);
        }
        destroyFloatView();
        adjustOnReorder();
        clearPositions();
        adjustAllItems();
        if (this.mInTouchEvent) {
            this.mDragState = 3;
        } else {
            this.mDragState = 0;
        }
    }

    public void removeItem(int i) {
        RemoveListener removeListener = this.mRemoveListener;
        if (removeListener != null) {
            removeListener.remove(i);
        }
        destroyFloatView();
        adjustOnReorder();
        clearPositions();
        this.mDragState = 0;
    }

    private void adjustOnReorder() {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.mSrcPos < firstVisiblePosition) {
            View childAt = getChildAt(0);
            setSelectionFromTop(firstVisiblePosition - 1, (childAt != null ? childAt.getTop() : 0) - getPaddingTop());
        }
    }

    public boolean stopDrag() {
        this.mUseRemoveVelocity = false;
        return stopDrag(0.0f);
    }

    public boolean stopDragWithVelocity(float f) {
        this.mUseRemoveVelocity = true;
        return stopDrag(f);
    }

    public boolean stopDrag(float f) {
        if (this.mFloatView == null) {
            return false;
        }
        this.mDragScroller.stopScrolling(true);
        DropAnimator dropAnimator = this.mDropAnimator;
        if (dropAnimator != null) {
            dropAnimator.start();
        } else {
            dropFloatView();
        }
        if (this.mTrackDragSort) {
            this.mDragSortTracker.stopTracking();
        }
        return true;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.mIgnoreTouchEvent) {
            this.mIgnoreTouchEvent = false;
            return false;
        }
        if (!this.mDragEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z2 = this.mLastCallWasIntercept;
        this.mLastCallWasIntercept = false;
        if (!z2) {
            saveTouchCoords(motionEvent);
        }
        int i = this.mDragState;
        if (i == 4) {
            onDragTouchEvent(motionEvent);
            return true;
        }
        if (i == 0 && super.onTouchEvent(motionEvent)) {
            z = true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 1 || action == 3) {
            doActionUpOrCancel();
            return z;
        }
        if (!z) {
            return z;
        }
        this.mCancelMethod = 1;
        return z;
    }

    private void doActionUpOrCancel() {
        this.mCancelMethod = 0;
        this.mInTouchEvent = false;
        if (this.mDragState == 3) {
            this.mDragState = 0;
        }
        this.mCurrFloatAlpha = this.mFloatAlpha;
        this.mListViewIntercepted = false;
        this.mChildHeightCache.clear();
    }

    private void saveTouchCoords(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            this.mLastX = this.mX;
            this.mLastY = this.mY;
        }
        this.mX = (int) motionEvent.getX();
        this.mY = (int) motionEvent.getY();
        if (action == 0) {
            this.mLastX = this.mX;
            this.mLastY = this.mY;
        }
        this.mOffsetX = ((int) motionEvent.getRawX()) - this.mX;
        this.mOffsetY = ((int) motionEvent.getRawY()) - this.mY;
    }

    public boolean listViewIntercepted() {
        return this.mListViewIntercepted;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.mDragEnabled) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        saveTouchCoords(motionEvent);
        this.mLastCallWasIntercept = true;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            if (this.mDragState != 0) {
                this.mIgnoreTouchEvent = true;
                return true;
            }
            this.mInTouchEvent = true;
        }
        if (this.mFloatView != null) {
            z = true;
        } else {
            if (super.onInterceptTouchEvent(motionEvent)) {
                this.mListViewIntercepted = true;
                z = true;
            } else {
                z = false;
            }
            if (action == 1 || action == 3) {
                doActionUpOrCancel();
            } else if (z) {
                this.mCancelMethod = 1;
            } else {
                this.mCancelMethod = 2;
            }
        }
        if (action == 1 || action == 3) {
            this.mInTouchEvent = false;
        }
        return z;
    }

    public void setDragScrollStart(float f) {
        setDragScrollStarts(f, f);
    }

    public void setDragScrollStarts(float f, float f2) {
        if (f2 > 0.5f) {
            this.mDragDownScrollStartFrac = 0.5f;
        } else {
            this.mDragDownScrollStartFrac = f2;
        }
        if (f > 0.5f) {
            this.mDragUpScrollStartFrac = 0.5f;
        } else {
            this.mDragUpScrollStartFrac = f;
        }
        if (getHeight() != 0) {
            updateScrollStarts();
        }
    }

    private void continueDrag(int i, int i2) {
        Point point = this.mFloatLoc;
        point.x = i - this.mDragDeltaX;
        point.y = i2 - this.mDragDeltaY;
        doDragFloatView(true);
        int iMin = Math.min(i2, this.mFloatViewMid + this.mFloatViewHeightHalf);
        int iMax = Math.max(i2, this.mFloatViewMid - this.mFloatViewHeightHalf);
        int scrollDir = this.mDragScroller.getScrollDir();
        if (iMin > this.mLastY && iMin > this.mDownScrollStartY && scrollDir != 1) {
            if (scrollDir != -1) {
                this.mDragScroller.stopScrolling(true);
            }
            this.mDragScroller.startScrolling(1);
        } else if (iMax < this.mLastY && iMax < this.mUpScrollStartY && scrollDir != 0) {
            if (scrollDir != -1) {
                this.mDragScroller.stopScrolling(true);
            }
            this.mDragScroller.startScrolling(0);
        } else {
            if (iMax < this.mUpScrollStartY || iMin > this.mDownScrollStartY || !this.mDragScroller.isScrolling()) {
                return;
            }
            this.mDragScroller.stopScrolling(true);
        }
    }

    private void updateScrollStarts() {
        int paddingTop = getPaddingTop();
        float height = (getHeight() - paddingTop) - getPaddingBottom();
        float f = paddingTop;
        this.mUpScrollStartYF = (this.mDragUpScrollStartFrac * height) + f;
        this.mDownScrollStartYF = ((1.0f - this.mDragDownScrollStartFrac) * height) + f;
        float f2 = this.mUpScrollStartYF;
        this.mUpScrollStartY = (int) f2;
        float f3 = this.mDownScrollStartYF;
        this.mDownScrollStartY = (int) f3;
        this.mDragUpScrollHeight = f2 - f;
        this.mDragDownScrollHeight = (paddingTop + r1) - f3;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateScrollStarts();
    }

    private void adjustAllItems() {
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int iMin = Math.min(lastVisiblePosition - firstVisiblePosition, ((getCount() - 1) - getFooterViewsCount()) - firstVisiblePosition);
        for (int iMax = Math.max(0, getHeaderViewsCount() - firstVisiblePosition); iMax <= iMin; iMax++) {
            View childAt = getChildAt(iMax);
            if (childAt != null) {
                adjustItem(firstVisiblePosition + iMax, childAt, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustItem(int i, View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iCalcItemHeight = (i == this.mSrcPos || i == this.mFirstExpPos || i == this.mSecondExpPos) ? calcItemHeight(i, view, z) : -2;
        if (iCalcItemHeight != layoutParams.height) {
            layoutParams.height = iCalcItemHeight;
            view.setLayoutParams(layoutParams);
        }
        if (i == this.mFirstExpPos || i == this.mSecondExpPos) {
            int i2 = this.mSrcPos;
            if (i < i2) {
                ((DragSortItemView) view).setGravity(80);
            } else if (i > i2) {
                ((DragSortItemView) view).setGravity(48);
            }
        }
        int visibility = view.getVisibility();
        int i3 = 0;
        if (i == this.mSrcPos && this.mFloatView != null) {
            i3 = 4;
        }
        if (i3 != visibility) {
            view.setVisibility(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getChildHeight(int i) {
        View view;
        if (i == this.mSrcPos) {
            return 0;
        }
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return getChildHeight(i, childAt, false);
        }
        int i2 = this.mChildHeightCache.get(i);
        if (i2 != -1) {
            return i2;
        }
        ListAdapter adapter = getAdapter();
        int itemViewType = adapter.getItemViewType(i);
        int viewTypeCount = adapter.getViewTypeCount();
        if (viewTypeCount != this.mSampleViewTypes.length) {
            this.mSampleViewTypes = new View[viewTypeCount];
        }
        if (itemViewType >= 0) {
            View[] viewArr = this.mSampleViewTypes;
            if (viewArr[itemViewType] == null) {
                view = adapter.getView(i, null, this);
                this.mSampleViewTypes[itemViewType] = view;
            } else {
                view = adapter.getView(i, viewArr[itemViewType], this);
            }
        } else {
            view = adapter.getView(i, null, this);
        }
        int childHeight = getChildHeight(i, view, true);
        this.mChildHeightCache.add(i, childHeight);
        return childHeight;
    }

    private int getChildHeight(int i, View view, boolean z) {
        int i2;
        if (i == this.mSrcPos) {
            return 0;
        }
        if (i >= getHeaderViewsCount() && i < getCount() - getFooterViewsCount()) {
            view = ((ViewGroup) view).getChildAt(0);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && (i2 = layoutParams.height) > 0) {
            return i2;
        }
        int height = view.getHeight();
        if (height != 0 && !z) {
            return height;
        }
        measureItem(view);
        return view.getMeasuredHeight();
    }

    private int calcItemHeight(int i, View view, boolean z) {
        return calcItemHeight(i, getChildHeight(i, view, z));
    }

    private int calcItemHeight(int i, int i2) {
        getDividerHeight();
        boolean z = this.mAnimate && this.mFirstExpPos != this.mSecondExpPos;
        int i3 = this.mFloatViewHeight;
        int i4 = this.mItemHeightCollapsed;
        int i5 = i3 - i4;
        int i6 = (int) (this.mSlideFrac * i5);
        int i7 = this.mSrcPos;
        return i == i7 ? i7 == this.mFirstExpPos ? z ? i6 + i4 : i3 : i7 == this.mSecondExpPos ? i3 - i6 : i4 : i == this.mFirstExpPos ? z ? i2 + i6 : i2 + i5 : i == this.mSecondExpPos ? (i2 + i5) - i6 : i2;
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        super.requestLayout();
    }

    private int adjustScroll(int i, View view, int i2, int i3) {
        int i4;
        int i5;
        int childHeight = getChildHeight(i);
        int height = view.getHeight();
        int iCalcItemHeight = calcItemHeight(i, childHeight);
        if (i != this.mSrcPos) {
            i4 = height - childHeight;
            i5 = iCalcItemHeight - childHeight;
        } else {
            i4 = height;
            i5 = iCalcItemHeight;
        }
        int i6 = this.mFloatViewHeight;
        int i7 = this.mSrcPos;
        if (i7 != this.mFirstExpPos && i7 != this.mSecondExpPos) {
            i6 -= this.mItemHeightCollapsed;
        }
        if (i <= i2) {
            if (i > this.mFirstExpPos) {
                return 0 + (i6 - i5);
            }
            return 0;
        }
        if (i == i3) {
            if (i <= this.mFirstExpPos) {
                i4 -= i6;
            } else if (i == this.mSecondExpPos) {
                return 0 + (height - iCalcItemHeight);
            }
            return 0 + i4;
        }
        if (i <= this.mFirstExpPos) {
            return 0 - i6;
        }
        if (i == this.mSecondExpPos) {
            return 0 - i5;
        }
        return 0;
    }

    private void measureItem(View view) {
        int iMakeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2);
            view.setLayoutParams(layoutParams);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, getListPaddingLeft() + getListPaddingRight(), layoutParams.width);
        int i = layoutParams.height;
        if (i > 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, iMakeMeasureSpec);
    }

    private void measureFloatView() {
        View view = this.mFloatView;
        if (view != null) {
            measureItem(view);
            this.mFloatViewHeight = this.mFloatView.getMeasuredHeight();
            this.mFloatViewHeightHalf = this.mFloatViewHeight / 2;
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        View view = this.mFloatView;
        if (view != null) {
            if (view.isLayoutRequested()) {
                measureFloatView();
            }
            this.mFloatViewOnMeasured = true;
        }
        this.mWidthMeasureSpec = i;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        super.layoutChildren();
        View view = this.mFloatView;
        if (view != null) {
            if (view.isLayoutRequested() && !this.mFloatViewOnMeasured) {
                measureFloatView();
            }
            View view2 = this.mFloatView;
            view2.layout(0, 0, view2.getMeasuredWidth(), this.mFloatView.getMeasuredHeight());
            this.mFloatViewOnMeasured = false;
        }
    }

    protected boolean onDragTouchEvent(MotionEvent motionEvent) {
        motionEvent.getAction();
        int action = motionEvent.getAction() & 255;
        if (action == 1) {
            if (this.mDragState == 4) {
                stopDrag();
            }
            doActionUpOrCancel();
        } else if (action == 2) {
            continueDrag((int) motionEvent.getX(), (int) motionEvent.getY());
        } else if (action == 3) {
            if (this.mDragState == 4) {
                cancelDrag();
            }
            doActionUpOrCancel();
        }
        return true;
    }

    public boolean startDrag(int i, int i2, int i3, int i4) {
        FloatViewManager floatViewManager;
        View viewOnCreateFloatView;
        if (!this.mInTouchEvent || (floatViewManager = this.mFloatViewManager) == null || (viewOnCreateFloatView = floatViewManager.onCreateFloatView(i)) == null) {
            return false;
        }
        return startDrag(i, viewOnCreateFloatView, i2, i3, i4);
    }

    public boolean startDrag(int i, View view, int i2, int i3, int i4) {
        if (this.mDragState != 0 || !this.mInTouchEvent || this.mFloatView != null || view == null || !this.mDragEnabled) {
            return false;
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        int headerViewsCount = i + getHeaderViewsCount();
        this.mFirstExpPos = headerViewsCount;
        this.mSecondExpPos = headerViewsCount;
        this.mSrcPos = headerViewsCount;
        this.mFloatPos = headerViewsCount;
        this.mDragState = 4;
        this.mDragFlags = 0;
        this.mDragFlags = i2 | this.mDragFlags;
        this.mFloatView = view;
        measureFloatView();
        this.mDragDeltaX = i3;
        this.mDragDeltaY = i4;
        int i5 = this.mY;
        this.mDragStartY = i5;
        Point point = this.mFloatLoc;
        point.x = this.mX - this.mDragDeltaX;
        point.y = i5 - this.mDragDeltaY;
        View childAt = getChildAt(this.mSrcPos - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setVisibility(4);
        }
        if (this.mTrackDragSort) {
            this.mDragSortTracker.startTracking();
        }
        int i6 = this.mCancelMethod;
        if (i6 == 1) {
            super.onTouchEvent(this.mCancelEvent);
        } else if (i6 == 2) {
            super.onInterceptTouchEvent(this.mCancelEvent);
        }
        requestLayout();
        LiftAnimator liftAnimator = this.mLiftAnimator;
        if (liftAnimator != null) {
            liftAnimator.start();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDragFloatView(boolean z) {
        int firstVisiblePosition = getFirstVisiblePosition() + (getChildCount() / 2);
        View childAt = getChildAt(getChildCount() / 2);
        if (childAt == null) {
            return;
        }
        doDragFloatView(firstVisiblePosition, childAt, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDragFloatView(int i, View view, boolean z) {
        this.mBlockLayoutRequests = true;
        updateFloatView();
        int i2 = this.mFirstExpPos;
        int i3 = this.mSecondExpPos;
        boolean zUpdatePositions = updatePositions();
        if (zUpdatePositions) {
            adjustAllItems();
            setSelectionFromTop(i, (view.getTop() + adjustScroll(i, view, i2, i3)) - getPaddingTop());
            layoutChildren();
        }
        if (zUpdatePositions || z) {
            invalidate();
        }
        this.mBlockLayoutRequests = false;
    }

    private void updateFloatView() {
        int i;
        int i2;
        if (this.mFloatViewManager != null) {
            this.mTouchLoc.set(this.mX, this.mY);
            this.mFloatViewManager.onDragFloatView(this.mFloatView, this.mFloatLoc, this.mTouchLoc);
        }
        Point point = this.mFloatLoc;
        int i3 = point.x;
        int i4 = point.y;
        int paddingLeft = getPaddingLeft();
        if ((this.mDragFlags & 1) == 0 && i3 > paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        } else if ((this.mDragFlags & 2) == 0 && i3 < paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int paddingTop = getPaddingTop();
        if (firstVisiblePosition < headerViewsCount) {
            paddingTop = getChildAt((headerViewsCount - firstVisiblePosition) - 1).getBottom();
        }
        if ((this.mDragFlags & 8) == 0 && firstVisiblePosition <= (i2 = this.mSrcPos)) {
            paddingTop = Math.max(getChildAt(i2 - firstVisiblePosition).getTop(), paddingTop);
        }
        int height = getHeight() - getPaddingBottom();
        if (lastVisiblePosition >= (getCount() - footerViewsCount) - 1) {
            height = getChildAt(((getCount() - footerViewsCount) - 1) - firstVisiblePosition).getBottom();
        }
        if ((this.mDragFlags & 4) == 0 && lastVisiblePosition >= (i = this.mSrcPos)) {
            height = Math.min(getChildAt(i - firstVisiblePosition).getBottom(), height);
        }
        if (i4 < paddingTop) {
            this.mFloatLoc.y = paddingTop;
        } else {
            int i5 = this.mFloatViewHeight;
            if (i4 + i5 > height) {
                this.mFloatLoc.y = height - i5;
            }
        }
        this.mFloatViewMid = this.mFloatLoc.y + this.mFloatViewHeightHalf;
    }

    private void destroyFloatView() {
        View view = this.mFloatView;
        if (view != null) {
            view.setVisibility(8);
            FloatViewManager floatViewManager = this.mFloatViewManager;
            if (floatViewManager != null) {
                floatViewManager.onDestroyFloatView(this.mFloatView);
            }
            this.mFloatView = null;
            invalidate();
        }
    }

    public void setFloatViewManager(FloatViewManager floatViewManager) {
        this.mFloatViewManager = floatViewManager;
    }

    public void setDragListener(DragListener dragListener) {
        this.mDragListener = dragListener;
    }

    public void setDragEnabled(boolean z) {
        this.mDragEnabled = z;
    }

    public boolean isDragEnabled() {
        return this.mDragEnabled;
    }

    public void setDropListener(DropListener dropListener) {
        this.mDropListener = dropListener;
    }

    public void setRemoveListener(RemoveListener removeListener) {
        this.mRemoveListener = removeListener;
    }

    public void setDragSortListener(DragSortListener dragSortListener) {
        setDropListener(dragSortListener);
        setDragListener(dragSortListener);
        setRemoveListener(dragSortListener);
    }

    public void setDragScrollProfile(DragScrollProfile dragScrollProfile) {
        if (dragScrollProfile != null) {
            this.mScrollProfile = dragScrollProfile;
        }
    }

    private class DragScroller implements Runnable {
        public static final int DOWN = 1;
        public static final int STOP = -1;
        public static final int UP = 0;
        private float dt;
        private int dy;
        private boolean mAbort;
        private long mCurrTime;
        private int mFirstFooter;
        private int mLastHeader;
        private long mPrevTime;
        private float mScrollSpeed;
        private boolean mScrolling = false;
        private int scrollDir;
        private long tStart;

        public boolean isScrolling() {
            return this.mScrolling;
        }

        public int getScrollDir() {
            if (this.mScrolling) {
                return this.scrollDir;
            }
            return -1;
        }

        public DragScroller() {
        }

        public void startScrolling(int i) {
            if (this.mScrolling) {
                return;
            }
            this.mAbort = false;
            this.mScrolling = true;
            this.tStart = SystemClock.uptimeMillis();
            this.mPrevTime = this.tStart;
            this.scrollDir = i;
            DragSortListView.this.post(this);
        }

        public void stopScrolling(boolean z) {
            if (z) {
                DragSortListView.this.removeCallbacks(this);
                this.mScrolling = false;
            } else {
                this.mAbort = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mAbort) {
                this.mScrolling = false;
                return;
            }
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int lastVisiblePosition = DragSortListView.this.getLastVisiblePosition();
            int count = DragSortListView.this.getCount();
            int paddingTop = DragSortListView.this.getPaddingTop();
            int height = (DragSortListView.this.getHeight() - paddingTop) - DragSortListView.this.getPaddingBottom();
            int iMin = Math.min(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid + DragSortListView.this.mFloatViewHeightHalf);
            int iMax = Math.max(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid - DragSortListView.this.mFloatViewHeightHalf);
            if (this.scrollDir == 0) {
                View childAt = DragSortListView.this.getChildAt(0);
                if (childAt == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (firstVisiblePosition == 0 && childAt.getTop() == paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = DragSortListView.this.mScrollProfile.getSpeed((DragSortListView.this.mUpScrollStartYF - iMax) / DragSortListView.this.mDragUpScrollHeight, this.mPrevTime);
                }
            } else {
                View childAt2 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
                if (childAt2 == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (lastVisiblePosition == count - 1 && childAt2.getBottom() <= height + paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = -DragSortListView.this.mScrollProfile.getSpeed((iMin - DragSortListView.this.mDownScrollStartYF) / DragSortListView.this.mDragDownScrollHeight, this.mPrevTime);
                }
            }
            this.mCurrTime = SystemClock.uptimeMillis();
            this.dt = this.mCurrTime - this.mPrevTime;
            this.dy = Math.round(this.mScrollSpeed * this.dt);
            int i = this.dy;
            if (i >= 0) {
                this.dy = Math.min(height, i);
                lastVisiblePosition = firstVisiblePosition;
            } else {
                this.dy = Math.max(-height, i);
            }
            View childAt3 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
            int top = childAt3.getTop() + this.dy;
            if (lastVisiblePosition == 0 && top > paddingTop) {
                top = paddingTop;
            }
            DragSortListView.this.mBlockLayoutRequests = true;
            DragSortListView.this.setSelectionFromTop(lastVisiblePosition, top - paddingTop);
            DragSortListView.this.layoutChildren();
            DragSortListView.this.invalidate();
            DragSortListView.this.mBlockLayoutRequests = false;
            DragSortListView.this.doDragFloatView(lastVisiblePosition, childAt3, false);
            this.mPrevTime = this.mCurrTime;
            DragSortListView.this.post(this);
        }
    }

    private class DragSortTracker {
        File mFile;
        StringBuilder mBuilder = new StringBuilder();
        private int mNumInBuffer = 0;
        private int mNumFlushes = 0;
        private boolean mTracking = false;

        public DragSortTracker() throws IOException {
            this.mFile = new File(DragSortListView.this.getContext().getFilesDir(), "dslv_state.txt");
            if (this.mFile.exists()) {
                return;
            }
            try {
                this.mFile.createNewFile();
                Log.d("mobeta", "file created");
            } catch (IOException e) {
                Log.w("mobeta", "Could not create dslv_state.txt");
                Log.d("mobeta", e.getMessage());
            }
        }

        public void startTracking() {
            this.mBuilder.append("<DSLVStates>\n");
            this.mNumFlushes = 0;
            this.mTracking = true;
        }

        public void appendState() {
            if (this.mTracking) {
                this.mBuilder.append("<DSLVState>\n");
                int childCount = DragSortListView.this.getChildCount();
                int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
                this.mBuilder.append("    <Positions>");
                for (int i = 0; i < childCount; i++) {
                    StringBuilder sb = this.mBuilder;
                    sb.append(firstVisiblePosition + i);
                    sb.append(",");
                }
                this.mBuilder.append("</Positions>\n");
                this.mBuilder.append("    <Tops>");
                for (int i2 = 0; i2 < childCount; i2++) {
                    StringBuilder sb2 = this.mBuilder;
                    sb2.append(DragSortListView.this.getChildAt(i2).getTop());
                    sb2.append(",");
                }
                this.mBuilder.append("</Tops>\n");
                this.mBuilder.append("    <Bottoms>");
                for (int i3 = 0; i3 < childCount; i3++) {
                    StringBuilder sb3 = this.mBuilder;
                    sb3.append(DragSortListView.this.getChildAt(i3).getBottom());
                    sb3.append(",");
                }
                this.mBuilder.append("</Bottoms>\n");
                StringBuilder sb4 = this.mBuilder;
                sb4.append("    <FirstExpPos>");
                sb4.append(DragSortListView.this.mFirstExpPos);
                sb4.append("</FirstExpPos>\n");
                StringBuilder sb5 = this.mBuilder;
                sb5.append("    <FirstExpBlankHeight>");
                DragSortListView dragSortListView = DragSortListView.this;
                int itemHeight = dragSortListView.getItemHeight(dragSortListView.mFirstExpPos);
                DragSortListView dragSortListView2 = DragSortListView.this;
                sb5.append(itemHeight - dragSortListView2.getChildHeight(dragSortListView2.mFirstExpPos));
                sb5.append("</FirstExpBlankHeight>\n");
                StringBuilder sb6 = this.mBuilder;
                sb6.append("    <SecondExpPos>");
                sb6.append(DragSortListView.this.mSecondExpPos);
                sb6.append("</SecondExpPos>\n");
                StringBuilder sb7 = this.mBuilder;
                sb7.append("    <SecondExpBlankHeight>");
                DragSortListView dragSortListView3 = DragSortListView.this;
                int itemHeight2 = dragSortListView3.getItemHeight(dragSortListView3.mSecondExpPos);
                DragSortListView dragSortListView4 = DragSortListView.this;
                sb7.append(itemHeight2 - dragSortListView4.getChildHeight(dragSortListView4.mSecondExpPos));
                sb7.append("</SecondExpBlankHeight>\n");
                StringBuilder sb8 = this.mBuilder;
                sb8.append("    <SrcPos>");
                sb8.append(DragSortListView.this.mSrcPos);
                sb8.append("</SrcPos>\n");
                StringBuilder sb9 = this.mBuilder;
                sb9.append("    <SrcHeight>");
                sb9.append(DragSortListView.this.mFloatViewHeight + DragSortListView.this.getDividerHeight());
                sb9.append("</SrcHeight>\n");
                StringBuilder sb10 = this.mBuilder;
                sb10.append("    <ViewHeight>");
                sb10.append(DragSortListView.this.getHeight());
                sb10.append("</ViewHeight>\n");
                StringBuilder sb11 = this.mBuilder;
                sb11.append("    <LastY>");
                sb11.append(DragSortListView.this.mLastY);
                sb11.append("</LastY>\n");
                StringBuilder sb12 = this.mBuilder;
                sb12.append("    <FloatY>");
                sb12.append(DragSortListView.this.mFloatViewMid);
                sb12.append("</FloatY>\n");
                this.mBuilder.append("    <ShuffleEdges>");
                for (int i4 = 0; i4 < childCount; i4++) {
                    StringBuilder sb13 = this.mBuilder;
                    DragSortListView dragSortListView5 = DragSortListView.this;
                    sb13.append(dragSortListView5.getShuffleEdge(firstVisiblePosition + i4, dragSortListView5.getChildAt(i4).getTop()));
                    sb13.append(",");
                }
                this.mBuilder.append("</ShuffleEdges>\n");
                this.mBuilder.append("</DSLVState>\n");
                this.mNumInBuffer++;
                if (this.mNumInBuffer > 1000) {
                    flush();
                    this.mNumInBuffer = 0;
                }
            }
        }

        public void flush() {
            if (this.mTracking) {
                try {
                    FileWriter fileWriter = new FileWriter(this.mFile, this.mNumFlushes != 0);
                    fileWriter.write(this.mBuilder.toString());
                    this.mBuilder.delete(0, this.mBuilder.length());
                    fileWriter.flush();
                    fileWriter.close();
                    this.mNumFlushes++;
                } catch (IOException unused) {
                }
            }
        }

        public void stopTracking() {
            if (this.mTracking) {
                this.mBuilder.append("</DSLVStates>\n");
                flush();
                this.mTracking = false;
            }
        }
    }
}
