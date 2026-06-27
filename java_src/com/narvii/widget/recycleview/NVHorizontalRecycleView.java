package com.narvii.widget.recycleview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.util.Log;
import com.narvii.widget.HorizontalRecyclerView;

/* loaded from: classes3.dex */
public class NVHorizontalRecycleView extends HorizontalRecyclerView {
    private static final String TAG = "NVRecycleView";
    protected int ITEM_COUNT_LEFT_FOR_LOAD_MORE;
    private boolean isLoadingMore;
    private int lastRequestLodMoreStart;
    private int[] lastVisiablePositions;
    protected RecyclerView.OnScrollListener mInternalScrollListener;

    public NVHorizontalRecycleView(Context context) {
        this(context, null);
    }

    public NVHorizontalRecycleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ITEM_COUNT_LEFT_FOR_LOAD_MORE = 2;
        init();
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        super.setAdapter(adapter);
        this.isLoadingMore = false;
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void init() {
        this.lastRequestLodMoreStart = 0;
        this.mInternalScrollListener = new RecyclerView.OnScrollListener() { // from class: com.narvii.widget.recycleview.NVHorizontalRecycleView.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
            }

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
            }
        };
        addOnScrollListener(this.mInternalScrollListener);
    }

    private void checkLoadMore() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        int lastVisibleItemPosition = getLastVisibleItemPosition(layoutManager);
        int childCount = layoutManager.getChildCount();
        int itemCount = layoutManager.getItemCount();
        int i = itemCount - lastVisibleItemPosition;
        if ((i <= this.ITEM_COUNT_LEFT_FOR_LOAD_MORE || (i == 0 && itemCount > childCount)) && !this.isLoadingMore) {
            int itemCount2 = getAdapter().getItemCount();
            if (this.isLoadingMore || this.lastRequestLodMoreStart == itemCount2) {
                return;
            }
            Log.d(TAG, "try to load more items in recycle view");
            this.isLoadingMore = true;
            this.lastRequestLodMoreStart = itemCount2;
        }
    }

    private int getLastVisibleItemPosition(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return -1;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        if (this.lastVisiablePositions == null) {
            this.lastVisiablePositions = new int[staggeredGridLayoutManager.getSpanCount()];
        }
        staggeredGridLayoutManager.findLastVisibleItemPositions(this.lastVisiablePositions);
        return findMax(this.lastVisiablePositions);
    }

    public void setIsLoadingMore(boolean z) {
        this.isLoadingMore = z;
    }

    private int findMax(int[] iArr) {
        int i = Integer.MIN_VALUE;
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.lastLoadMorePosition = this.lastRequestLodMoreStart;
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.lastRequestLodMoreStart = savedState.lastLoadMorePosition;
        requestLayout();
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.widget.recycleview.NVHorizontalRecycleView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int lastLoadMorePosition;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.lastLoadMorePosition = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.lastLoadMorePosition);
        }
    }
}
