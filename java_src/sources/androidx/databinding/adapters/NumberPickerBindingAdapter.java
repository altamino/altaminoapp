package androidx.databinding.adapters;

import android.widget.NumberPicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes8.dex */
@BindingMethods
@InverseBindingMethods
@RestrictTo
public class NumberPickerBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.NumberPickerBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass1 implements NumberPicker.OnValueChangeListener {
        final /* synthetic */ InverseBindingListener val$attrChange;
        final /* synthetic */ NumberPicker.OnValueChangeListener val$listener;

        @Override // android.widget.NumberPicker.OnValueChangeListener
        public void onValueChange(NumberPicker numberPicker, int i10, int i11) {
            NumberPicker.OnValueChangeListener onValueChangeListener = this.val$listener;
            if (onValueChangeListener != null) {
                onValueChangeListener.onValueChange(numberPicker, i10, i11);
            }
            this.val$attrChange.a();
        }
    }
}
