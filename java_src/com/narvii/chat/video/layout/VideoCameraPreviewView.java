package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.CameraRenderer;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.io.IOException;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoCameraPreviewView.kt */
/* loaded from: classes2.dex */
public final class VideoCameraPreviewView extends FrameLayout {
    private HashMap _$_findViewCache;
    private final CameraRenderer cameraRenderer;
    private final FrameLayout cameraRendererContainer;
    private final ImageView imgBadge;
    private final NicknameView tvNickname;
    private final UserAvatarLayout userAvatarLayout;
    private final BlurImageView userBackgroundView;
    private final View userInfoContainer;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraPreviewView(Context context) throws IOException {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.video_camera_preview_view_layout, this);
        View viewFindViewById = findViewById(R.id.camera_renderer_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.camera_renderer_container)");
        this.cameraRendererContainer = (FrameLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.user_info_layer);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.user_info_layer)");
        this.userInfoContainer = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_info_bg);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.user_info_bg)");
        this.userBackgroundView = (BlurImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.user_avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.user_avatar_layout)");
        this.userAvatarLayout = (UserAvatarLayout) viewFindViewById4;
        this.userAvatarLayout.getAvatarView().setShowPressedMask(false);
        View viewFindViewById5 = findViewById(R.id.nickname);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.nickname)");
        this.tvNickname = (NicknameView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.nickname_badge);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.nickname_badge)");
        this.imgBadge = (ImageView) viewFindViewById6;
        this.cameraRenderer = new CameraRenderer(getContext(), false);
        this.cameraRendererContainer.addView(this.cameraRenderer);
        View viewFindViewById7 = findViewById(R.id.avatar);
        if (viewFindViewById7 == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
        }
        ((NVImageView) viewFindViewById7).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.VideoCameraPreviewView.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView view, int i, Media media) {
                if (i == 4) {
                    BlurImageView blurImageView = VideoCameraPreviewView.this.userBackgroundView;
                    Intrinsics.checkExpressionValueIsNotNull(view, "view");
                    blurImageView.setImageDrawable2(view.getDrawable());
                }
            }
        });
        useFrontCamera();
        cameraMute(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraPreviewView(Context context, AttributeSet attributeSet) throws IOException {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.video_camera_preview_view_layout, this);
        View viewFindViewById = findViewById(R.id.camera_renderer_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.camera_renderer_container)");
        this.cameraRendererContainer = (FrameLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.user_info_layer);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.user_info_layer)");
        this.userInfoContainer = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_info_bg);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.user_info_bg)");
        this.userBackgroundView = (BlurImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.user_avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.user_avatar_layout)");
        this.userAvatarLayout = (UserAvatarLayout) viewFindViewById4;
        this.userAvatarLayout.getAvatarView().setShowPressedMask(false);
        View viewFindViewById5 = findViewById(R.id.nickname);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.nickname)");
        this.tvNickname = (NicknameView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.nickname_badge);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.nickname_badge)");
        this.imgBadge = (ImageView) viewFindViewById6;
        this.cameraRenderer = new CameraRenderer(getContext(), false);
        this.cameraRendererContainer.addView(this.cameraRenderer);
        View viewFindViewById7 = findViewById(R.id.avatar);
        if (viewFindViewById7 == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
        }
        ((NVImageView) viewFindViewById7).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.VideoCameraPreviewView.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView view, int i, Media media) {
                if (i == 4) {
                    BlurImageView blurImageView = VideoCameraPreviewView.this.userBackgroundView;
                    Intrinsics.checkExpressionValueIsNotNull(view, "view");
                    blurImageView.setImageDrawable2(view.getDrawable());
                }
            }
        });
        useFrontCamera();
        cameraMute(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraPreviewView(Context context, AttributeSet attributeSet, int i) throws IOException {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.video_camera_preview_view_layout, this);
        View viewFindViewById = findViewById(R.id.camera_renderer_container);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.camera_renderer_container)");
        this.cameraRendererContainer = (FrameLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.user_info_layer);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.user_info_layer)");
        this.userInfoContainer = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.user_info_bg);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.user_info_bg)");
        this.userBackgroundView = (BlurImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.user_avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.user_avatar_layout)");
        this.userAvatarLayout = (UserAvatarLayout) viewFindViewById4;
        this.userAvatarLayout.getAvatarView().setShowPressedMask(false);
        View viewFindViewById5 = findViewById(R.id.nickname);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.nickname)");
        this.tvNickname = (NicknameView) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.nickname_badge);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.nickname_badge)");
        this.imgBadge = (ImageView) viewFindViewById6;
        this.cameraRenderer = new CameraRenderer(getContext(), false);
        this.cameraRendererContainer.addView(this.cameraRenderer);
        View viewFindViewById7 = findViewById(R.id.avatar);
        if (viewFindViewById7 == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
        }
        ((NVImageView) viewFindViewById7).setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.chat.video.layout.VideoCameraPreviewView.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public final void onImageChanged(NVImageView view, int i2, Media media) {
                if (i2 == 4) {
                    BlurImageView blurImageView = VideoCameraPreviewView.this.userBackgroundView;
                    Intrinsics.checkExpressionValueIsNotNull(view, "view");
                    blurImageView.setImageDrawable2(view.getDrawable());
                }
            }
        });
        useFrontCamera();
        cameraMute(false);
    }

    public final void setUser(NVContext ctx, User user) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(user, "user");
        boolean z = user.isSubscribeMemberShip() && new CommunityConfigHelper(ctx).isPremiumFeatureEnabled();
        this.userAvatarLayout.setUser(user, z);
        this.tvNickname.setUser(user);
        this.imgBadge.setVisibility(z ? 0 : 8);
    }

    public final void useFrontCamera() throws IOException {
        if (this.cameraRenderer.isFrontCamera()) {
            return;
        }
        this.cameraRenderer.switchCamera();
    }

    public final void useBackCamera() throws IOException {
        if (this.cameraRenderer.isFrontCamera()) {
            this.cameraRenderer.switchCamera();
        }
    }

    public final void cameraMute(boolean z) throws IOException {
        if (z) {
            this.cameraRenderer.onPause();
            this.cameraRendererContainer.setVisibility(8);
            this.userInfoContainer.setVisibility(0);
        } else {
            this.cameraRenderer.onResume();
            this.cameraRendererContainer.setVisibility(0);
            this.userInfoContainer.setVisibility(8);
        }
    }

    public final void cameraDestroy() throws IOException {
        this.cameraRenderer.onDestroy();
    }
}
