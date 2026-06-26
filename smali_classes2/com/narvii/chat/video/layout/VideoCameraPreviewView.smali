.class public final Lcom/narvii/chat/video/layout/VideoCameraPreviewView;
.super Landroid/widget/FrameLayout;
.source "VideoCameraPreviewView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

.field private final cameraRendererContainer:Landroid/widget/FrameLayout;

.field private final imgBadge:Landroid/widget/ImageView;

.field private final tvNickname:Lcom/narvii/widget/NicknameView;

.field private final userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private final userBackgroundView:Lcom/narvii/widget/BlurImageView;

.field private final userInfoContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b06d1

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090192

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.camera_renderer_container)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f090c26

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.user_info_layer)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f090c24

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.user_info_bg)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/BlurImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    const p1, 0x7f090c10

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.user_avatar_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const p1, 0x7f090764

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.nickname)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090766

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.nickname_badge)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 47
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0900e4

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVImageView;

    new-instance v1, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;-><init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b06d1

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090192

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.camera_renderer_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f090c26

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_info_layer)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f090c24

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_info_bg)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/BlurImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    const p1, 0x7f090c10

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_avatar_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const p1, 0x7f090764

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.nickname)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090766

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.nickname_badge)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 47
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0900e4

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVImageView;

    new-instance v0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;-><init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 57
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b06d1

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090192

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.camera_renderer_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f090c26

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_info_layer)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f090c24

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_info_bg)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/BlurImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    const p1, 0x7f090c10

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.user_avatar_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const p1, 0x7f090764

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.nickname)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090766

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.nickname_badge)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 47
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0900e4

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVImageView;

    new-instance p3, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;

    invoke-direct {p3, p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;-><init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V

    invoke-virtual {p1, p3}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 57
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getUserBackgroundView$p(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cameraDestroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onDestroy()V

    return-void
.end method

.method public final cameraMute(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p1}, Lcom/narvii/chat/video/CameraRenderer;->onPause()V

    .line 83
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p1}, Lcom/narvii/chat/video/CameraRenderer;->onResume()V

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 62
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 64
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 65
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final useBackCamera()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->switchCamera()V

    :cond_0
    return-void
.end method

.method public final useFrontCamera()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->switchCamera()V

    :cond_0
    return-void
.end method
