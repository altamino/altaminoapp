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

/* JADX INFO: loaded from: classes9.dex */
public class DatePagedAdapter extends ProxyAdapter {
    public DatePageHelper datePageHelper;

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected int dateSectionLayoutId() {
        return R.layout.date_section_header;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return this.wrapped.getItem(i10) instanceof DateSection ? getViewTypeCount() - 1 : super.getItemViewType(i10);
    }

    protected DatePageHelper newDatePageHelper(NVPagedAdapter nVPagedAdapter) {
        return new SharedPhotoDatePageHelper(nVPagedAdapter);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        DatePageHelper datePageHelper = this.datePageHelper;
        if (datePageHelper != null) {
            datePageHelper.addDateSection();
        }
        super.notifyDataSetChanged();
    }

    public DatePagedAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (getItem(i10) instanceof DateSection) {
            View viewCreateView = createView(dateSectionLayoutId(), viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.time)).setText(((DateSection) getItem(i10)).time);
            return viewCreateView;
        }
        return super.getView(i10, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        if (getItem(i10) instanceof DateSection) {
            return false;
        }
        return super.isEnabled(i10);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        DatePageHelper datePageHelper = this.datePageHelper;
        if (datePageHelper != null) {
            datePageHelper.addDateSection();
        }
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        if (listAdapter instanceof NVPagedAdapter) {
            NVPagedAdapter nVPagedAdapter = (NVPagedAdapter) listAdapter;
            DatePageHelper datePageHelperNewDatePageHelper = newDatePageHelper(nVPagedAdapter);
            this.datePageHelper = datePageHelperNewDatePageHelper;
            nVPagedAdapter.setDatePageHelper(datePageHelperNewDatePageHelper);
            return;
        }
        throw new IllegalArgumentException("param adapter must be NVPagedAdapter");
    }
}
