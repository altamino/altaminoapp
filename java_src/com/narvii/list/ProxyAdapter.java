package com.narvii.list;

import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class ProxyAdapter extends NVAdapter {
    protected NVAdapter nva;
    private final DataSetObserver observer;
    protected ListAdapter wrapped;

    public ProxyAdapter(NVContext nVContext) {
        super(nVContext);
        this.observer = new DataSetObserver() { // from class: com.narvii.list.ProxyAdapter.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                ProxyAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                ProxyAdapter.this.notifyDataSetInvalidated();
            }
        };
    }

    public ListAdapter getAdapter() {
        return this.wrapped;
    }

    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.wrapped;
        if (listAdapter2 == listAdapter) {
            return;
        }
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.observer);
        }
        this.wrapped = listAdapter;
        this.nva = listAdapter instanceof NVAdapter ? (NVAdapter) listAdapter : null;
        ListAdapter listAdapter3 = this.wrapped;
        if (listAdapter3 != null) {
            listAdapter3.registerDataSetObserver(this.observer);
        }
        notifyDataSetChanged();
    }

    protected void onAdapterChanged() {
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter == null) {
            return 0;
        }
        return listAdapter.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.wrapped.getItem(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.wrapped.hasStableIds();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.wrapped.getItemId(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.wrapped.areAllItemsEnabled();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.wrapped.isEnabled(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.wrapped.getItemViewType(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return this.wrapped.getView(i, view, viewGroup);
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            nVAdapter.onRestoreInstanceState(bundle);
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            return nVAdapter.onSaveInstanceState();
        }
        return new Bundle();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter != null) {
            return listAdapter.isEmpty();
        }
        return super.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        if (this.wrapped == null) {
            return false;
        }
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            return nVAdapter.isListShown();
        }
        return !r0.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            nVAdapter.onAttach();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onDetach() {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            nVAdapter.onDetach();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            nVAdapter.onErrorRetry();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            nVAdapter.refresh(i, callback);
        } else {
            super.refresh(i, callback);
        }
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter == null) {
            return null;
        }
        return nVAdapter.errorMessage();
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            return nVAdapter.dispatchOnItemClick(listAdapter, i, obj, view, view2);
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        NVAdapter nVAdapter = this.nva;
        if (nVAdapter != null) {
            return nVAdapter.onLongClick(listAdapter, i, obj, view, view2);
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    boolean dispatchLoginResult(boolean z, Intent intent) {
        if (super.dispatchLoginResult(z, intent)) {
            return true;
        }
        NVAdapter nVAdapter = this.nva;
        return nVAdapter != null && nVAdapter.dispatchLoginResult(z, intent);
    }
}
