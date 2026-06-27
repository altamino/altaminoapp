package com.narvii.paging.adapter;

import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class RecyclerViewProxyAdapter extends NVRecyclerViewBaseAdapter {
    NVRecyclerViewBaseAdapter.DataSetChangeListener listener;
    RecyclerView.AdapterDataObserver observer;
    public NVRecyclerViewBaseAdapter wrapped;

    public RecyclerViewProxyAdapter(NVContext nVContext) {
        super(nVContext);
        this.listener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.paging.adapter.RecyclerViewProxyAdapter.1
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public void onDataSetChanged() {
                RecyclerViewProxyAdapter.this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.paging.adapter.RecyclerViewProxyAdapter.1.1
                    @Override // com.narvii.util.Callback
                    public void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                        dataSetChangeListener.onDataSetChanged();
                    }
                });
            }
        };
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: com.narvii.paging.adapter.RecyclerViewProxyAdapter.2
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i, int i2) {
                super.onItemRangeChanged(i, i2);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i, int i2, Object obj) {
                super.onItemRangeChanged(i, i2, obj);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i, int i2) {
                super.onItemRangeInserted(i, i2);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i, int i2) {
                super.onItemRangeRemoved(i, i2);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i, int i2, int i3) {
                super.onItemRangeMoved(i, i2, i3);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }
        };
    }

    public void setAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.wrapped;
        if (nVRecyclerViewBaseAdapter2 == nVRecyclerViewBaseAdapter) {
            return;
        }
        if (nVRecyclerViewBaseAdapter2 != null) {
            try {
                nVRecyclerViewBaseAdapter2.unregisterAdapterDataObserver(this.observer);
            } catch (Exception unused) {
            }
        }
        this.wrapped = nVRecyclerViewBaseAdapter;
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter3 = this.wrapped;
        if (nVRecyclerViewBaseAdapter3 != null) {
            nVRecyclerViewBaseAdapter3.registerAdapterDataObserver(this.observer);
            this.wrapped.addDataSetChangeListener(this.listener);
        }
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        this.wrapped.onAttach();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.wrapped.onCreateViewHolder(viewGroup, i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        this.wrapped.onBindViewHolder(viewHolder, i);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean dispatchLoginResult(boolean z, Intent intent) {
        if (super.dispatchLoginResult(z, intent)) {
            return true;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.wrapped;
        return nVRecyclerViewBaseAdapter != null && nVRecyclerViewBaseAdapter.dispatchLoginResult(z, intent);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        this.wrapped.refresh(i, pageRequestCallback);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        return this.wrapped.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        return this.wrapped.getErrorMessage();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return this.wrapped.isListShow();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onErrorRetry() {
        this.wrapped.onErrorRetry();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        return this.wrapped.isLoading();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getSize() {
        return this.wrapped.getSize();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i) {
        return this.wrapped.getItem(i);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.wrapped.getItemCount();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.wrapped.getItemViewType(i);
    }
}
