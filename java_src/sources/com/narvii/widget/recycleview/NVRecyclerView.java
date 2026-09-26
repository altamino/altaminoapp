package com.narvii.widget.recycleview;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.nvplayerview.delegate.IVideoListScrollListener;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class NVRecyclerView extends RecyclerView implements IVideoListView {
    public NVRecyclerView(Context context) {
        super(context);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void removeOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener) {
    }

    public NVRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NVRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void addOnVideoListScrollListener(final IVideoListScrollListener iVideoListScrollListener) {
        if (getLayoutManager() instanceof LinearLayoutManager) {
            addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.widget.recycleview.NVRecyclerView.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                    iVideoListScrollListener.onScrollStateChanged(NVRecyclerView.this, i10);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
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
    public Object getItemInAdapter(int i10) {
        if (getLayoutManager() instanceof LinearLayoutManager) {
            if (getAdapter() instanceof NVRecyclerViewAdapter) {
                return ((NVRecyclerViewAdapter) getAdapter()).getItem(i10);
            }
            if (getAdapter() instanceof RecyclerViewMergeAdapter) {
                return ((RecyclerViewMergeAdapter) getAdapter()).getItem(i10);
            }
            return null;
        }
        return null;
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
        if ((getLayoutManager() instanceof LinearLayoutManager) && getAdapter() != null) {
            return getAdapter().getItemCount();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (isAttachedToWindow()) {
            try {
                super.onDetachedFromWindow();
            } catch (Exception e) {
                Log.e("recycler view detach error", e);
            }
        }
    }
}
