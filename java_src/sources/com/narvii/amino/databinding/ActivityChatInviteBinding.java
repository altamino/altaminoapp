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
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.layout.VVChatNickNameView;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PopButton;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ActivityChatInviteBinding implements ViewBinding {

    @NonNull
    public final PopButton accept;

    @NonNull
    public final LinearLayout acceptContainer;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView callingHintInfo;

    @NonNull
    public final UserSpeakingView callingIndicator;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final FrameLayout communityInfoContainer;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final PopButton decline;

    @NonNull
    public final LinearLayout declineContainer;

    @NonNull
    public final VVChatNickNameView influencerNickname;

    @NonNull
    public final NVImageView inviteBg;

    @NonNull
    public final TextView inviteHint;

    @NonNull
    public final VVChatMembershipNameLayout membershipNicknameLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ActivityChatInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActivityChatInviteBinding bind(@NonNull View view) {
        int i10 = R.id.accept;
        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.accept);
        if (popButton != null) {
            i10 = R.id.accept_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.accept_container);
            if (linearLayout != null) {
                i10 = R.id.avatar;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
                if (thumbImageView != null) {
                    i10 = R.id.calling_hint_info;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.calling_hint_info);
                    if (textView != null) {
                        i10 = R.id.calling_indicator;
                        UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.calling_indicator);
                        if (userSpeakingView != null) {
                            i10 = R.id.community_icon;
                            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
                            if (communityIconView != null) {
                                i10 = R.id.community_info_container;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.community_info_container);
                                if (frameLayout != null) {
                                    i10 = R.id.community_name;
                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.community_name);
                                    if (textView2 != null) {
                                        i10 = R.id.decline;
                                        PopButton popButton2 = (PopButton) ViewBindings.a(view, R.id.decline);
                                        if (popButton2 != null) {
                                            i10 = R.id.decline_container;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.decline_container);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.influencer_nickname;
                                                VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.influencer_nickname);
                                                if (vVChatNickNameView != null) {
                                                    i10 = R.id.invite_bg;
                                                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.invite_bg);
                                                    if (nVImageView != null) {
                                                        i10 = R.id.invite_hint;
                                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.invite_hint);
                                                        if (textView3 != null) {
                                                            i10 = R.id.membership_nickname_layout;
                                                            VVChatMembershipNameLayout vVChatMembershipNameLayout = (VVChatMembershipNameLayout) ViewBindings.a(view, R.id.membership_nickname_layout);
                                                            if (vVChatMembershipNameLayout != null) {
                                                                return new ActivityChatInviteBinding((FrameLayout) view, popButton, linearLayout, thumbImageView, textView, userSpeakingView, communityIconView, frameLayout, textView2, popButton2, linearLayout2, vVChatNickNameView, nVImageView, textView3, vVChatMembershipNameLayout);
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
    public static ActivityChatInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_chat_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActivityChatInviteBinding(@NonNull FrameLayout frameLayout, @NonNull PopButton popButton, @NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull UserSpeakingView userSpeakingView, @NonNull CommunityIconView communityIconView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull PopButton popButton2, @NonNull LinearLayout linearLayout2, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull NVImageView nVImageView, @NonNull TextView textView3, @NonNull VVChatMembershipNameLayout vVChatMembershipNameLayout) {
        this.rootView = frameLayout;
        this.accept = popButton;
        this.acceptContainer = linearLayout;
        this.avatar = thumbImageView;
        this.callingHintInfo = textView;
        this.callingIndicator = userSpeakingView;
        this.communityIcon = communityIconView;
        this.communityInfoContainer = frameLayout2;
        this.communityName = textView2;
        this.decline = popButton2;
        this.declineContainer = linearLayout2;
        this.influencerNickname = vVChatNickNameView;
        this.inviteBg = nVImageView;
        this.inviteHint = textView3;
        this.membershipNicknameLayout = vVChatMembershipNameLayout;
    }
}
