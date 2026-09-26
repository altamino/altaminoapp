package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class FeatureLabelLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout featureLabelContainer;

    @NonNull
    public final AutoSizingTextView label;

    @NonNull
    public final ThumbImageView labelIcon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FeatureLabelLayoutBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.label;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.label);
        if (autoSizingTextView != null) {
            i10 = R.id.label_icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.label_icon);
            if (thumbImageView != null) {
                return new FeatureLabelLayoutBinding(frameLayout, frameLayout, autoSizingTextView, thumbImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FeatureLabelLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeatureLabelLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feature_label_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeatureLabelLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ThumbImageView thumbImageView) {
        this.rootView = frameLayout;
        this.featureLabelContainer = frameLayout2;
        this.label = autoSizingTextView;
        this.labelIcon = thumbImageView;
    }
}
