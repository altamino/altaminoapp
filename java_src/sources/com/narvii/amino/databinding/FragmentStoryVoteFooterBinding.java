package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentStoryVoteFooterBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final FrameLayout footerContainer;

    @NonNull
    public final FrameLayout footerLayout;

    @NonNull
    public final NVImageView goToCommunityIcon;

    @NonNull
    public final LinearLayout guestLikeContainer;

    @NonNull
    public final TextView guestLikeText;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView totalLikesFrom;

    @NonNull
    public static FragmentStoryVoteFooterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentStoryVoteFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_story_vote_footer, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentStoryVoteFooterBinding(@NonNull FrameLayout frameLayout, @NonNull CommunityIconView communityIconView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.communityIcon = communityIconView;
        this.communityName = textView;
        this.footerContainer = frameLayout2;
        this.footerLayout = frameLayout3;
        this.goToCommunityIcon = nVImageView;
        this.guestLikeContainer = linearLayout;
        this.guestLikeText = textView2;
        this.totalLikesFrom = textView3;
    }

    @NonNull
    public static FragmentStoryVoteFooterBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            i10 = R.id.community_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
            if (textView != null) {
                i10 = R.id.footer_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.footer_container);
                if (frameLayout != null) {
                    FrameLayout frameLayout2 = (FrameLayout) view;
                    i10 = R.id.go_to_community_icon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.go_to_community_icon);
                    if (nVImageView != null) {
                        i10 = R.id.guest_like_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.guest_like_container);
                        if (linearLayout != null) {
                            i10 = R.id.guest_like_text;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.guest_like_text);
                            if (textView2 != null) {
                                i10 = R.id.total_likes_from;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.total_likes_from);
                                if (textView3 != null) {
                                    return new FragmentStoryVoteFooterBinding(frameLayout2, communityIconView, textView, frameLayout, frameLayout2, nVImageView, linearLayout, textView2, textView3);
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
