package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class IncubatorFeaturedCommunityItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout exploreLoading;

    @NonNull
    public final ThumbImageView featureBg;

    @NonNull
    public final ProgressBar requestProgress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static IncubatorFeaturedCommunityItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorFeaturedCommunityItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_featured_community_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorFeaturedCommunityItemBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull ProgressBar progressBar) {
        this.rootView = frameLayout;
        this.exploreLoading = linearLayout;
        this.featureBg = thumbImageView;
        this.requestProgress = progressBar;
    }

    @NonNull
    public static IncubatorFeaturedCommunityItemBinding bind(@NonNull View view) {
        int i10 = R.id.explore_loading;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.explore_loading);
        if (linearLayout != null) {
            i10 = R.id.feature_bg;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.feature_bg);
            if (thumbImageView != null) {
                i10 = R.id.request_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.request_progress);
                if (progressBar != null) {
                    return new IncubatorFeaturedCommunityItemBinding((FrameLayout) view, linearLayout, thumbImageView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
