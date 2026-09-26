package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class AggregationAlertCommunityInfoLayoutBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final LinearLayout communityInfoLayout;

    @NonNull
    public final TextView communityTitle;

    @NonNull
    public final TintButton more;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static AggregationAlertCommunityInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AggregationAlertCommunityInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.aggregation_alert_community_info_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AggregationAlertCommunityInfoLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.communityIcon = communityIconView;
        this.communityInfoLayout = linearLayout2;
        this.communityTitle = textView;
        this.more = tintButton;
    }

    @NonNull
    public static AggregationAlertCommunityInfoLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R.id.community_title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_title);
            if (textView != null) {
                i10 = R.id.more;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.more);
                if (tintButton != null) {
                    return new AggregationAlertCommunityInfoLayoutBinding(linearLayout, communityIconView, linearLayout, textView, tintButton);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
