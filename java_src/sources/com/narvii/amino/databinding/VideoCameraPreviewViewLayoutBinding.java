package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.video.layout.VVChatNickNameView;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.BlurImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class VideoCameraPreviewViewLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout cameraRendererContainer;

    @NonNull
    public final VVChatNickNameView nickname;

    @NonNull
    public final ImageView nicknameBadge;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final BlurImageView userInfoBg;

    @NonNull
    public final FlexLayout userInfoLayer;

    @NonNull
    public final UserSpeakingView userSpeaking;

    @NonNull
    public static VideoCameraPreviewViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VideoCameraPreviewViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.video_camera_preview_view_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VideoCameraPreviewViewLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull VVChatNickNameView vVChatNickNameView, @NonNull ImageView imageView, @NonNull BlurImageView blurImageView, @NonNull FlexLayout flexLayout, @NonNull UserSpeakingView userSpeakingView) {
        this.rootView = frameLayout;
        this.cameraRendererContainer = frameLayout2;
        this.nickname = vVChatNickNameView;
        this.nicknameBadge = imageView;
        this.userInfoBg = blurImageView;
        this.userInfoLayer = flexLayout;
        this.userSpeaking = userSpeakingView;
    }

    @NonNull
    public static VideoCameraPreviewViewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.camera_renderer_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.camera_renderer_container);
        if (frameLayout != null) {
            i10 = R.id.nickname;
            VVChatNickNameView vVChatNickNameView = (VVChatNickNameView) ViewBindings.a(view, R.id.nickname);
            if (vVChatNickNameView != null) {
                i10 = R.id.nickname_badge;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.nickname_badge);
                if (imageView != null) {
                    i10 = R.id.user_info_bg;
                    BlurImageView blurImageView = (BlurImageView) ViewBindings.a(view, R.id.user_info_bg);
                    if (blurImageView != null) {
                        i10 = R.id.user_info_layer;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.user_info_layer);
                        if (flexLayout != null) {
                            i10 = R.id.user_speaking;
                            UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.user_speaking);
                            if (userSpeakingView != null) {
                                return new VideoCameraPreviewViewLayoutBinding((FrameLayout) view, frameLayout, vVChatNickNameView, imageView, blurImageView, flexLayout, userSpeakingView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
