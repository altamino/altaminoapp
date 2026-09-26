package androidx.databinding.adapters;

import android.widget.RadioGroup;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes6.dex */
@InverseBindingMethods
@RestrictTo
public class RadioGroupBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.RadioGroupBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    class AnonymousClass1 implements RadioGroup.OnCheckedChangeListener {
        final /* synthetic */ InverseBindingListener val$attrChange;
        final /* synthetic */ RadioGroup.OnCheckedChangeListener val$listener;

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i10) {
            RadioGroup.OnCheckedChangeListener onCheckedChangeListener = this.val$listener;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(radioGroup, i10);
            }
            this.val$attrChange.a();
        }
    }
}
