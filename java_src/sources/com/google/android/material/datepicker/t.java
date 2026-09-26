package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class t extends RecyclerView.Adapter<b> {
    private final f<?> materialCalendar;

    class a implements View.OnClickListener {
        final /* synthetic */ int val$year;

        a(int i10) {
            this.val$year = i10;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.materialCalendar.z(t.this.materialCalendar.q().h(Month.c(this.val$year, t.this.materialCalendar.s().month)));
            t.this.materialCalendar.A(f.k.DAY);
        }
    }

    public static class b extends RecyclerView.ViewHolder {
        final TextView textView;

        b(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    @NonNull
    private View.OnClickListener h(int i10) {
        return new a(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.materialCalendar.q().o();
    }

    int i(int i10) {
        return i10 - this.materialCalendar.q().n().year;
    }

    int j(int i10) {
        return this.materialCalendar.q().n().year + i10;
    }

    t(f<?> fVar) {
        this.materialCalendar = fVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b bVar, int i10) {
        com.google.android.material.datepicker.a aVar;
        int iJ = j(i10);
        String string = bVar.textView.getContext().getString(d3.j.mtrl_picker_navigate_to_year_description);
        bVar.textView.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(iJ)));
        bVar.textView.setContentDescription(String.format(string, Integer.valueOf(iJ)));
        com.google.android.material.datepicker.b bVarR = this.materialCalendar.r();
        Calendar calendarI = s.i();
        if (calendarI.get(1) == iJ) {
            aVar = bVarR.todayYear;
        } else {
            aVar = bVarR.year;
        }
        Iterator<Long> it = this.materialCalendar.t().O().iterator();
        while (it.hasNext()) {
            calendarI.setTimeInMillis(it.next().longValue());
            if (calendarI.get(1) == iJ) {
                aVar = bVarR.selectedYear;
            }
        }
        aVar.d(bVar.textView);
        bVar.textView.setOnClickListener(h(iJ));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(d3.h.mtrl_calendar_year, viewGroup, false));
    }
}
