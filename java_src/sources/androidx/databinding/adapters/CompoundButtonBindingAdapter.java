package androidx.databinding.adapters;

import android.widget.CompoundButton;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes10.dex */
@BindingMethods
@InverseBindingMethods
@RestrictTo
public class CompoundButtonBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.CompoundButtonBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass1 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ InverseBindingListener val$attrChange;
        final /* synthetic */ CompoundButton.OnCheckedChangeListener val$listener;

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
            CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.val$listener;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(compoundButton, z6);
            }
            this.val$attrChange.a();
        }
    }
}
