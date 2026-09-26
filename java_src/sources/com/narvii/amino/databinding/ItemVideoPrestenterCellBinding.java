package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.VolumeIndicator;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemVideoPrestenterCellBinding implements ViewBinding {

    @NonNull
    public final FlexLayout attachContainer;

    @NonNull
    public final FlexLayout badConnectionContainer;

    @NonNull
    public final ImageView badNetworkVideoLayer;

    @NonNull
    public final CheckableImageView cameraFlipOverlay;

    @NonNull
    public final CheckableImageView cameraMuteOverlay;

    @NonNull
    public final LinearLayout controllerVideoLayer;

    @NonNull
    public final FlexLayout emptyContainer;

    @NonNull
    public final ImageView loadingIndicator;

    @NonNull
    public final ImageView localMuteIndicator;

    @NonNull
    public final ImageView muted;

    @NonNull
    public final ImageView mutedVideoLayer;

    @NonNull
    public final VVChatNickNameView nickname;

    @NonNull
    public final ImageView nicknameBadge;

    @NonNull
    public final ImageView nicknameBadgeInfoLayer;

    @NonNull
    public final LinearLayout nicknameBadgeInfoLayerLayout;

    @NonNull
    public final LinearLayout nicknameContainerVideoLayer;

    @NonNull
    public final VVChatNickNameView nicknameInfoLayer;

    @NonNull
    public final TextView organizerLabel;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout svContainer;

    @NonNull
    public final BlurImageView userInfoBg;

    @NonNull
    public final FlexLayout userInfoLayer;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public final VolumeIndicator volumeLevel;

    @NonNull
    public final VolumeIndicator volumeLevelVideoLayer;

    private ItemVideoPrestenterCellBinding(@NonNull FrameLayout frameLayout, @NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull ImageView imageView, @NonNull CheckableImageView checkableImageView, @NonNull CheckableImageView checkableImageView2, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout3, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull VVChatNickNameView vVChatNickNameView2, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull BlurImageView blurImageView, @NonNull FlexLayout flexLayout4, @NonNull UserSpeakingView userSpeakingView, @NonNull VolumeIndicator volumeIndicator, @NonNull VolumeIndicator volumeIndicator2) {
        this.rootView = frameLayout;
        this.attachContainer = flexLayout;
        this.badConnectionContainer = flexLayout2;
        this.badNetworkVideoLayer = imageView;
        this.cameraFlipOverlay = checkableImageView;
        this.cameraMuteOverlay = checkableImageView2;
        this.controllerVideoLayer = linearLayout;
        this.emptyContainer = flexLayout3;
        this.loadingIndicator = imageView2;
        this.localMuteIndicator = imageView3;
        this.muted = imageView4;
        this.mutedVideoLayer = imageView5;
        this.nickname = vVChatNickNameView;
        this.nicknameBadge = imageView6;
        this.nicknameBadgeInfoLayer = imageView7;
        this.nicknameBadgeInfoLayerLayout = linearLayout2;
        this.nicknameContainerVideoLayer = linearLayout3;
        this.nicknameInfoLayer = vVChatNickNameView2;
        this.organizerLabel = textView;
        this.svContainer = frameLayout2;
        this.userInfoBg = blurImageView;
        this.userInfoLayer = flexLayout4;
        this.userSpeaking = userSpeakingView;
        this.volumeLevel = volumeIndicator;
        this.volumeLevelVideoLayer = volumeIndicator2;
    }

    @NonNull
    public static ItemVideoPrestenterCellBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemVideoPrestenterCellBinding bind(@NonNull View view) {
        int i10 = R.id.attach_container;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.attach_container);
        if (flexLayout != null) {
            i10 = R.id.bad_connection_container;
            FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.bad_connection_container);
            if (flexLayout2 != null) {
                i10 = R.id.bad_network_video_layer;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.bad_network_video_layer);
                if (imageView != null) {
                    i10 = R.id.camera_flip_overlay;
                    CheckableImageView checkableImageView = (CheckableImageView) ViewBindings.a(view, R.id.camera_flip_overlay);
                    if (checkableImageView != null) {
                        i10 = R.id.camera_mute_overlay;
                        CheckableImageView checkableImageView2 = (CheckableImageView) ViewBindings.a(view, R.id.camera_mute_overlay);
                        if (checkableImageView2 != null) {
                            i10 = R.id.controller_video_layer;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.controller_video_layer);
                            if (linearLayout != null) {
                                i10 = R.id.empty_container;
                                FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.empty_container);
                                if (flexLayout3 != null) {
                                    i10 = R.id.loading_indicator;
                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.loading_indicator);
                                    if (imageView2 != null) {
                                        i10 = R.id.local_mute_indicator;
                                        ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.local_mute_indicator);
                                        if (imageView3 != null) {
                                            i10 = R.id.muted;
                                            ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.muted);
                                            if (imageView4 != null) {
                                                i10 = R.id.muted_video_layer;
                                                ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.muted_video_layer);
                                                if (imageView5 != null) {
                                                    i10 = R.id.nickname;
                                                    VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.nickname);
                                                    if (vVChatNickNameView != null) {
                                                        i10 = R.id.nickname_badge;
                                                        ImageView imageView6 = (ImageView) ViewBindings.a(view, R.id.nickname_badge);
                                                        if (imageView6 != null) {
                                                            i10 = R.id.nickname_badge_info_layer;
                                                            ImageView imageView7 = (ImageView) ViewBindings.a(view, R.id.nickname_badge_info_layer);
                                                            if (imageView7 != null) {
                                                                i10 = R.id.nickname_badge_info_layer_layout;
                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.nickname_badge_info_layer_layout);
                                                                if (linearLayout2 != null) {
                                                                    i10 = R.id.nickname_container_video_layer;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.nickname_container_video_layer);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.nickname_info_layer;
                                                                        VVChatNickNameView vVChatNickNameView2 = (VVChatNickNameView) ViewBindings.a(view, R.id.nickname_info_layer);
                                                                        if (vVChatNickNameView2 != null) {
                                                                            i10 = R.id.organizer_label;
                                                                            TextView textView = (TextView) ViewBindings.a(view, R.id.organizer_label);
                                                                            if (textView != null) {
                                                                                i10 = R.id.sv_container;
                                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.sv_container);
                                                                                if (frameLayout != null) {
                                                                                    i10 = R.id.user_info_bg;
                                                                                    BlurImageView blurImageView = (BlurImageView) ViewBindings.a(view, R.id.user_info_bg);
                                                                                    if (blurImageView != null) {
                                                                                        i10 = R.id.user_info_layer;
                                                                                        FlexLayout flexLayout4 = (FlexLayout) ViewBindings.a(view, R.id.user_info_layer);
                                                                                        if (flexLayout4 != null) {
                                                                                            i10 = R.id.user_speaking;
                                                                                            UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                                                                                            if (userSpeakingView != null) {
                                                                                                i10 = R.id.volume_level;
                                                                                                VolumeIndicator volumeIndicator = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level);
                                                                                                if (volumeIndicator != null) {
                                                                                                    i10 = R.id.volume_level_video_layer;
                                                                                                    VolumeIndicator volumeIndicator2 = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level_video_layer);
                                                                                                    if (volumeIndicator2 != null) {
                                                                                                        return new ItemVideoPrestenterCellBinding((FrameLayout) view, flexLayout, flexLayout2, imageView, checkableImageView, checkableImageView2, linearLayout, flexLayout3, imageView2, imageView3, imageView4, imageView5, vVChatNickNameView, imageView6, imageView7, linearLayout2, linearLayout3, vVChatNickNameView2, textView, frameLayout, blurImageView, flexLayout4, userSpeakingView, volumeIndicator, volumeIndicator2);
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
    public static ItemVideoPrestenterCellBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_video_prestenter_cell, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
