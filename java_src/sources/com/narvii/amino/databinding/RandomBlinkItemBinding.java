package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class RandomBlinkItemBinding implements ViewBinding {

    @NonNull
    private final ImageView rootView;

    @NonNull
    public static RandomBlinkItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RandomBlinkItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new RandomBlinkItemBinding((ImageView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static RandomBlinkItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.random_blink_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RandomBlinkItemBinding(@NonNull ImageView imageView) {
        this.rootView = imageView;
    }
}
