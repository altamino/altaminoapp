package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes10.dex */
public final class FeedMoreFeaturedLayoutBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView moreFeatureContent;

    @NonNull
    public final RelativeLayout moreFeatureLabel;

    @NonNull
    public final TextView moreFeatureTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FeedMoreFeaturedLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedMoreFeaturedLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_more_featured_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedMoreFeaturedLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.moreFeatureContent = horizontalRecyclerView;
        this.moreFeatureLabel = relativeLayout;
        this.moreFeatureTitle = textView;
    }

    @NonNull
    public static FeedMoreFeaturedLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.more_feature_content;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.more_feature_content);
        if (horizontalRecyclerView != null) {
            i10 = R.id.more_feature_label;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.more_feature_label);
            if (relativeLayout != null) {
                i10 = R.id.more_feature_title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.more_feature_title);
                if (textView != null) {
                    return new FeedMoreFeaturedLayoutBinding((LinearLayout) view, horizontalRecyclerView, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
