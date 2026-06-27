package com.narvii.widget.recycleview;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import com.narvii.nvplayerview.delegate.IVideoListScrollListener;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.util.Log;

/* loaded from: classes3.dex */
public class NVRecyclerView extends RecyclerView implements IVideoListView {
    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void removeOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener) {
    }

    public NVRecyclerView(Context context) {
        super(context);
    }

    public NVRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NVRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (isAttachedToWindow()) {
            try {
                super.onDetachedFromWindow();
            } catch (Exception e) {
                Log.e("recycler view detach error", e);
            }
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void addOnVideoListScrollListener(final IVideoListScrollListener iVideoListScrollListener) {
        if (getLayoutManager() instanceof LinearLayoutManager) {
            addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.widget.recycleview.NVRecyclerView.1
                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    iVideoListScrollListener.onScrollStateChanged(NVRecyclerView.this, i);
                }

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    iVideoListScrollListener.onScroll(NVRecyclerView.this);
                }
            });
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public int getFirstVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        return 0;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public int getLastVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        return 0;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public int getTotalCountInAdapter() {
        if (!(getLayoutManager() instanceof LinearLayoutManager) || getAdapter() == null) {
            return 0;
        }
        return getAdapter().getItemCount();
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public Object getItemInAdapter(int i) {
        if (!(getLayoutManager() instanceof LinearLayoutManager)) {
            return null;
        }
        if (getAdapter() instanceof NVRecyclerViewAdapter) {
            return ((NVRecyclerViewAdapter) getAdapter()).getItem(i);
        }
        if (getAdapter() instanceof RecyclerViewMergeAdapter) {
            return ((RecyclerViewMergeAdapter) getAdapter()).getItem(i);
        }
        return null;
    }
}
