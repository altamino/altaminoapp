package com.narvii.list;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes4.dex */
public class ReverseAdapter extends ProxyAdapter {
    public ReverseAdapter(NVContext nVContext) {
        super(nVContext);
    }

    private int getPos(int i10) {
        if ((getCount() - i10) - 1 < 0) {
            return 0;
        }
        return (getCount() - i10) - 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        return super.getItem(getPos(i10));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        return super.getItemId(getPos(i10));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return super.getItemViewType(getPos(i10));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        return super.getView(getPos(i10), view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return super.isEnabled(getPos(i10));
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        return super.onItemClick(listAdapter, getPos(i10), obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        return super.onLongClick(listAdapter, getPos(i10), obj, view, view2);
    }
}
