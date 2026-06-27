package com.narvii.poweruser.history;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.ProxyAdapter;
import com.narvii.model.NVObject;
import com.narvii.util.DateUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class TimeSectionAdapter<T extends NVObject> extends ProxyAdapter {
    SimpleDateFormat dateFormatWithYear;
    SimpleDateFormat dateFormatWithoutYear;
    List l;

    public static class TimeSection {
        final String time;

        public TimeSection(String str) {
            this.time = str;
        }
    }

    public TimeSectionAdapter(NVContext nVContext) {
        super(nVContext);
        this.dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
        this.dateFormatWithYear = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof NVPagedAdapter)) {
            throw new IllegalArgumentException("the adapter must be a nvapageadapter");
        }
        super.setAdapter(listAdapter);
    }

    @Override // com.narvii.list.ProxyAdapter
    public ListAdapter getAdapter() {
        return super.getAdapter();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        addTimeSection();
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        List list = this.l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return this.l.get(i);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.wrapped.hasStableIds();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i) {
        Object item = getItem(i);
        if (item == NVPagedAdapter.LOADING) {
            return System.currentTimeMillis();
        }
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.wrapped.areAllItemsEnabled();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return !(getItem(i) instanceof TimeSection);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (getItem(i) instanceof TimeSection) {
            return getViewTypeCount() - 1;
        }
        return this.wrapped.getItemViewType(i);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Object item = getItem(i);
        if (item instanceof TimeSection) {
            TextView textView = (TextView) createView(R.layout.item_section_layout, viewGroup, view);
            textView.setText(((TimeSection) item).time);
            return textView;
        }
        return this.wrapped.getView(i, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        addTimeSection();
    }

    private void addTimeSection() {
        List<? extends T> listRawList = ((NVPagedAdapter) this.wrapped).rawList();
        Date date = null;
        if (listRawList == null) {
            this.l = null;
            return;
        }
        if (listRawList.isEmpty()) {
            this.l = new ArrayList();
            return;
        }
        this.l = new ArrayList();
        for (T t : listRawList) {
            if (t instanceof TimeSectionInterface) {
                Date dateSignificantTime = ((TimeSectionInterface) t).significantTime();
                if (!DateUtils.isSameDay(date, dateSignificantTime)) {
                    this.l.add(new TimeSection(formatDate(dateSignificantTime)));
                }
                date = dateSignificantTime;
            }
            this.l.add(t);
        }
    }

    private String formatDate(Date date) {
        if (date == null) {
            return null;
        }
        if (DateUtils.isToday(date)) {
            return getContext().getResources().getString(R.string.today).toUpperCase(Locale.getDefault());
        }
        if (DateUtils.isYesterday(date)) {
            return getContext().getResources().getString(R.string.yesterday).toUpperCase(Locale.getDefault());
        }
        if (DateUtils.isSameYear(date)) {
            return this.dateFormatWithoutYear.format(date);
        }
        return this.dateFormatWithYear.format(date);
    }
}
