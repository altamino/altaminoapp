package androidx.databinding.adapters;

import android.widget.DatePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes5.dex */
@InverseBindingMethods
@RestrictTo
public class DatePickerBindingAdapter {

    private static class DateChangedListener implements DatePicker.OnDateChangedListener {
        InverseBindingListener mDayChanged;
        DatePicker.OnDateChangedListener mListener;
        InverseBindingListener mMonthChanged;
        InverseBindingListener mYearChanged;

        @Override // android.widget.DatePicker.OnDateChangedListener
        public void onDateChanged(DatePicker datePicker, int i10, int i11, int i12) {
            DatePicker.OnDateChangedListener onDateChangedListener = this.mListener;
            if (onDateChangedListener != null) {
                onDateChangedListener.onDateChanged(datePicker, i10, i11, i12);
            }
            InverseBindingListener inverseBindingListener = this.mYearChanged;
            if (inverseBindingListener != null) {
                inverseBindingListener.a();
            }
            InverseBindingListener inverseBindingListener2 = this.mMonthChanged;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.a();
            }
            InverseBindingListener inverseBindingListener3 = this.mDayChanged;
            if (inverseBindingListener3 != null) {
                inverseBindingListener3.a();
            }
        }

        private DateChangedListener() {
        }
    }
}
