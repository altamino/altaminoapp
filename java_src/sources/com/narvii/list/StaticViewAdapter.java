package com.narvii.list;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes11.dex */
public class StaticViewAdapter extends BaseAdapter {
    private ArrayList<Object> views = new ArrayList<>();

    public void addLayouts(int... iArr) {
        for (int i10 : iArr) {
            this.views.add(Integer.valueOf(i10));
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    public void addViews(View... viewArr) {
        this.views.addAll(Arrays.asList(viewArr));
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.views.size();
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        Object objInflate = this.views.get(i10);
        if (objInflate instanceof Integer) {
            objInflate = LayoutInflater.from(viewGroup.getContext()).inflate(((Integer) objInflate).intValue(), viewGroup, false);
            this.views.set(i10, objInflate);
        }
        return (View) objInflate;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return Integer.valueOf(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return hashCode() + i10;
    }
}
