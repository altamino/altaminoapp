package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.CameraRenderer;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoCameraPreviewView extends FrameLayout {

    @NotNull
    private final CameraRenderer cameraRenderer;

    @NotNull
    private final FrameLayout cameraRendererContainer;

    @NotNull
    private final ImageView imgBadge;

    @NotNull
    private final NicknameView tvNickname;

    @NotNull
    private final UserAvatarLayout userAvatarLayout;

    @NotNull
    private final BlurImageView userBackgroundView;

    @NotNull
    private final View userInfoContainer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraPreviewView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.video_camera_preview_view_layout, this);
        View viewFindViewById = findViewById(R.id.camera_renderer_container);
        t.i(viewFindViewById, "findViewById(...)");
        FrameLayout frameLayout = (FrameLayout) viewFindViewById;
        this.cameraRendererContainer = frameLayout;
        View viewFindViewById2 = findViewById(R.id.user_info_layer);
        t.i(viewFindViewById2, "findViewById(...)");
        this.userInfoContainer = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_info_bg);
        t.i(viewFindViewById3, "findViewById(...)");
        this.userBackgroundView = (BlurImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.user_avatar_layout);
        t.i(viewFindViewById4, "findViewById(...)");
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById4;
        this.userAvatarLayout = userAvatarLayout;
        userAvatarLayout.getAvatarView().setShowPressedMask(false);
        View viewFindViewById5 = findViewById(R.id.nickname);
        t.i(viewFindViewById5, "findViewById(...)");
        this.tvNickname = (NicknameView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.nickname_badge);
        t.i(viewFindViewById6, "findViewById(...)");
        this.imgBadge = (ImageView) viewFindViewById6;
        CameraRenderer cameraRenderer = new CameraRenderer(getContext(), false);
        this.cameraRenderer = cameraRenderer;
        frameLayout.addView(cameraRenderer);
        View viewFindViewById7 = findViewById(R.id.avatar);
        t.h(viewFindViewById7, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
        ((NVImageView) viewFindViewById7).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.a
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                VideoCameraPreviewView._init_$lambda$0(this.f2133a, nVImageView, i10, media);
            }
        });
        useFrontCamera();
        cameraMute(false);
    }

    public final void cameraMute(boolean z6) {
        if (z6) {
            this.cameraRenderer.onPause();
            this.cameraRendererContainer.setVisibility(8);
            this.userInfoContainer.setVisibility(0);
        } else {
            this.cameraRenderer.onResume();
            this.cameraRendererContainer.setVisibility(0);
            this.userInfoContainer.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(VideoCameraPreviewView this$0, NVImageView nVImageView, int i10, Media media) {
        t.j(this$0, "this$0");
        if (i10 == 4) {
            this$0.userBackgroundView.setImageDrawable2(nVImageView.getDrawable());
        }
    }

    public final void cameraDestroy() {
        this.cameraRenderer.onDestroy();
    }

    public final void setUser(@NotNull NVContext ctx, @NotNull User user) {
        t.j(ctx, "ctx");
        t.j(user, "user");
        boolean z6 = user.isSubscribeMemberShip() && new CommunityConfigHelper(ctx).isPremiumFeatureEnabled();
        this.userAvatarLayout.setUser(user, z6);
        this.tvNickname.setUser(user);
        this.imgBadge.setVisibility(z6 ? 0 : 8);
    }

    public final void useBackCamera() {
        if (this.cameraRenderer.isFrontCamera()) {
            this.cameraRenderer.switchCamera();
        }
    }

    public final void useFrontCamera() {
        if (this.cameraRenderer.isFrontCamera()) {
            return;
        }
        this.cameraRenderer.switchCamera();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraPreviewView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.video_camera_preview_view_layout, this);
        View viewFindViewById = findViewById(R.id.camera_renderer_container);
        t.i(viewFindViewById, "findViewById(...)");
        FrameLayout frameLayout = (FrameLayout) viewFindViewById;
        this.cameraRendererContainer = frameLayout;
        View viewFindViewById2 = findViewById(R.id.user_info_layer);
        t.i(viewFindViewById2, "findViewById(...)");
        this.userInfoContainer = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_info_bg);
        t.i(viewFindViewById3, "findViewById(...)");
        this.userBackgroundView = (BlurImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.user_avatar_layout);
        t.i(viewFindViewById4, "findViewById(...)");
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById4;
        this.userAvatarLayout = userAvatarLayout;
        userAvatarLayout.getAvatarView().setShowPressedMask(false);
        View viewFindViewById5 = findViewById(R.id.nickname);
        t.i(viewFindViewById5, "findViewById(...)");
        this.tvNickname = (NicknameView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.nickname_badge);
        t.i(viewFindViewById6, "findViewById(...)");
        this.imgBadge = (ImageView) viewFindViewById6;
        CameraRenderer cameraRenderer = new CameraRenderer(getContext(), false);
        this.cameraRenderer = cameraRenderer;
        frameLayout.addView(cameraRenderer);
        View viewFindViewById7 = findViewById(R.id.avatar);
        t.h(viewFindViewById7, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
        ((NVImageView) viewFindViewById7).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.a
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                VideoCameraPreviewView._init_$lambda$0(this.f2133a, nVImageView, i10, media);
            }
        });
        useFrontCamera();
        cameraMute(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraPreviewView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        View.inflate(getContext(), R.layout.video_camera_preview_view_layout, this);
        View viewFindViewById = findViewById(R.id.camera_renderer_container);
        t.i(viewFindViewById, "findViewById(...)");
        FrameLayout frameLayout = (FrameLayout) viewFindViewById;
        this.cameraRendererContainer = frameLayout;
        View viewFindViewById2 = findViewById(R.id.user_info_layer);
        t.i(viewFindViewById2, "findViewById(...)");
        this.userInfoContainer = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_info_bg);
        t.i(viewFindViewById3, "findViewById(...)");
        this.userBackgroundView = (BlurImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.user_avatar_layout);
        t.i(viewFindViewById4, "findViewById(...)");
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById4;
        this.userAvatarLayout = userAvatarLayout;
        userAvatarLayout.getAvatarView().setShowPressedMask(false);
        View viewFindViewById5 = findViewById(R.id.nickname);
        t.i(viewFindViewById5, "findViewById(...)");
        this.tvNickname = (NicknameView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.nickname_badge);
        t.i(viewFindViewById6, "findViewById(...)");
        this.imgBadge = (ImageView) viewFindViewById6;
        CameraRenderer cameraRenderer = new CameraRenderer(getContext(), false);
        this.cameraRenderer = cameraRenderer;
        frameLayout.addView(cameraRenderer);
        View viewFindViewById7 = findViewById(R.id.avatar);
        t.h(viewFindViewById7, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
        ((NVImageView) viewFindViewById7).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.a
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView nVImageView, int i11, Media media) {
                VideoCameraPreviewView._init_$lambda$0(this.f2133a, nVImageView, i11, media);
            }
        });
        useFrontCamera();
        cameraMute(false);
    }
}
