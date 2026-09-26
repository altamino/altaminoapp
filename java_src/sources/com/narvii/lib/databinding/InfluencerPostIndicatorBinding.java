package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.influencer.CommonInfluencerPostIndicator;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class InfluencerPostIndicatorBinding implements ViewBinding {

    @NonNull
    public final TextView fansOnly;

    @NonNull
    public final TintButton influencerLock;

    @NonNull
    public final CommonInfluencerPostIndicator influencerPostLockIndicator;

    @NonNull
    private final CommonInfluencerPostIndicator rootView;

    @NonNull
    public static InfluencerPostIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CommonInfluencerPostIndicator getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InfluencerPostIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.fans_only;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.influencer_lock;
            TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
            if (tintButton != null) {
                CommonInfluencerPostIndicator commonInfluencerPostIndicator = (CommonInfluencerPostIndicator) view;
                return new InfluencerPostIndicatorBinding(commonInfluencerPostIndicator, textView, tintButton, commonInfluencerPostIndicator);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static InfluencerPostIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.influencer_post_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InfluencerPostIndicatorBinding(@NonNull CommonInfluencerPostIndicator commonInfluencerPostIndicator, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull CommonInfluencerPostIndicator commonInfluencerPostIndicator2) {
        this.rootView = commonInfluencerPostIndicator;
        this.fansOnly = textView;
        this.influencerLock = tintButton;
        this.influencerPostLockIndicator = commonInfluencerPostIndicator2;
    }
}
