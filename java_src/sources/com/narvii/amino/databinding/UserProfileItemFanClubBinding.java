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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class UserProfileItemFanClubBinding implements ViewBinding {

    @NonNull
    public final TextView becomeFans;

    @NonNull
    public final ThumbImageView becomeFansBg;

    @NonNull
    public final FlexLayout becomeFansContainer;

    @NonNull
    public final TintButton chevronRight;

    @NonNull
    public final LinearLayout influencerRightContainer;

    @NonNull
    public final LiveLayerOnlineBar memberList;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tvFanClub;

    @NonNull
    public final TextView tvFansCount;

    @NonNull
    public static UserProfileItemFanClubBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileItemFanClubBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_item_fan_club, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileItemFanClubBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull FlexLayout flexLayout, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull LiveLayerOnlineBar liveLayerOnlineBar, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.becomeFans = textView;
        this.becomeFansBg = thumbImageView;
        this.becomeFansContainer = flexLayout;
        this.chevronRight = tintButton;
        this.influencerRightContainer = linearLayout2;
        this.memberList = liveLayerOnlineBar;
        this.tvFanClub = textView2;
        this.tvFansCount = textView3;
    }

    @NonNull
    public static UserProfileItemFanClubBinding bind(@NonNull View view) {
        int i10 = R.id.become_fans;
        TextView textView = (TextView) ViewBindings.a(view, R.id.become_fans);
        if (textView != null) {
            i10 = R.id.become_fans_bg;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.become_fans_bg);
            if (thumbImageView != null) {
                i10 = R.id.become_fans_container;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.become_fans_container);
                if (flexLayout != null) {
                    i10 = R.id.chevron_right;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron_right);
                    if (tintButton != null) {
                        i10 = R.id.influencer_right_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.influencer_right_container);
                        if (linearLayout != null) {
                            i10 = R.id.member_list;
                            LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.member_list);
                            if (liveLayerOnlineBar != null) {
                                i10 = R.id.tv_fan_club;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.tv_fan_club);
                                if (textView2 != null) {
                                    i10 = R.id.tv_fans_count;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.tv_fans_count);
                                    if (textView3 != null) {
                                        return new UserProfileItemFanClubBinding((LinearLayout) view, textView, thumbImageView, flexLayout, tintButton, linearLayout, liveLayerOnlineBar, textView2, textView3);
                                    }
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
