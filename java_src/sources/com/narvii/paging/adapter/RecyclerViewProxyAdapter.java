package com.narvii.paging.adapter;

import android.content.Intent;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes8.dex */
public class RecyclerViewProxyAdapter extends NVRecyclerViewBaseAdapter {
    NVRecyclerViewBaseAdapter.DataSetChangeListener listener;
    RecyclerView.AdapterDataObserver observer;
    public NVRecyclerViewBaseAdapter wrapped;

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        return this.wrapped.getErrorMessage();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i10) {
        return this.wrapped.getItem(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.wrapped.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        return this.wrapped.getItemViewType(i10);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getSize() {
        return this.wrapped.getSize();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        return this.wrapped.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return this.wrapped.isListShow();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        return this.wrapped.isLoading();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        this.wrapped.onAttach();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        this.wrapped.onBindViewHolder(viewHolder, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return this.wrapped.onCreateViewHolder(viewGroup, i10);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onErrorRetry() {
        this.wrapped.onErrorRetry();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, PageRequestCallback pageRequestCallback) {
        this.wrapped.refresh(i10, pageRequestCallback);
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
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.registerAdapterDataObserver(this.observer);
            this.wrapped.addDataSetChangeListener(this.listener);
        }
        notifyDataSetChanged();
    }

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
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i10, int i11) {
                super.onItemRangeChanged(i10, i11);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
                super.onItemRangeChanged(i10, i11, obj);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i10, int i11) {
                super.onItemRangeInserted(i10, i11);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i10, int i11, int i12) {
                super.onItemRangeMoved(i10, i11, i12);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i10, int i11) {
                super.onItemRangeRemoved(i10, i11);
                RecyclerViewProxyAdapter.this.notifyDataSetChanged();
            }
        };
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean dispatchLoginResult(boolean z6, Intent intent) {
        if (super.dispatchLoginResult(z6, intent)) {
            return true;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.wrapped;
        if (nVRecyclerViewBaseAdapter != null && nVRecyclerViewBaseAdapter.dispatchLoginResult(z6, intent)) {
            return true;
        }
        return false;
    }
}
