package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FansOnlyContentIndicatorLayoutSmallBinding implements ViewBinding {

    @NonNull
    public final ImageView fansOnlyContentIndicator;

    @NonNull
    private final ImageView rootView;

    @NonNull
    public static FansOnlyContentIndicatorLayoutSmallBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FansOnlyContentIndicatorLayoutSmallBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ImageView imageView = (ImageView) view;
        return new FansOnlyContentIndicatorLayoutSmallBinding(imageView, imageView);
    }

    @NonNull
    public static FansOnlyContentIndicatorLayoutSmallBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fans_only_content_indicator_layout_small, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FansOnlyContentIndicatorLayoutSmallBinding(@NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = imageView;
        this.fansOnlyContentIndicator = imageView2;
    }
}
