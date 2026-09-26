package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
class k extends RecyclerView.Adapter<b> {

    @NonNull
    private final CalendarConstraints calendarConstraints;
    private final DateSelector<?> dateSelector;
    private final int itemHeight;
    private final f.l onDayClickListener;

    class a implements AdapterView.OnItemClickListener {
        final /* synthetic */ MaterialCalendarGridView val$monthGrid;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.val$monthGrid = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
            if (this.val$monthGrid.getAdapter().n(i10)) {
                k.this.onDayClickListener.a(this.val$monthGrid.getAdapter().getItem(i10).longValue());
            }
        }
    }

    public static class b extends RecyclerView.ViewHolder {
        final MaterialCalendarGridView monthGrid;
        final TextView monthTitle;

        b(@NonNull LinearLayout linearLayout, boolean z6) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(d3.f.month_title);
            this.monthTitle = textView;
            ViewCompat.v0(textView, true);
            this.monthGrid = (MaterialCalendarGridView) linearLayout.findViewById(d3.f.month_grid);
            if (!z6) {
                textView.setVisibility(8);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.calendarConstraints.l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return this.calendarConstraints.n().p(i10).o();
    }

    @NonNull
    Month h(int i10) {
        return this.calendarConstraints.n().p(i10);
    }

    int j(@NonNull Month month) {
        return this.calendarConstraints.n().s(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b bVar, int i10) {
        Month monthP = this.calendarConstraints.n().p(i10);
        bVar.monthTitle.setText(monthP.n());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.monthGrid.findViewById(d3.f.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthP.equals(materialCalendarGridView.getAdapter().month)) {
            j jVar = new j(monthP, this.dateSelector, this.calendarConstraints);
            materialCalendarGridView.setNumColumns(monthP.daysInWeek);
            materialCalendarGridView.setAdapter((ListAdapter) jVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    k(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, f.l lVar) {
        int iU;
        Month monthN = calendarConstraints.n();
        Month monthK = calendarConstraints.k();
        Month monthM = calendarConstraints.m();
        if (monthN.compareTo(monthM) <= 0) {
            if (monthM.compareTo(monthK) <= 0) {
                int iU2 = j.MAXIMUM_WEEKS * f.u(context);
                if (g.v(context)) {
                    iU = f.u(context);
                } else {
                    iU = 0;
                }
                this.itemHeight = iU2 + iU;
                this.calendarConstraints = calendarConstraints;
                this.dateSelector = dateSelector;
                this.onDayClickListener = lVar;
                setHasStableIds(true);
                return;
            }
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    @NonNull
    CharSequence i(int i10) {
        return h(i10).n();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(d3.h.mtrl_calendar_month_labeled, viewGroup, false);
        if (g.v(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.itemHeight));
            return new b(linearLayout, true);
        }
        return new b(linearLayout, false);
    }
}
