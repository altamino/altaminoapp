package androidx.databinding.adapters;

import android.widget.TimePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class TimePickerBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.TimePickerBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass1 implements TimePicker.OnTimeChangedListener {
        final /* synthetic */ InverseBindingListener val$hourChange;
        final /* synthetic */ TimePicker.OnTimeChangedListener val$listener;
        final /* synthetic */ InverseBindingListener val$minuteChange;

        @Override // android.widget.TimePicker.OnTimeChangedListener
        public void onTimeChanged(TimePicker timePicker, int i10, int i11) {
            TimePicker.OnTimeChangedListener onTimeChangedListener = this.val$listener;
            if (onTimeChangedListener != null) {
                onTimeChangedListener.onTimeChanged(timePicker, i10, i11);
            }
            InverseBindingListener inverseBindingListener = this.val$hourChange;
            if (inverseBindingListener != null) {
                inverseBindingListener.a();
            }
            InverseBindingListener inverseBindingListener2 = this.val$minuteChange;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.a();
            }
        }
    }
}
