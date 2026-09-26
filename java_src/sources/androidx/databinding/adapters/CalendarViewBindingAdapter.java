package androidx.databinding.adapters;

import android.widget.CalendarView;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes2.dex */
@InverseBindingMethods
@RestrictTo
public class CalendarViewBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.CalendarViewBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass1 implements CalendarView.OnDateChangeListener {
        final /* synthetic */ InverseBindingListener val$attrChange;
        final /* synthetic */ CalendarView.OnDateChangeListener val$onDayChange;

        @Override // android.widget.CalendarView.OnDateChangeListener
        public void onSelectedDayChange(CalendarView calendarView, int i10, int i11, int i12) {
            CalendarView.OnDateChangeListener onDateChangeListener = this.val$onDayChange;
            if (onDateChangeListener != null) {
                onDateChangeListener.onSelectedDayChange(calendarView, i10, i11, i12);
            }
            this.val$attrChange.a();
        }
    }
}
