package com.narvii.list;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.date.DateSection;
import com.narvii.lib.R;
import com.narvii.list.select.SharedPhotoDatePageHelper;

/* loaded from: classes3.dex */
public class DatePagedAdapter extends ProxyAdapter {
    public DatePageHelper datePageHelper;

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        DatePageHelper datePageHelper = this.datePageHelper;
        if (datePageHelper != null) {
            datePageHelper.addDateSection();
        }
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        DatePageHelper datePageHelper = this.datePageHelper;
        if (datePageHelper != null) {
            datePageHelper.addDateSection();
        }
    }

    public DatePagedAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        if (listAdapter instanceof NVPagedAdapter) {
            NVPagedAdapter nVPagedAdapter = (NVPagedAdapter) listAdapter;
            this.datePageHelper = newDatePageHelper(nVPagedAdapter);
            nVPagedAdapter.setDatePageHelper(this.datePageHelper);
            return;
        }
        throw new IllegalArgumentException("param adapter must be NVPagedAdapter");
    }

    protected DatePageHelper newDatePageHelper(NVPagedAdapter nVPagedAdapter) {
        return new SharedPhotoDatePageHelper(nVPagedAdapter);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (this.wrapped.getItem(i) instanceof DateSection) {
            return getViewTypeCount() - 1;
        }
        return super.getItemViewType(i);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        if (getItem(i) instanceof DateSection) {
            return false;
        }
        return super.isEnabled(i);
    }

    protected int dateSectionLayoutId() {
        return R.layout.date_section_header;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (getItem(i) instanceof DateSection) {
            View viewCreateView = createView(dateSectionLayoutId(), viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.time)).setText(((DateSection) getItem(i)).time);
            return viewCreateView;
        }
        return super.getView(i, view, viewGroup);
    }
}
