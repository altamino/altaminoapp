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
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.MarqueeTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatSpeedDialItemBinding implements ViewBinding {

    @NonNull
    public final HangoutItem chatItem;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final LinearLayout communityInfoPanel;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final ThumbImageView image;

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
    private final HangoutItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ChatSpeedDialItemBinding bind(@NonNull View view) {
        HangoutItem hangoutItem = (HangoutItem) view;
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            i10 = R.id.community_info_panel;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_info_panel);
            if (linearLayout != null) {
                i10 = R.id.community_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                if (textView != null) {
                    i10 = R.id.image;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                    if (thumbImageView != null) {
                        i10 = R.id.latest_message_time;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.latest_message_time);
                        if (textView2 != null) {
                            i10 = R.id.member_count;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.member_count);
                            if (textView3 != null) {
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
                                                i10 = R.id.title;
                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.title);
                                                if (textView4 != null) {
                                                    return new ChatSpeedDialItemBinding(hangoutItem, hangoutItem, communityIconView, linearLayout, textView, thumbImageView, textView2, textView3, userSpeakingView, nVImageView, marqueeTextView, frameLayout, textView4);
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
    public static ChatSpeedDialItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HangoutItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatSpeedDialItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_speed_dial_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatSpeedDialItemBinding(@NonNull HangoutItem hangoutItem, @NonNull HangoutItem hangoutItem2, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull UserSpeakingView userSpeakingView, @NonNull NVImageView nVImageView, @NonNull MarqueeTextView marqueeTextView, @NonNull FrameLayout frameLayout, @NonNull TextView textView4) {
        this.rootView = hangoutItem;
        this.chatItem = hangoutItem2;
        this.communityIcon = communityIconView;
        this.communityInfoPanel = linearLayout;
        this.communityName = textView;
        this.image = thumbImageView;
        this.latestMessageTime = textView2;
        this.memberCount = textView3;
        this.organizerSpeakingView = userSpeakingView;
        this.playingIcon = nVImageView;
        this.playingTitle = marqueeTextView;
        this.playingTitlePanel = frameLayout;
        this.title = textView4;
    }
}
