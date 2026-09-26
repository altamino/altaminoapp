package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.suggest.interest.InterestTopicView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.MarqueeTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes.dex */
public final class CommonChatItemBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final LinearLayout communityInfoPanel;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final TextView disableMask;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final InterestTopicView interestItemView;

    @NonNull
    public final TextView latestMessageTime;

    @NonNull
    public final TextView memberCount;

    @NonNull
    public final UserSpeakingView organizerSpeakingView;

    @NonNull
    public final NVImageView playingIcon;

    @NonNull
    public final MarqueeTextView playingTitle;

    @NonNull
    public final FrameLayout playingTitlePanel;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView title;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommonChatItemBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            i10 = R.id.community_info_panel;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_info_panel);
            if (linearLayout != null) {
                i10 = R.id.community_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                if (textView != null) {
                    i10 = R.id.disable_mask;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.disable_mask);
                    if (textView2 != null) {
                        i10 = R.id.image;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                        if (thumbImageView != null) {
                            i10 = R.id.interest_item_view;
                            InterestTopicView interestTopicView = (InterestTopicView) ViewBindings.a(view, R.id.interest_item_view);
                            if (interestTopicView != null) {
                                i10 = R.id.latest_message_time;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.latest_message_time);
                                if (textView3 != null) {
                                    i10 = R.id.member_count;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.member_count);
                                    if (textView4 != null) {
                                        i10 = R.id.organizer_speaking_view;
                                        UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.organizer_speaking_view);
                                        if (userSpeakingView != null) {
                                            i10 = R.id.playing_icon;
                                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.playing_icon);
                                            if (nVImageView != null) {
                                                i10 = R.id.playing_title;
                                                MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.a(view, R.id.playing_title);
                                                if (marqueeTextView != null) {
                                                    i10 = R.id.playing_title_panel;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.playing_title_panel);
                                                    if (frameLayout != null) {
                                                        i10 = R.id.text;
                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.text);
                                                        if (textView5 != null) {
                                                            i10 = R.id.title;
                                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.title);
                                                            if (textView6 != null) {
                                                                return new CommonChatItemBinding(view, communityIconView, linearLayout, textView, textView2, thumbImageView, interestTopicView, textView3, textView4, userSpeakingView, nVImageView, marqueeTextView, frameLayout, textView5, textView6);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    @NonNull
    public static CommonChatItemBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.common_chat_item, viewGroup);
        return bind(viewGroup);
    }

    private CommonChatItemBinding(@NonNull View view, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull InterestTopicView interestTopicView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull UserSpeakingView userSpeakingView, @NonNull NVImageView nVImageView, @NonNull MarqueeTextView marqueeTextView, @NonNull FrameLayout frameLayout, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = view;
        this.communityIcon = communityIconView;
        this.communityInfoPanel = linearLayout;
        this.communityName = textView;
        this.disableMask = textView2;
        this.image = thumbImageView;
        this.interestItemView = interestTopicView;
        this.latestMessageTime = textView3;
        this.memberCount = textView4;
        this.organizerSpeakingView = userSpeakingView;
        this.playingIcon = nVImageView;
        this.playingTitle = marqueeTextView;
        this.playingTitlePanel = frameLayout;
        this.text = textView5;
        this.title = textView6;
    }
}
