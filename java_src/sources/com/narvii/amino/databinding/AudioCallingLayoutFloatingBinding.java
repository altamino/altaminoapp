package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.layout.VVChatNickNameView;
import com.narvii.chat.video.view.UserSpeakingView;

/* JADX INFO: loaded from: classes6.dex */
public final class AudioCallingLayoutFloatingBinding implements ViewBinding {

    @NonNull
    public final TextView callingHintInfo;

    @NonNull
    public final VVChatNickNameView influencerNickname;

    @NonNull
    public final UserSpeakingView loading;

    @NonNull
    public final VVChatMembershipNameLayout membershipNicknameLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView status;

    @NonNull
    public final TextView statusOmit;

    @NonNull
    public static AudioCallingLayoutFloatingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AudioCallingLayoutFloatingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.audio_calling_layout_floating, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AudioCallingLayoutFloatingBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull UserSpeakingView userSpeakingView, @NonNull VVChatMembershipNameLayout vVChatMembershipNameLayout, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = flexLayout;
        this.callingHintInfo = textView;
        this.influencerNickname = vVChatNickNameView;
        this.loading = userSpeakingView;
        this.membershipNicknameLayout = vVChatMembershipNameLayout;
        this.status = textView2;
        this.statusOmit = textView3;
    }

    @NonNull
    public static AudioCallingLayoutFloatingBinding bind(@NonNull View view) {
        int i10 = R.id.calling_hint_info;
        TextView textView = (TextView) ViewBindings.a(view, R.id.calling_hint_info);
        if (textView != null) {
            i10 = R.id.influencer_nickname;
            VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.influencer_nickname);
            if (vVChatNickNameView != null) {
                i10 = R.id.loading;
                UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.loading);
                if (userSpeakingView != null) {
                    i10 = R.id.membership_nickname_layout;
                    VVChatMembershipNameLayout vVChatMembershipNameLayout = (VVChatMembershipNameLayout) ViewBindings.a(view, R.id.membership_nickname_layout);
                    if (vVChatMembershipNameLayout != null) {
                        i10 = R.id.status;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.status);
                        if (textView2 != null) {
                            i10 = R.id.status_omit;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.status_omit);
                            if (textView3 != null) {
                                return new AudioCallingLayoutFloatingBinding((FlexLayout) view, textView, vVChatNickNameView, userSpeakingView, vVChatMembershipNameLayout, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
