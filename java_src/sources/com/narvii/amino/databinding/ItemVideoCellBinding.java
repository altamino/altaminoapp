package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.video.layout.VideoAccountInfoLayout;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.VolumeIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemVideoCellBinding implements ViewBinding {

    @NonNull
    public final VideoAccountInfoLayout accountInfoContainer;

    @NonNull
    public final TextView badConnection;

    @NonNull
    public final ImageView badNetwork;

    @NonNull
    public final ProgressBar loadingAvatarProgress;

    @NonNull
    public final ImageView loadingIndicator;

    @NonNull
    public final ImageView localMuteIndicator;

    @NonNull
    public final TextView nicknameMiddle;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ThumbImageView statusAvatar;

    @NonNull
    public final FlexLayout statusAvatarContainer;

    @NonNull
    public final BlurImageView statusBg;

    @NonNull
    public final RelativeLayout statusContainer;

    @NonNull
    public final TextView statusHint;

    @NonNull
    public final FrameLayout svContainer;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public final ImageView videoMuted;

    @NonNull
    public final VolumeIndicator volumeLevel;

    private ItemVideoCellBinding(@NonNull FrameLayout frameLayout, @NonNull VideoAccountInfoLayout videoAccountInfoLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull FlexLayout flexLayout, @NonNull BlurImageView blurImageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull FrameLayout frameLayout2, @NonNull UserSpeakingView userSpeakingView, @NonNull ImageView imageView4, @NonNull VolumeIndicator volumeIndicator) {
        this.rootView = frameLayout;
        this.accountInfoContainer = videoAccountInfoLayout;
        this.badConnection = textView;
        this.badNetwork = imageView;
        this.loadingAvatarProgress = progressBar;
        this.loadingIndicator = imageView2;
        this.localMuteIndicator = imageView3;
        this.nicknameMiddle = textView2;
        this.statusAvatar = thumbImageView;
        this.statusAvatarContainer = flexLayout;
        this.statusBg = blurImageView;
        this.statusContainer = relativeLayout;
        this.statusHint = textView3;
        this.svContainer = frameLayout2;
        this.userSpeaking = userSpeakingView;
        this.videoMuted = imageView4;
        this.volumeLevel = volumeIndicator;
    }

    @NonNull
    public static ItemVideoCellBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemVideoCellBinding bind(@NonNull View view) {
        int i10 = R.id.account_info_container;
        VideoAccountInfoLayout videoAccountInfoLayout = (VideoAccountInfoLayout) ViewBindings.a(view, R.id.account_info_container);
        if (videoAccountInfoLayout != null) {
            i10 = R.id.bad_connection;
            TextView textView = (TextView) ViewBindings.a(view, R.id.bad_connection);
            if (textView != null) {
                i10 = R.id.bad_network;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.bad_network);
                if (imageView != null) {
                    i10 = R.id.loading_avatar_progress;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.loading_avatar_progress);
                    if (progressBar != null) {
                        i10 = R.id.loading_indicator;
                        ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.loading_indicator);
                        if (imageView2 != null) {
                            i10 = R.id.local_mute_indicator;
                            ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.local_mute_indicator);
                            if (imageView3 != null) {
                                i10 = R.id.nickname_middle;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.nickname_middle);
                                if (textView2 != null) {
                                    i10 = R.id.status_avatar;
                                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.status_avatar);
                                    if (thumbImageView != null) {
                                        i10 = R.id.status_avatar_container;
                                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.status_avatar_container);
                                        if (flexLayout != null) {
                                            i10 = R.id.status_bg;
                                            BlurImageView blurImageView = (BlurImageView) ViewBindings.a(view, R.id.status_bg);
                                            if (blurImageView != null) {
                                                i10 = R.id.status_container;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.status_container);
                                                if (relativeLayout != null) {
                                                    i10 = R.id.status_hint;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.status_hint);
                                                    if (textView3 != null) {
                                                        i10 = R.id.sv_container;
                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.sv_container);
                                                        if (frameLayout != null) {
                                                            i10 = R.id.user_speaking;
                                                            UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                                                            if (userSpeakingView != null) {
                                                                i10 = R.id.video_muted;
                                                                ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.video_muted);
                                                                if (imageView4 != null) {
                                                                    i10 = R.id.volume_level;
                                                                    VolumeIndicator volumeIndicator = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level);
                                                                    if (volumeIndicator != null) {
                                                                        return new ItemVideoCellBinding((FrameLayout) view, videoAccountInfoLayout, textView, imageView, progressBar, imageView2, imageView3, textView2, thumbImageView, flexLayout, blurImageView, relativeLayout, textView3, frameLayout, userSpeakingView, imageView4, volumeIndicator);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemVideoCellBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_video_cell, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
