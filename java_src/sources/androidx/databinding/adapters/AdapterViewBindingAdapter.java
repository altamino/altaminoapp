package androidx.databinding.adapters;

import android.view.View;
import android.widget.AdapterView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes5.dex */
@BindingMethods
@InverseBindingMethods
@RestrictTo
public class AdapterViewBindingAdapter {

    public interface OnItemSelected {
        void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j6);
    }

    public static class OnItemSelectedComponentListener implements AdapterView.OnItemSelectedListener {
        private final InverseBindingListener mAttrChanged;
        private final OnNothingSelected mNothingSelected;
        private final OnItemSelected mSelected;

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j6) {
            OnItemSelected onItemSelected = this.mSelected;
            if (onItemSelected != null) {
                onItemSelected.onItemSelected(adapterView, view, i10, j6);
            }
            InverseBindingListener inverseBindingListener = this.mAttrChanged;
            if (inverseBindingListener != null) {
                inverseBindingListener.a();
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            OnNothingSelected onNothingSelected = this.mNothingSelected;
            if (onNothingSelected != null) {
                onNothingSelected.onNothingSelected(adapterView);
            }
            InverseBindingListener inverseBindingListener = this.mAttrChanged;
            if (inverseBindingListener != null) {
                inverseBindingListener.a();
            }
        }

        public OnItemSelectedComponentListener(OnItemSelected onItemSelected, OnNothingSelected onNothingSelected, InverseBindingListener inverseBindingListener) {
            this.mSelected = onItemSelected;
            this.mNothingSelected = onNothingSelected;
            this.mAttrChanged = inverseBindingListener;
        }
    }

    public interface OnNothingSelected {
        void onNothingSelected(AdapterView<?> adapterView);
    }
}
