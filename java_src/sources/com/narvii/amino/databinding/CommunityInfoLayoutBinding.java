package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.community.widget.CommunitySummaryInfoLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class CommunityInfoLayoutBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final LinearLayout communityIconName;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final TextView feedDateTime;

    @NonNull
    public final LinearLayout memberInfoContainer;

    @NonNull
    public final TextView membersInfo;

    @NonNull
    public final ImageView onlineIndicator;

    @NonNull
    private final CommunitySummaryInfoLayout rootView;

    @NonNull
    public static CommunityInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CommunitySummaryInfoLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_info_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityInfoLayoutBinding(@NonNull CommunitySummaryInfoLayout communitySummaryInfoLayout, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull ImageView imageView) {
        this.rootView = communitySummaryInfoLayout;
        this.communityIcon = thumbImageView;
        this.communityIconName = linearLayout;
        this.communityName = textView;
        this.feedDateTime = textView2;
        this.memberInfoContainer = linearLayout2;
        this.membersInfo = textView3;
        this.onlineIndicator = imageView;
    }

    @NonNull
    public static CommunityInfoLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.community_icon);
        if (thumbImageView != null) {
            i10 = R.id.community_icon_name;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_icon_name);
            if (linearLayout != null) {
                i10 = R.id.community_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                if (textView != null) {
                    i10 = R.id.feed_date_time;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.feed_date_time);
                    if (textView2 != null) {
                        i10 = R.id.member_info_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.member_info_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.membersInfo;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.membersInfo);
                            if (textView3 != null) {
                                i10 = R.id.online_indicator;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.online_indicator);
                                if (imageView != null) {
                                    return new CommunityInfoLayoutBinding((CommunitySummaryInfoLayout) view, thumbImageView, linearLayout, textView, textView2, linearLayout2, textView3, imageView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
