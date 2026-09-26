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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.video.layout.VVChatNickNameView;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.VolumeIndicator;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemVoicePresenterCellPairBinding implements ViewBinding {

    @NonNull
    public final FlexLayout badConnectionContainer;

    @NonNull
    public final FlexLayout channelUserInfoContainer;

    @NonNull
    public final View defaultBg;

    @NonNull
    public final FlexLayout emptyContainer;

    @NonNull
    public final ImageView loadingIndicator;

    @NonNull
    public final ImageView localMuteIndicator;

    @NonNull
    public final ImageView muted;

    @NonNull
    public final VVChatNickNameView nickname;

    @NonNull
    public final ImageView nicknameBadge;

    @NonNull
    public final LinearLayout nicknameWrapper;

    @NonNull
    public final TextView organizer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public final VolumeIndicator volumeLevel;

    @NonNull
    public static ItemVoicePresenterCellPairBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemVoicePresenterCellPairBinding bind(@NonNull View view) {
        int i10 = R.id.bad_connection_container;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.bad_connection_container);
        if (flexLayout != null) {
            i10 = R.id.channel_user_info_container;
            FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.channel_user_info_container);
            if (flexLayout2 != null) {
                i10 = R.id.default_bg;
                View viewA = ViewBindings.a(view, R.id.default_bg);
                if (viewA != null) {
                    i10 = R.id.empty_container;
                    FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.empty_container);
                    if (flexLayout3 != null) {
                        i10 = R.id.loading_indicator;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.loading_indicator);
                        if (imageView != null) {
                            i10 = R.id.local_mute_indicator;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.local_mute_indicator);
                            if (imageView2 != null) {
                                i10 = R.id.muted;
                                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.muted);
                                if (imageView3 != null) {
                                    i10 = R.id.nickname;
                                    VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.nickname);
                                    if (vVChatNickNameView != null) {
                                        i10 = R.id.nickname_badge;
                                        ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.nickname_badge);
                                        if (imageView4 != null) {
                                            i10 = R.id.nickname_wrapper;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.nickname_wrapper);
                                            if (linearLayout != null) {
                                                i10 = R.id.organizer;
                                                TextView textView = (TextView) ViewBindings.a(view, R.id.organizer);
                                                if (textView != null) {
                                                    i10 = R.id.user_speaking;
                                                    UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                                                    if (userSpeakingView != null) {
                                                        i10 = R.id.volume_level;
                                                        VolumeIndicator volumeIndicator = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level);
                                                        if (volumeIndicator != null) {
                                                            return new ItemVoicePresenterCellPairBinding((LinearLayout) view, flexLayout, flexLayout2, viewA, flexLayout3, imageView, imageView2, imageView3, vVChatNickNameView, imageView4, linearLayout, textView, userSpeakingView, volumeIndicator);
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
    public static ItemVoicePresenterCellPairBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_voice_presenter_cell_pair, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemVoicePresenterCellPairBinding(@NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull View view, @NonNull FlexLayout flexLayout3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull UserSpeakingView userSpeakingView, @NonNull VolumeIndicator volumeIndicator) {
        this.rootView = linearLayout;
        this.badConnectionContainer = flexLayout;
        this.channelUserInfoContainer = flexLayout2;
        this.defaultBg = view;
        this.emptyContainer = flexLayout3;
        this.loadingIndicator = imageView;
        this.localMuteIndicator = imageView2;
        this.muted = imageView3;
        this.nickname = vVChatNickNameView;
        this.nicknameBadge = imageView4;
        this.nicknameWrapper = linearLayout2;
        this.organizer = textView;
        this.userSpeaking = userSpeakingView;
        this.volumeLevel = volumeIndicator;
    }
}
