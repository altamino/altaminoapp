package com.narvii.user.favorite;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.util.Callback;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import com.narvii.widget.recycleview.NVRichRecycleView;

/* loaded from: classes3.dex */
public class NVRecycleViewWrapAdapter extends NVAdapter {
    private static final String TAG = "NVRecycleViewWrapperAdapter";
    private final RecyclerView.AdapterDataObserver observer;
    protected NVRecycleAdapter wrapped;

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    protected int recycleViewContainerLayoutId() {
        return R.layout.recycle_container_layout;
    }

    protected void updateViewsOnDataChanged() {
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.onAttach();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        refreshMonitorStart(i, callback);
        this.wrapped.refresh();
        refreshMonitorEnd();
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            return nVRecycleAdapter.onSaveInstanceState();
        }
        return super.onSaveInstanceState();
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.onRestoreInstanceState(bundle);
        }
        super.onRestoreInstanceState(bundle);
    }

    public NVRecycleViewWrapAdapter(NVContext nVContext, NVRecycleAdapter nVRecycleAdapter) {
        super(nVContext);
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: com.narvii.user.favorite.NVRecycleViewWrapAdapter.1
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i, int i2) {
                super.onItemRangeChanged(i, i2);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i, int i2) {
                super.onItemRangeInserted(i, i2);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i, int i2) {
                super.onItemRangeRemoved(i, i2);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i, int i2, int i3) {
                super.onItemRangeMoved(i, i2, i3);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }
        };
        this.wrapped = nVRecycleAdapter;
    }

    public void setRecycleAdapter(NVRecycleAdapter nVRecycleAdapter) {
        NVRecycleAdapter nVRecycleAdapter2 = this.wrapped;
        if (nVRecycleAdapter2 == nVRecycleAdapter) {
            return;
        }
        if (nVRecycleAdapter2 != null) {
            nVRecycleAdapter2.unregisterAdapterDataObserver(this.observer);
        }
        this.wrapped = nVRecycleAdapter;
        NVRecycleAdapter nVRecycleAdapter3 = this.wrapped;
        if (nVRecycleAdapter3 != null) {
            nVRecycleAdapter3.registerAdapterDataObserver(this.observer);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        KeyEvent.Callback callbackFindViewById;
        View viewCreateView = createView(recycleViewContainerLayoutId(), viewGroup, view, TAG);
        View viewFindViewById = viewCreateView.findViewById(R.id.recycle_layout);
        if (viewFindViewById instanceof NVRichRecycleView) {
            RecyclerView recyclerView = (RecyclerView) viewFindViewById.findViewById(R.id.recycle_list);
            if (recyclerView.getLayoutManager() == null) {
                ((NVRichRecycleView) viewFindViewById).setRecyclerViewLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            }
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            NVRecycleAdapter nVRecycleAdapter = this.wrapped;
            if (adapter != nVRecycleAdapter) {
                ((NVRichRecycleView) viewFindViewById).setRecyclerViewAdapter(nVRecycleAdapter);
            }
            return viewCreateView;
        }
        if (viewFindViewById instanceof RecyclerView) {
            callbackFindViewById = (RecyclerView) viewFindViewById;
        } else {
            callbackFindViewById = viewCreateView.findViewById(R.id.recycle_list);
        }
        if (callbackFindViewById == null) {
            throw new IllegalArgumentException("must contain a NvRecycleView in layout");
        }
        if (callbackFindViewById instanceof RecyclerView) {
            RecyclerView recyclerView2 = (RecyclerView) callbackFindViewById;
            if (recyclerView2.getLayoutManager() == null) {
                recyclerView2.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            }
            RecyclerView.Adapter adapter2 = recyclerView2.getAdapter();
            NVRecycleAdapter nVRecycleAdapter2 = this.wrapped;
            if (adapter2 != nVRecycleAdapter2) {
                recyclerView2.setAdapter(nVRecycleAdapter2);
            }
        }
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            return nVRecycleAdapter.errorMessage();
        }
        return super.errorMessage();
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.onErrorRetry();
        } else {
            super.onErrorRetry();
        }
    }
}
