package androidx.databinding.adapters;

import android.widget.RatingBar;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;

/* JADX INFO: loaded from: classes10.dex */
@InverseBindingMethods
@RestrictTo
public class RatingBarBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.RatingBarBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes9.dex */
    class AnonymousClass1 implements RatingBar.OnRatingBarChangeListener {
        final /* synthetic */ RatingBar.OnRatingBarChangeListener val$listener;
        final /* synthetic */ InverseBindingListener val$ratingChange;

        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public void onRatingChanged(RatingBar ratingBar, float f, boolean z6) {
            RatingBar.OnRatingBarChangeListener onRatingBarChangeListener = this.val$listener;
            if (onRatingBarChangeListener != null) {
                onRatingBarChangeListener.onRatingChanged(ratingBar, f, z6);
            }
            this.val$ratingChange.a();
        }
    }
}
