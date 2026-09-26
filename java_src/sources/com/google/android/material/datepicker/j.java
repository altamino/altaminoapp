package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.timepicker.TimeModel;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class j extends BaseAdapter {
    static final int MAXIMUM_WEEKS = s.k().getMaximum(4);
    final CalendarConstraints calendarConstraints;
    b calendarStyle;
    final DateSelector<?> dateSelector;
    final Month month;
    private Collection<Long> previouslySelectedDates;

    boolean g(int i10) {
        return (i10 + 1) % this.month.daysInWeek == 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    private void e(Context context) {
        if (this.calendarStyle == null) {
            this.calendarStyle = new b(context);
        }
    }

    private boolean h(long j6) {
        Iterator<Long> it = this.dateSelector.O().iterator();
        while (it.hasNext()) {
            if (s.a(j6) == s.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private void k(@Nullable TextView textView, long j6) {
        a aVar;
        if (textView == null) {
            return;
        }
        if (this.calendarConstraints.i().f(j6)) {
            textView.setEnabled(true);
            if (h(j6)) {
                aVar = this.calendarStyle.selectedDay;
            } else {
                aVar = s.i().getTimeInMillis() == j6 ? this.calendarStyle.todayDay : this.calendarStyle.day;
            }
        } else {
            textView.setEnabled(false);
            aVar = this.calendarStyle.invalidDay;
        }
        aVar.d(textView);
    }

    int a(int i10) {
        return b() + (i10 - 1);
    }

    int b() {
        return this.month.i();
    }

    @Override // android.widget.Adapter
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i10) {
        if (i10 < this.month.i() || i10 > i()) {
            return null;
        }
        return Long.valueOf(this.month.k(j(i10)));
    }

    boolean f(int i10) {
        return i10 % this.month.daysInWeek == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.month.daysInMonth + b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10 / this.month.daysInWeek;
    }

    int i() {
        return (this.month.i() + this.month.daysInMonth) - 1;
    }

    int j(int i10) {
        return (i10 - this.month.i()) + 1;
    }

    public void m(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.previouslySelectedDates.iterator();
        while (it.hasNext()) {
            l(materialCalendarGridView, it.next().longValue());
        }
        DateSelector<?> dateSelector = this.dateSelector;
        if (dateSelector != null) {
            Iterator<Long> it2 = dateSelector.O().iterator();
            while (it2.hasNext()) {
                l(materialCalendarGridView, it2.next().longValue());
            }
            this.previouslySelectedDates = this.dateSelector.O();
        }
    }

    j(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.month = month;
        this.dateSelector = dateSelector;
        this.calendarConstraints = calendarConstraints;
        this.previouslySelectedDates = dateSelector.O();
    }

    private void l(MaterialCalendarGridView materialCalendarGridView, long j6) {
        if (Month.e(j6).equals(this.month)) {
            k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(this.month.l(j6)) - materialCalendarGridView.getFirstVisiblePosition()), j6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0075  */
    @Override // android.widget.Adapter
    @NonNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public TextView getView(int i10, @Nullable View view, @NonNull ViewGroup viewGroup) {
        e(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(d3.h.mtrl_calendar_day, viewGroup, false);
        }
        int iB = i10 - b();
        if (iB >= 0) {
            Month month = this.month;
            if (iB < month.daysInMonth) {
                int i11 = iB + 1;
                textView.setTag(month);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(i11)));
                long jK = this.month.k(i11);
                if (this.month.year == Month.h().year) {
                    textView.setContentDescription(d.a(jK));
                } else {
                    textView.setContentDescription(d.d(jK));
                }
                textView.setVisibility(0);
                textView.setEnabled(true);
            } else {
                textView.setVisibility(8);
                textView.setEnabled(false);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
        }
        Long item = getItem(i10);
        if (item == null) {
            return textView;
        }
        k(textView, item.longValue());
        return textView;
    }

    boolean n(int i10) {
        if (i10 >= b() && i10 <= i()) {
            return true;
        }
        return false;
    }
}
