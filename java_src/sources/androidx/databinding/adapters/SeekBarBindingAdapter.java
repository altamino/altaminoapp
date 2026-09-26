package androidx.databinding.adapters;

import android.widget.SeekBar;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes3.dex */
@InverseBindingMethods
@RestrictTo
public class SeekBarBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.SeekBarBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass1 implements SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ InverseBindingListener val$attrChanged;
        final /* synthetic */ OnProgressChanged val$progressChanged;
        final /* synthetic */ OnStartTrackingTouch val$start;
        final /* synthetic */ OnStopTrackingTouch val$stop;

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z6) {
            OnProgressChanged onProgressChanged = this.val$progressChanged;
            if (onProgressChanged != null) {
                onProgressChanged.onProgressChanged(seekBar, i10, z6);
            }
            InverseBindingListener inverseBindingListener = this.val$attrChanged;
            if (inverseBindingListener != null) {
                inverseBindingListener.a();
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            OnStartTrackingTouch onStartTrackingTouch = this.val$start;
            if (onStartTrackingTouch != null) {
                onStartTrackingTouch.onStartTrackingTouch(seekBar);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            OnStopTrackingTouch onStopTrackingTouch = this.val$stop;
            if (onStopTrackingTouch != null) {
                onStopTrackingTouch.onStopTrackingTouch(seekBar);
            }
        }
    }

    public interface OnProgressChanged {
        void onProgressChanged(SeekBar seekBar, int i10, boolean z6);
    }

    public interface OnStartTrackingTouch {
        void onStartTrackingTouch(SeekBar seekBar);
    }

    public interface OnStopTrackingTouch {
        void onStopTrackingTouch(SeekBar seekBar);
    }
}
