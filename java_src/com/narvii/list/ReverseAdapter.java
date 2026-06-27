package com.narvii.list;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public class ReverseAdapter extends ProxyAdapter {
    public ReverseAdapter(NVContext nVContext) {
        super(nVContext);
    }

    private int getPos(int i) {
        if ((getCount() - i) - 1 < 0) {
            return 0;
        }
        return (getCount() - i) - 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return super.getItem(getPos(i));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return super.getItemId(getPos(i));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return super.isEnabled(getPos(i));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return super.getItemViewType(getPos(i));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return super.getView(getPos(i), view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        return super.onItemClick(listAdapter, getPos(i), obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        return super.onLongClick(listAdapter, getPos(i), obj, view, view2);
    }
}
