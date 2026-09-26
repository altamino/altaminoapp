.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;,
        Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;,
        Landroidx/media3/ui/PlayerView$ComponentListener;,
        Landroidx/media3/ui/PlayerView$ShowBuffering;,
        Landroidx/media3/ui/PlayerView$ArtworkDisplayMode;
    }
.end annotation


# static fields
.field public static final ARTWORK_DISPLAY_MODE_FILL:I = 0x2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final ARTWORK_DISPLAY_MODE_FIT:I = 0x1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final ARTWORK_DISPLAY_MODE_OFF:I = 0x0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final SHOW_BUFFERING_NEVER:I = 0x0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private artworkDisplayMode:I

.field private final artworkView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bufferingView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

.field private final contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final controller:Landroidx/media3/ui/PlayerControlView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customErrorMessage:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private player:Landroidx/media3/common/Player;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final subtitleView:Landroidx/media3/ui/SubtitleView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceViewIgnoresVideoAspectRatio:Z

.field private textureViewRotation:I

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v3, Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-direct {v3, v1}, Landroidx/media3/ui/PlayerView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerView;)V

    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 6
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/media3/ui/PlayerView;->t(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/media3/ui/PlayerView;->s(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    sget v4, Landroidx/media3/ui/R$layout;->exo_player_view:I

    const/4 v7, 0x1

    const/16 v8, 0x1388

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Landroidx/media3/ui/R$styleable;->PlayerView:[I

    move/from16 v11, p3

    .line 12
    invoke-virtual {v9, v2, v10, v11, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 13
    :try_start_0
    sget v10, Landroidx/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    .line 14
    invoke-virtual {v9, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 15
    sget v12, Landroidx/media3/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 16
    sget v12, Landroidx/media3/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 17
    sget v13, Landroidx/media3/ui/R$styleable;->PlayerView_artwork_display_mode:I

    .line 18
    invoke-virtual {v9, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 19
    sget v14, Landroidx/media3/ui/R$styleable;->PlayerView_default_artwork:I

    .line 20
    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 21
    sget v15, Landroidx/media3/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 22
    sget v5, Landroidx/media3/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 23
    sget v7, Landroidx/media3/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v9, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 24
    sget v6, Landroidx/media3/ui/R$styleable;->PlayerView_show_timeout:I

    .line 25
    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 26
    sget v6, Landroidx/media3/ui/R$styleable;->PlayerView_hide_on_touch:I

    move/from16 p3, v4

    const/4 v4, 0x1

    .line 27
    invoke-virtual {v9, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move/from16 v17, v5

    .line 28
    sget v5, Landroidx/media3/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 29
    sget v4, Landroidx/media3/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 30
    sget v5, Landroidx/media3/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v19, v4

    iget-boolean v4, v1, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 31
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 32
    sget v4, Landroidx/media3/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 33
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v5, v18

    move/from16 v9, v19

    move/from16 v18, v4

    move/from16 v4, p3

    move/from16 p3, v8

    move/from16 v8, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v11

    move v11, v14

    move v14, v12

    move v12, v10

    move v10, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    throw v0

    :cond_2
    move/from16 p3, v8

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    .line 36
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    .line 37
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    sget v4, Landroidx/media3/ui/R$id;->exo_content_frame:I

    .line 38
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_3

    .line 39
    invoke-static {v4, v10}, Landroidx/media3/ui/PlayerView;->D(Landroidx/media3/ui/AspectRatioFrameLayout;I)V

    :cond_3
    sget v7, Landroidx/media3/ui/R$id;->exo_shutter:I

    .line 40
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v7, :cond_4

    if-eqz v13, :cond_4

    .line 41
    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    .line 42
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v10, 0x2

    if-eq v8, v10, :cond_7

    const/4 v10, 0x3

    const-class v12, Landroid/content/Context;

    if-eq v8, v10, :cond_6

    const/4 v10, 0x4

    if-eq v8, v10, :cond_5

    .line 43
    new-instance v8, Landroid/view/SurfaceView;

    invoke-direct {v8, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    :cond_5
    :try_start_1
    const-class v8, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;

    .line 44
    sget v10, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->a:I

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v12, v13, v16

    .line 45
    invoke-virtual {v8, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v0, v12, v16

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 46
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :try_start_2
    const-class v8, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 47
    sget v10, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a:I

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v12, v13, v16

    .line 48
    invoke-virtual {v8, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v0, v12, v16

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v8, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 49
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 50
    :cond_7
    new-instance v8, Landroid/view/TextureView;

    invoke-direct {v8, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    :goto_2
    const/4 v8, 0x0

    :goto_3
    iget-object v10, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 51
    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 52
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v10, 0x0

    .line 53
    invoke-virtual {v7, v10}, Landroid/view/View;->setClickable(Z)V

    iget-object v7, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 54
    invoke-virtual {v4, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, v1, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    sget v4, Landroidx/media3/ui/R$id;->exo_ad_overlay:I

    .line 55
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    sget v4, Landroidx/media3/ui/R$id;->exo_overlay:I

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    sget v4, Landroidx/media3/ui/R$id;->exo_artwork:I

    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    iput v15, v1, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v11, :cond_a

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    :cond_a
    sget v4, Landroidx/media3/ui/R$id;->exo_subtitles:I

    .line 59
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/SubtitleView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v4, :cond_b

    .line 60
    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->d()V

    .line 61
    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->e()V

    :cond_b
    sget v4, Landroidx/media3/ui/R$id;->exo_buffering:I

    .line 62
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v4, :cond_c

    .line 63
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iput v9, v1, Landroidx/media3/ui/PlayerView;->showBuffering:I

    sget v4, Landroidx/media3/ui/R$id;->exo_error_message:I

    .line 64
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 65
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    sget v4, Landroidx/media3/ui/R$id;->exo_controller:I

    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/media3/ui/PlayerControlView;

    sget v8, Landroidx/media3/ui/R$id;->exo_controller_placeholder:I

    .line 67
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v7, :cond_e

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v9, 0x0

    goto :goto_6

    :cond_e
    if-eqz v8, :cond_f

    .line 68
    new-instance v7, Landroidx/media3/ui/PlayerControlView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v0, v10, v9, v2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 69
    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    .line 70
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 73
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_f
    const/4 v9, 0x0

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    :goto_6
    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_10

    move/from16 v2, p3

    goto :goto_7

    :cond_10
    move v2, v9

    :goto_7
    iput v2, v1, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    iput-boolean v5, v1, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    move/from16 v4, v18

    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v17, :cond_11

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    move v6, v9

    :goto_8
    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_12

    .line 75
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->Y()V

    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 76
    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerControlView;->R(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_12
    if-eqz v17, :cond_13

    const/4 v0, 0x1

    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 78
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->K()V

    return-void
.end method

.method private B(Landroidx/media3/common/Player;)Z
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x12

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->g(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/MediaMetadata;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    return v1

    .line 20
    :cond_1
    array-length v0, p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->C(Landroid/graphics/drawable/Drawable;)Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private C(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    int-to-float v1, v1

    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v1, v2

    .line 19
    .line 20
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 21
    .line 22
    iget v3, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 23
    const/4 v4, 0x2

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    div-float/2addr v1, v2

    .line 37
    .line 38
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 39
    .line 40
    :cond_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v1}, Landroidx/media3/ui/PlayerView;->A(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_1
    return v0
.end method

.method private static D(Landroidx/media3/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 4
    return-void
.end method

.method private E()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 17
    .line 18
    const/16 v3, 0x11

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->g(I)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->u()Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    :cond_1
    if-eq v0, v1, :cond_3

    .line 39
    const/4 v2, 0x4

    .line 40
    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Landroidx/media3/common/Player;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v1, 0x0

    .line 58
    :cond_3
    :goto_0
    return v1
.end method

.method private G(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->m0()V

    .line 24
    return-void
.end method

.method private H()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->b0()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->X()V

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method private I()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/common/Player;->v()Landroidx/media3/common/VideoSize;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 12
    .line 13
    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    .line 14
    .line 15
    iget v2, v0, Landroidx/media3/common/VideoSize;->height:I

    .line 16
    .line 17
    iget v3, v0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    int-to-float v1, v1

    .line 25
    .line 26
    iget v0, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    .line 27
    mul-float/2addr v1, v0

    .line 28
    int-to-float v0, v2

    .line 29
    div-float/2addr v1, v0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    move v1, v4

    .line 32
    .line 33
    :goto_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 34
    .line 35
    instance-of v2, v0, Landroid/view/TextureView;

    .line 36
    .line 37
    if-eqz v2, :cond_7

    .line 38
    .line 39
    cmpl-float v2, v1, v4

    .line 40
    .line 41
    if-lez v2, :cond_4

    .line 42
    .line 43
    const/16 v2, 0x5a

    .line 44
    .line 45
    if-eq v3, v2, :cond_3

    .line 46
    .line 47
    const/16 v2, 0x10e

    .line 48
    .line 49
    if-ne v3, v2, :cond_4

    .line 50
    .line 51
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    .line 53
    div-float v1, v2, v1

    .line 54
    .line 55
    :cond_4
    iget v2, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    .line 56
    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    .line 64
    :cond_5
    iput v3, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    .line 65
    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    .line 75
    :cond_6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 76
    .line 77
    check-cast v0, Landroid/view/TextureView;

    .line 78
    .line 79
    iget v2, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2}, Landroidx/media3/ui/PlayerView;->q(Landroid/view/TextureView;I)V

    .line 83
    .line 84
    :cond_7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 85
    .line 86
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 87
    .line 88
    if-eqz v2, :cond_8

    .line 89
    goto :goto_3

    .line 90
    :cond_8
    move v4, v1

    .line 91
    .line 92
    .line 93
    :goto_3
    invoke-virtual {p0, v0, v4}, Landroidx/media3/ui/PlayerView;->A(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    .line 94
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    if-ne v0, v3, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v1

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    const/16 v1, 0x8

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_3
    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->b0()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_hide:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_show:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    :goto_1
    return-void
.end method

.method private L()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->w()V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 19
    :goto_0
    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/media3/common/Player;->d()Landroidx/media3/common/PlaybackException;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    .line 30
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v0}, Landroidx/media3/common/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/lang/CharSequence;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_3
    :goto_1
    return-void
.end method

.method private N(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->g(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/Tracks;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->c()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->r()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/Tracks;

    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroidx/media3/common/Tracks;->d(I)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->v()V

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->r()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->O()Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->B(Landroidx/media3/common/Player;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    return-void

    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->C(Landroid/graphics/drawable/Drawable;)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->v()V

    .line 76
    return-void

    .line 77
    .line 78
    :cond_5
    :goto_0
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->v()V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->r()V

    .line 87
    :cond_6
    return-void
.end method

.method private O()Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method private P()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method static synthetic a(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/Player;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/ui/PlayerView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    .line 3
    return p0
.end method

.method static synthetic d(Landroid/view/TextureView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/ui/PlayerView;->q(Landroid/view/TextureView;I)V

    .line 4
    return-void
.end method

.method static synthetic e(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->H()V

    .line 4
    return-void
.end method

.method static synthetic f(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->K()V

    .line 4
    return-void
.end method

.method static synthetic g(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    .line 3
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->I()V

    .line 4
    return-void
.end method

.method static synthetic j(Landroidx/media3/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method static synthetic k(Landroidx/media3/ui/PlayerView;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->N(Z)V

    .line 4
    return-void
.end method

.method static synthetic l(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->J()V

    .line 4
    return-void
.end method

.method static synthetic m(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->M()V

    .line 4
    return-void
.end method

.method static synthetic n(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->L()V

    .line 4
    return-void
.end method

.method static synthetic o(Landroidx/media3/ui/PlayerView;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->y()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic p(Landroidx/media3/ui/PlayerView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    .line 3
    return p0
.end method

.method private static q(Landroid/view/TextureView;I)V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    cmpl-float v4, v1, v3

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    cmpl-float v4, v2, v3

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/high16 v4, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float v5, v1, v4

    .line 31
    .line 32
    div-float v4, v2, v4

    .line 33
    int-to-float p1, p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 37
    .line 38
    new-instance p1, Landroid/graphics/RectF;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    .line 43
    new-instance v3, Landroid/graphics/RectF;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 53
    move-result p1

    .line 54
    div-float/2addr v1, p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 58
    move-result p1

    .line 59
    div-float/2addr v2, p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 66
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_0
    return-void
.end method

.method private static s(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Landroidx/media3/ui/R$drawable;->exo_edit_mode_logo:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->W(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    sget p0, Landroidx/media3/ui/R$color;->exo_edit_mode_background_color:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    move-result p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    return-void
.end method

.method private static t(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/media3/ui/R$drawable;->exo_edit_mode_logo:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->W(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    sget p0, Landroidx/media3/ui/R$color;->exo_edit_mode_background_color:I

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 16
    move-result p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v1, 0x106000d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 13
    const/4 v1, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :cond_0
    return-void
.end method

.method private x(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private y()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->g(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private z(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->b0()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-gtz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->E()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->G(Z)V

    .line 50
    :cond_3
    return-void
.end method


# virtual methods
.method protected A(Landroidx/media3/ui/AspectRatioFrameLayout;F)V
    .locals 0
    .param p1    # Landroidx/media3/ui/AspectRatioFrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 6
    :cond_0
    return-void
.end method

.method public F()V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->E()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->G(Z)V

    .line 8
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->g(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->x(I)Z

    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView;->b0()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->u(Landroid/view/KeyEvent;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    if-eqz v0, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 79
    :cond_3
    const/4 v1, 0x0

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 84
    :goto_1
    return v1
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroidx/media3/common/AdOverlayInfo;

    .line 12
    const/4 v3, 0x4

    .line 13
    .line 14
    const-string v4, "Transparent overlay does not impact viewability"

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, v3, v4}, Landroidx/media3/common/AdOverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v2, Landroidx/media3/common/AdOverlayInfo;

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1, v3}, Landroidx/media3/common/AdOverlayInfo;-><init>(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    const-string v1, "exo_ad_overlay must be present for ad playback"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget v0, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseController()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->H()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 15
    .line 16
    iget v1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 17
    .line 18
    if-eq v1, p1, :cond_2

    .line 19
    .line 20
    iput p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->N(Z)V

    .line 24
    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 1
    .param p1    # Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    .line 11
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->K()V

    .line 11
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 1
    .param p1    # Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    .line 14
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->b0()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->F()V

    .line 19
    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .param p1    # Landroidx/media3/ui/PlayerControlView$VisibilityListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView;->i0(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->R(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    :cond_2
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .locals 0
    .param p1    # Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->M()V

    .line 16
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->N(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 1
    .param p1    # Landroidx/media3/common/ErrorMessageProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->M()V

    .line 10
    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .locals 1
    .param p1    # Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    .line 15
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->N(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 6
    .param p1    # Landroidx/media3/common/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/media3/common/Player;->s()Landroid/os/Looper;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    move v0, v3

    .line 35
    .line 36
    .line 37
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 40
    .line 41
    if-ne v0, p1, :cond_3

    .line 42
    return-void

    .line 43
    .line 44
    :cond_3
    const/16 v1, 0x1b

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->K(Landroidx/media3/common/Player$Listener;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->g(I)Z

    .line 55
    move-result v4

    .line 56
    .line 57
    if-eqz v4, :cond_5

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 60
    .line 61
    instance-of v5, v4, Landroid/view/TextureView;

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    check-cast v4, Landroid/view/TextureView;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_4
    instance-of v5, v4, Landroid/view/SurfaceView;

    .line 72
    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    check-cast v4, Landroid/view/SurfaceView;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 79
    .line 80
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    const/4 v4, 0x0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 87
    .line 88
    :cond_6
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->J()V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->M()V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v3}, Landroidx/media3/ui/PlayerView;->N(Z)V

    .line 109
    .line 110
    if-eqz p1, :cond_d

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->g(I)Z

    .line 114
    move-result v0

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 119
    .line 120
    instance-of v1, v0, Landroid/view/TextureView;

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    check-cast v0, Landroid/view/TextureView;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 128
    goto :goto_4

    .line 129
    .line 130
    :cond_8
    instance-of v1, v0, Landroid/view/SurfaceView;

    .line 131
    .line 132
    if-eqz v1, :cond_9

    .line 133
    .line 134
    check-cast v0, Landroid/view/SurfaceView;

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 138
    .line 139
    :cond_9
    :goto_4
    const/16 v0, 0x1e

    .line 140
    .line 141
    .line 142
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->g(I)Z

    .line 143
    move-result v0

    .line 144
    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    .line 148
    invoke-interface {p1}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/Tracks;

    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroidx/media3/common/Tracks;->e(I)Z

    .line 154
    move-result v0

    .line 155
    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    .line 159
    :cond_a
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->I()V

    .line 160
    .line 161
    :cond_b
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 162
    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    const/16 v0, 0x1c

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->g(I)Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/text/CueGroup;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    iget-object v1, v1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/a0;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 183
    .line 184
    :cond_c
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->L(Landroidx/media3/common/Player$Listener;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->z(Z)V

    .line 191
    goto :goto_5

    .line 192
    .line 193
    .line 194
    :cond_d
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->w()V

    .line 195
    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    .line 11
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 11
    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->J()V

    .line 10
    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    .line 11
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    .line 11
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    .line 11
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 11
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    xor-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    .line 6
    return-void
.end method

.method public setUseController(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v2, v0

    .line 13
    .line 14
    .line 15
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 16
    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v0, v1

    .line 26
    .line 27
    .line 28
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 31
    .line 32
    if-ne v0, p1, :cond_4

    .line 33
    return-void

    .line 34
    .line 35
    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 49
    goto :goto_3

    .line 50
    .line 51
    :cond_5
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->X()V

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 59
    const/4 v0, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 63
    .line 64
    .line 65
    :cond_6
    :goto_3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->K()V

    .line 66
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/view/SurfaceView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public u(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->P()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->T(Landroid/view/KeyEvent;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public w()V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->X()V

    .line 8
    :cond_0
    return-void
.end method
