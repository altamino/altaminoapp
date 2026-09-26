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
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.layout.VVChatNickNameView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemChannelUserBinding implements ViewBinding {

    @NonNull
    public final TextView hostLabel;

    @NonNull
    public final VVChatNickNameView influencerNickname;

    @NonNull
    public final ImageView localMuteIndicator;

    @NonNull
    public final VVChatMembershipNameLayout membershipNicknameLayout;

    @NonNull
    public final TextView organizer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView statusIndicator;

    @NonNull
    public static ItemChannelUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemChannelUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_channel_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemChannelUserBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull ImageView imageView, @NonNull VVChatMembershipNameLayout vVChatMembershipNameLayout, @NonNull TextView textView2, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.hostLabel = textView;
        this.influencerNickname = vVChatNickNameView;
        this.localMuteIndicator = imageView;
        this.membershipNicknameLayout = vVChatMembershipNameLayout;
        this.organizer = textView2;
        this.statusIndicator = imageView2;
    }

    @NonNull
    public static ItemChannelUserBinding bind(@NonNull View view) {
        int i10 = R.id.host_label;
        TextView textView = (TextView) ViewBindings.a(view, R.id.host_label);
        if (textView != null) {
            i10 = R.id.influencer_nickname;
            VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.influencer_nickname);
            if (vVChatNickNameView != null) {
                i10 = R.id.local_mute_indicator;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.local_mute_indicator);
                if (imageView != null) {
                    i10 = R.id.membership_nickname_layout;
                    VVChatMembershipNameLayout vVChatMembershipNameLayout = (VVChatMembershipNameLayout) ViewBindings.a(view, R.id.membership_nickname_layout);
                    if (vVChatMembershipNameLayout != null) {
                        i10 = R.id.organizer;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.organizer);
                        if (textView2 != null) {
                            i10 = R.id.status_indicator;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.status_indicator);
                            if (imageView2 != null) {
                                return new ItemChannelUserBinding((LinearLayout) view, textView, vVChatNickNameView, imageView, vVChatMembershipNameLayout, textView2, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
