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
import com.narvii.util.Constants;
import com.narvii.util.DateUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
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
        for (T t5 : listRawList) {
            if (t5 instanceof TimeSectionInterface) {
                Date dateSignificantTime = ((TimeSectionInterface) t5).significantTime();
                if (!DateUtils.isSameDay(date, dateSignificantTime)) {
                    this.l.add(new TimeSection(formatDate(dateSignificantTime)));
                }
                date = dateSignificantTime;
            }
            this.l.add(t5);
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
        return DateUtils.isSameYear(date) ? this.dateFormatWithoutYear.format(date) : this.dateFormatWithYear.format(date);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.wrapped.areAllItemsEnabled();
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
    public Object getItem(int i10) {
        return this.l.get(i10);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.wrapped.hasStableIds();
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof NVPagedAdapter)) {
            throw new IllegalArgumentException("the adapter must be a nvapageadapter");
        }
        super.setAdapter(listAdapter);
    }

    public TimeSectionAdapter(NVContext nVContext) {
        super(nVContext);
        this.dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
        this.dateFormatWithYear = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault());
    }

    @Override // com.narvii.list.ProxyAdapter
    public ListAdapter getAdapter() {
        return super.getAdapter();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        Object item = getItem(i10);
        if (item == NVPagedAdapter.LOADING) {
            return System.currentTimeMillis();
        }
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        if (getItem(i10) instanceof TimeSection) {
            return getViewTypeCount() - 1;
        }
        return this.wrapped.getItemViewType(i10);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        Object item = getItem(i10);
        if (item instanceof TimeSection) {
            TextView textView = (TextView) createView(R.layout.item_section_layout, viewGroup, view);
            textView.setText(((TimeSection) item).time);
            return textView;
        }
        return this.wrapped.getView(i10, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        if (getItem(i10) instanceof TimeSection) {
            return false;
        }
        return true;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        addTimeSection();
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        addTimeSection();
    }
}
