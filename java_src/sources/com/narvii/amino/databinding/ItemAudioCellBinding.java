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

/* JADX INFO: loaded from: classes.dex */
public final class ItemAudioCellBinding implements ViewBinding {

    @NonNull
    public final FlexLayout badConnectionContainer;

    @NonNull
    public final ImageView badNetwork;

    @NonNull
    public final ImageView loadingIndicator;

    @NonNull
    public final TextView localMute;

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
    private final LinearLayout rootView;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public final VolumeIndicator volumeLevel;

    @NonNull
    public static ItemAudioCellBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAudioCellBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_audio_cell, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAudioCellBinding(@NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout2, @NonNull UserSpeakingView userSpeakingView, @NonNull VolumeIndicator volumeIndicator) {
        this.rootView = linearLayout;
        this.badConnectionContainer = flexLayout;
        this.badNetwork = imageView;
        this.loadingIndicator = imageView2;
        this.localMute = textView;
        this.localMuteIndicator = imageView3;
        this.muted = imageView4;
        this.nickname = vVChatNickNameView;
        this.nicknameBadge = imageView5;
        this.nicknameWrapper = linearLayout2;
        this.userSpeaking = userSpeakingView;
        this.volumeLevel = volumeIndicator;
    }

    @NonNull
    public static ItemAudioCellBinding bind(@NonNull View view) {
        int i10 = R.id.bad_connection_container;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.bad_connection_container);
        if (flexLayout != null) {
            i10 = R.id.bad_network;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.bad_network);
            if (imageView != null) {
                i10 = R.id.loading_indicator;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.loading_indicator);
                if (imageView2 != null) {
                    i10 = R.id.local_mute;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.local_mute);
                    if (textView != null) {
                        i10 = R.id.local_mute_indicator;
                        ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.local_mute_indicator);
                        if (imageView3 != null) {
                            i10 = R.id.muted;
                            ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.muted);
                            if (imageView4 != null) {
                                i10 = R.id.nickname;
                                VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.nickname);
                                if (vVChatNickNameView != null) {
                                    i10 = R.id.nickname_badge;
                                    ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.nickname_badge);
                                    if (imageView5 != null) {
                                        i10 = R.id.nickname_wrapper;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.nickname_wrapper);
                                        if (linearLayout != null) {
                                            i10 = R.id.user_speaking;
                                            UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                                            if (userSpeakingView != null) {
                                                i10 = R.id.volume_level;
                                                VolumeIndicator volumeIndicator = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level);
                                                if (volumeIndicator != null) {
                                                    return new ItemAudioCellBinding((LinearLayout) view, flexLayout, imageView, imageView2, textView, imageView3, imageView4, vVChatNickNameView, imageView5, linearLayout, userSpeakingView, volumeIndicator);
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
}
