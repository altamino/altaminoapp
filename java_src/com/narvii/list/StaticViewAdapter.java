package com.narvii.list;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class StaticViewAdapter extends BaseAdapter {
    private ArrayList<Object> views = new ArrayList<>();

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public void addViews(View... viewArr) {
        this.views.addAll(Arrays.asList(viewArr));
        notifyDataSetChanged();
    }

    public void addLayouts(int... iArr) {
        for (int i : iArr) {
            this.views.add(Integer.valueOf(i));
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.views.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return hashCode() + i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Object objInflate = this.views.get(i);
        if (objInflate instanceof Integer) {
            objInflate = LayoutInflater.from(viewGroup.getContext()).inflate(((Integer) objInflate).intValue(), viewGroup, false);
            this.views.set(i, objInflate);
        }
        return (View) objInflate;
    }
}
