package com.narvii.widget.recycleview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.narvii.util.Log;
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes3.dex */
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

    private int findMax(int[] iArr) {
        int i10 = Integer.MIN_VALUE;
        for (int i11 : iArr) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    public void init() {
        this.lastRequestLodMoreStart = 0;
        RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: com.narvii.widget.recycleview.NVHorizontalRecycleView.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                super.onScrollStateChanged(recyclerView, i10);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                super.onScrolled(recyclerView, i10, i11);
            }
        };
        this.mInternalScrollListener = onScrollListener;
        addOnScrollListener(onScrollListener);
    }

    public void setIsLoadingMore(boolean z6) {
        this.isLoadingMore = z6;
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
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
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
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.lastLoadMorePosition);
        }
    }

    public NVHorizontalRecycleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ITEM_COUNT_LEFT_FOR_LOAD_MORE = 2;
        init();
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
            this.lastVisiablePositions = new int[staggeredGridLayoutManager.B()];
        }
        staggeredGridLayoutManager.r(this.lastVisiablePositions);
        return findMax(this.lastVisiablePositions);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.lastRequestLodMoreStart = savedState.lastLoadMorePosition;
        requestLayout();
    }

    private void checkLoadMore() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        int lastVisibleItemPosition = getLastVisibleItemPosition(layoutManager);
        int childCount = layoutManager.getChildCount();
        int itemCount = layoutManager.getItemCount();
        int i10 = itemCount - lastVisibleItemPosition;
        if ((i10 <= this.ITEM_COUNT_LEFT_FOR_LOAD_MORE || (i10 == 0 && itemCount > childCount)) && !this.isLoadingMore) {
            int itemCount2 = getAdapter().getItemCount();
            if (!this.isLoadingMore && this.lastRequestLodMoreStart != itemCount2) {
                Log.d(TAG, "try to load more items in recycle view");
                this.isLoadingMore = true;
                this.lastRequestLodMoreStart = itemCount2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.lastLoadMorePosition = this.lastRequestLodMoreStart;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        super.setAdapter(adapter);
        this.isLoadingMore = false;
    }
}
