.class public final Lcom/narvii/chat/video/layout/VideoCameraPreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cameraRendererContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imgBadge:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvNickname:Lcom/narvii/widget/NicknameView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userBackgroundView:Lcom/narvii/widget/BlurImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userInfoContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0786

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0246

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0f4a

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    const v1, 0x7f0a0f48

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/BlurImageView;

    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    const v1, 0x7f0a0f36

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 7
    invoke-virtual {v1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const v1, 0x7f0a09f9

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/NicknameView;

    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const v1, 0x7f0a09fb

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 10
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0171

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    new-instance v0, Lcom/narvii/chat/video/layout/a;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/a;-><init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 14
    invoke-virtual {p0, v2}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0786

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0246

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0f4a

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    const v0, 0x7f0a0f48

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/BlurImageView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    const v0, 0x7f0a0f36

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 21
    invoke-virtual {v0}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const v0, 0x7f0a09f9

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f0a09fb

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 24
    new-instance p2, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v1}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0171

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    new-instance p2, Lcom/narvii/chat/video/layout/a;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/layout/a;-><init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0786

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0246

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    const p3, 0x7f0a0f4a

    .line 32
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    const p3, 0x7f0a0f48

    .line 33
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/BlurImageView;

    iput-object p3, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    const p3, 0x7f0a0f36

    .line 34
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p3, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 35
    invoke-virtual {p3}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const p3, 0x7f0a09f9

    .line 36
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/NicknameView;

    iput-object p3, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p3, 0x7f0a09fb

    .line 37
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 38
    new-instance p2, Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0171

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    new-instance p2, Lcom/narvii/chat/video/layout/a;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/layout/a;-><init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p3, 0x4

    .line 7
    .line 8
    if-ne p2, p3, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userBackgroundView:Lcom/narvii/widget/BlurImageView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->_init_$lambda$0(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method


# virtual methods
.method public final cameraDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onDestroy()V

    .line 6
    return-void
.end method

.method public final cameraMute(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/chat/video/CameraRenderer;->onPause()V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/video/CameraRenderer;->onResume()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRendererContainer:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userInfoContainer:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_0
    return-void
.end method

.method public final setUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "user"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p1, v1

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->imgBadge:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    const/16 v1, 0x8

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public final useBackCamera()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->isFrontCamera()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->switchCamera()V

    .line 14
    :cond_0
    return-void
.end method

.method public final useFrontCamera()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->isFrontCamera()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->switchCamera()V

    .line 14
    :cond_0
    return-void
.end method
