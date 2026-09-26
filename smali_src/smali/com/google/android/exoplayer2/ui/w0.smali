.class public Lcom/google/android/exoplayer2/ui/w0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/w0$a;,
        Lcom/google/android/exoplayer2/ui/w0$c;,
        Lcom/google/android/exoplayer2/ui/w0$b;
    }
.end annotation


# static fields
.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

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

.field private final artworkView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bufferingView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final controller:Lcom/google/android/exoplayer2/ui/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/w0$b;
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

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/k<",
            "-",
            "Lcom/google/android/exoplayer2/z2;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fullscreenButtonClickListener:Lcom/google/android/exoplayer2/ui/w0$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private legacyControllerVisibilityListener:Lcom/google/android/exoplayer2/ui/c0$m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/d3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceViewIgnoresVideoAspectRatio:Z

.field private textureViewRotation:I

.field private useArtwork:Z

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/w0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/w0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    new-instance v3, Lcom/google/android/exoplayer2/ui/w0$a;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/w0$a;-><init>(Lcom/google/android/exoplayer2/ui/w0;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/w0;->componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->shutterView:Landroid/view/View;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceViewIgnoresVideoAspectRatio:Z

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->bufferingView:Landroid/view/View;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->errorMessageView:Landroid/widget/TextView;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/w0;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 6
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/w0;->t(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/w0;->s(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    sget v4, Lcom/google/android/exoplayer2/ui/r;->exo_styled_player_view:I

    const/4 v7, 0x1

    const/16 v8, 0x1388

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView:[I

    move/from16 v11, p3

    .line 12
    invoke-virtual {v9, v2, v10, v11, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 13
    :try_start_0
    sget v10, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    .line 14
    invoke-virtual {v9, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 15
    sget v12, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_player_layout_id:I

    .line 16
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 17
    sget v12, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_use_artwork:I

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 18
    sget v13, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_default_artwork:I

    .line 19
    invoke-virtual {v9, v13, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 20
    sget v14, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_use_controller:I

    invoke-virtual {v9, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 21
    sget v15, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_surface_type:I

    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 22
    sget v5, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_resize_mode:I

    invoke-virtual {v9, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 23
    sget v6, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_show_timeout:I

    .line 24
    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 25
    sget v6, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_hide_on_touch:I

    .line 26
    invoke-virtual {v9, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move/from16 p3, v4

    .line 27
    sget v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_auto_show:I

    .line 28
    invoke-virtual {v9, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 29
    sget v7, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_show_buffering:I

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v7, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 30
    sget v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_keep_content_on_player_reset:I

    move/from16 v18, v5

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/ui/w0;->keepContentOnPlayerReset:Z

    .line 31
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/w0;->keepContentOnPlayerReset:Z

    .line 32
    sget v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 33
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v9, v6

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v17, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v15

    move/from16 v19, v4

    move/from16 v4, p3

    move/from16 p3, v8

    move/from16 v8, v19

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    throw v0

    :cond_2
    move/from16 p3, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x1

    .line 36
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-virtual {v15, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    .line 37
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_content_frame:I

    .line 38
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_3

    .line 39
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/ui/w0;->F(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    :cond_3
    sget v6, Lcom/google/android/exoplayer2/ui/p;->exo_shutter:I

    .line 40
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/w0;->shutterView:Landroid/view/View;

    if-eqz v6, :cond_4

    if-eqz v12, :cond_4

    .line 41
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    if-eqz v4, :cond_8

    if-eqz v10, :cond_8

    .line 42
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v6, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    const/4 v11, 0x3

    const-class v12, Landroid/content/Context;

    if-eq v10, v11, :cond_6

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    .line 43
    new-instance v10, Landroid/view/SurfaceView;

    invoke-direct {v10, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    goto :goto_2

    :cond_5
    :try_start_1
    const-class v10, Lcom/google/android/exoplayer2/video/i;

    .line 44
    sget v11, Lcom/google/android/exoplayer2/video/i;->a:I

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    .line 45
    invoke-virtual {v10, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v0, v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;
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
    const-class v10, Lcom/google/android/exoplayer2/video/spherical/l;

    .line 47
    sget v11, Lcom/google/android/exoplayer2/video/spherical/l;->a:I

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    .line 48
    invoke-virtual {v10, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v0, v12, v16

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x1

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
    new-instance v10, Landroid/view/TextureView;

    invoke-direct {v10, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    :goto_2
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 51
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 52
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    const/4 v11, 0x0

    .line 53
    invoke-virtual {v6, v11}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 54
    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v4, v10

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/w0;->surfaceViewIgnoresVideoAspectRatio:Z

    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_ad_overlay:I

    .line 55
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_overlay:I

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->overlayFrameLayout:Landroid/widget/FrameLayout;

    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_artwork:I

    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

    if-eqz v13, :cond_9

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/w0;->useArtwork:Z

    if-eqz v14, :cond_a

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    :cond_a
    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_subtitles:I

    .line 59
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_b

    .line 60
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->d()V

    .line 61
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->e()V

    :cond_b
    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_buffering:I

    .line 62
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->bufferingView:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v4, :cond_c

    .line 63
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iput v7, v1, Lcom/google/android/exoplayer2/ui/w0;->showBuffering:I

    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_error_message:I

    .line 64
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/w0;->errorMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 65
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_controller:I

    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/ui/c0;

    sget v7, Lcom/google/android/exoplayer2/ui/p;->exo_controller_placeholder:I

    .line 67
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_e

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    const/4 v10, 0x0

    goto :goto_6

    :cond_e
    if-eqz v7, :cond_f

    .line 68
    new-instance v6, Lcom/google/android/exoplayer2/ui/c0;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v6, v0, v11, v10, v2}, Lcom/google/android/exoplayer2/ui/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 69
    invoke-virtual {v6, v4}, Landroid/view/View;->setId(I)V

    .line 70
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 73
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    :goto_6
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    if-eqz v0, :cond_10

    move/from16 v4, p3

    goto :goto_7

    :cond_10
    move v4, v10

    :goto_7
    iput v4, v1, Lcom/google/android/exoplayer2/ui/w0;->controllerShowTimeoutMs:I

    iput-boolean v9, v1, Lcom/google/android/exoplayer2/ui/w0;->controllerHideOnTouch:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/w0;->controllerAutoShow:Z

    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/w0;->controllerHideDuringAds:Z

    if-eqz v17, :cond_11

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    move v6, v10

    :goto_8
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/w0;->useController:Z

    if-eqz v0, :cond_12

    .line 75
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->c0()V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 76
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/c0;->S(Lcom/google/android/exoplayer2/ui/c0$m;)V

    :cond_12
    if-eqz v17, :cond_13

    const/4 v0, 0x1

    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 78
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/w0;->M()V

    return-void
.end method

.method private D(Lcom/google/android/exoplayer2/n2;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    array-length v1, p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/w0;->E(Landroid/graphics/drawable/Drawable;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method private E(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

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
    if-lez v1, :cond_0

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    int-to-float v1, v1

    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v1, v2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/ui/w0;->A(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    return v0
.end method

.method private static F(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 4
    return-void
.end method

.method private G()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

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
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerAutoShow:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    const/4 v2, 0x4

    .line 30
    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/google/android/exoplayer2/d3;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :cond_2
    :goto_0
    return v1
.end method

.method private I(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

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
    iget p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerShowTimeoutMs:I

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowTimeoutMs(I)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/c0;->r0()V

    .line 24
    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

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
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideOnTouch:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->b0()V

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method private K()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->v()Lcom/google/android/exoplayer2/video/a0;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/video/a0;->UNKNOWN:Lcom/google/android/exoplayer2/video/a0;

    .line 12
    .line 13
    :goto_0
    iget v1, v0, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 14
    .line 15
    iget v2, v0, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 16
    .line 17
    iget v3, v0, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

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
    iget v0, v0, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

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
    iget v2, p0, Lcom/google/android/exoplayer2/ui/w0;->textureViewRotation:I

    .line 56
    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/w0;->componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    .line 64
    :cond_5
    iput v3, p0, Lcom/google/android/exoplayer2/ui/w0;->textureViewRotation:I

    .line 65
    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/w0;->componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    .line 75
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 76
    .line 77
    check-cast v0, Landroid/view/TextureView;

    .line 78
    .line 79
    iget v2, p0, Lcom/google/android/exoplayer2/ui/w0;->textureViewRotation:I

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/w0;->q(Landroid/view/TextureView;I)V

    .line 83
    .line 84
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 85
    .line 86
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceViewIgnoresVideoAspectRatio:Z

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
    invoke-virtual {p0, v0, v4}, Lcom/google/android/exoplayer2/ui/w0;->A(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    .line 94
    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->bufferingView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/exoplayer2/ui/w0;->showBuffering:I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->bufferingView:Landroid/view/View;

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

.method private M()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/w0;->useController:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideOnTouch:Z

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
    sget v1, Lcom/google/android/exoplayer2/ui/t;->exo_controls_hide:I

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
    sget v1, Lcom/google/android/exoplayer2/ui/t;->exo_controls_show:I

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

.method private N()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideDuringAds:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/w0;->w()V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

    .line 19
    :goto_0
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->errorMessageView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->customErrorMessage:Ljava/lang/CharSequence;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->errorMessageView:Landroid/widget/TextView;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->d()Lcom/google/android/exoplayer2/z2;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->errorMessageView:Landroid/widget/TextView;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_2
    return-void
.end method

.method private P(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->e()Lcom/google/android/exoplayer2/e4;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e4;->c()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->keepContentOnPlayerReset:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->r()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->e()Lcom/google/android/exoplayer2/e4;

    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/e4;->d(I)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->v()V

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->r()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->Q()Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->z()Lcom/google/android/exoplayer2/n2;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->D(Lcom/google/android/exoplayer2/n2;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    return-void

    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->E(Landroid/graphics/drawable/Drawable;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    return-void

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->v()V

    .line 72
    return-void

    .line 73
    .line 74
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->keepContentOnPlayerReset:Z

    .line 75
    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->v()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->r()V

    .line 83
    :cond_6
    return-void
.end method

.method private Q()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->useArtwork:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private R()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->useController:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

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

.method static synthetic a(Lcom/google/android/exoplayer2/ui/w0;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->K()V

    .line 4
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/w0;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/ui/w0;->textureViewRotation:I

    .line 3
    return p0
.end method

.method static synthetic d(Landroid/view/TextureView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->q(Landroid/view/TextureView;I)V

    .line 4
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->J()V

    .line 4
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->M()V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/w0;)Lcom/google/android/exoplayer2/ui/w0$b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/w0$b;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/w0;)Lcom/google/android/exoplayer2/ui/w0$c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/w0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/w0;->shutterView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/w0;)Lcom/google/android/exoplayer2/d3;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/w0;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->P(Z)V

    .line 4
    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->L()V

    .line 4
    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->O()V

    .line 4
    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->N()V

    .line 4
    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/w0;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->y()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/w0;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideDuringAds:Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->shutterView:Landroid/view/View;

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

.method private static s(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/n;->exo_edit_mode_logo:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    sget v0, Lcom/google/android/exoplayer2/ui/l;->exo_edit_mode_background_color:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    move-result p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    return-void
.end method

.method private static t(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/n;->exo_edit_mode_logo:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    sget v0, Lcom/google/android/exoplayer2/ui/l;->exo_edit_mode_background_color:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 16
    move-result p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

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
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->isPlayingAd()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private z(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->y()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideDuringAds:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->getShowTimeoutMs()I

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->G()Z

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
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/w0;->I(Z)V

    .line 50
    :cond_3
    return-void
.end method


# virtual methods
.method protected A(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 6
    :cond_0
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 3
    .line 4
    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 12
    :cond_0
    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 3
    .line 4
    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 12
    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->G()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/w0;->I(Z)V

    .line 8
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->isPlayingAd()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/w0;->x(I)Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->u(Landroid/view/KeyEvent;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    if-eqz v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

    .line 69
    :cond_3
    const/4 v1, 0x0

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

    .line 74
    :goto_1
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.google.android.exoplayer"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/a;",
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
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/exoplayer2/ui/a;

    .line 12
    const/4 v3, 0x4

    .line 13
    .line 14
    const-string v4, "Transparent overlay does not impact viewability"

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/ui/a;-><init>(Landroid/view/View;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/exoplayer2/ui/a;

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/ui/a;-><init>(Landroid/view/View;I)V

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    const-string v1, "exo_ad_overlay must be present for ad playback"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    return-object v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/d3;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "com.google.android.exoplayer"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/ui/w0;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->J()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;)V

    .line 11
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerHideOnTouch:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->M()V

    .line 11
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/c0$d;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/c0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/c0$d;)V

    .line 11
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controllerShowTimeoutMs:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/w0;->H()V

    .line 19
    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/c0$m;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/ui/c0$m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->legacyControllerVisibilityListener:Lcom/google/android/exoplayer2/ui/c0$m;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/c0;->m0(Lcom/google/android/exoplayer2/ui/c0$m;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->legacyControllerVisibilityListener:Lcom/google/android/exoplayer2/ui/c0$m;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->S(Lcom/google/android/exoplayer2/ui/c0$m;)V

    :cond_2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/w0$b;)V

    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/w0$b;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/w0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/c0$m;)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->errorMessageView:Landroid/widget/TextView;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->customErrorMessage:Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->O()V

    .line 16
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->P(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/k;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/util/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/k<",
            "-",
            "Lcom/google/android/exoplayer2/z2;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->O()V

    .line 6
    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Lcom/google/android/exoplayer2/ui/w0$c;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/w0$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/c0$d;)V

    .line 13
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->keepContentOnPlayerReset:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->keepContentOnPlayerReset:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/w0;->P(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/d3;)V
    .locals 5
    .param p1    # Lcom/google/android/exoplayer2/d3;
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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->s()Landroid/os/Looper;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 40
    .line 41
    if-ne v0, p1, :cond_3

    .line 42
    return-void

    .line 43
    .line 44
    :cond_3
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->B(Lcom/google/android/exoplayer2/d3$d;)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 52
    .line 53
    instance-of v4, v1, Landroid/view/TextureView;

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    check-cast v1, Landroid/view/TextureView;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 61
    goto :goto_3

    .line 62
    .line 63
    :cond_4
    instance-of v4, v1, Landroid/view/SurfaceView;

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    check-cast v1, Landroid/view/SurfaceView;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 71
    .line 72
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    const/4 v1, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 79
    .line 80
    :cond_6
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setPlayer(Lcom/google/android/exoplayer2/d3;)V

    .line 92
    .line 93
    .line 94
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->L()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->O()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/w0;->P(Z)V

    .line 101
    .line 102
    if-eqz p1, :cond_c

    .line 103
    .line 104
    const/16 v0, 0x1b

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-eqz v0, :cond_a

    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

    .line 113
    .line 114
    instance-of v1, v0, Landroid/view/TextureView;

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    check-cast v0, Landroid/view/TextureView;

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 122
    goto :goto_4

    .line 123
    .line 124
    :cond_8
    instance-of v1, v0, Landroid/view/SurfaceView;

    .line 125
    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    check-cast v0, Landroid/view/SurfaceView;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 132
    .line 133
    .line 134
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->K()V

    .line 135
    .line 136
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    const/16 v0, 0x1c

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_b

    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->p()Lcom/google/android/exoplayer2/text/f;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    iget-object v1, v1, Lcom/google/android/exoplayer2/text/f;->cues:Lcom/google/common/collect/a0;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 158
    .line 159
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->componentListener:Lcom/google/android/exoplayer2/ui/w0$a;

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3;->F(Lcom/google/android/exoplayer2/d3$d;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/w0;->z(Z)V

    .line 166
    goto :goto_5

    .line 167
    .line 168
    .line 169
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/w0;->w()V

    .line 170
    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setRepeatToggleModes(I)V

    .line 11
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 11
    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/w0;->showBuffering:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/ui/w0;->showBuffering:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->L()V

    .line 10
    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowFastForwardButton(Z)V

    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowMultiWindowTimeBar(Z)V

    .line 11
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowNextButton(Z)V

    .line 11
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowPreviousButton(Z)V

    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowRewindButton(Z)V

    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowShuffleButton(Z)V

    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowSubtitleButton(Z)V

    .line 11
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setShowVrButton(Z)V

    .line 11
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->shutterView:Landroid/view/View;

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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->artworkView:Landroid/widget/ImageView;

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/w0;->useArtwork:Z

    .line 17
    .line 18
    if-eq v1, p1, :cond_2

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->useArtwork:Z

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/w0;->P(Z)V

    .line 24
    :cond_2
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
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

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
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/w0;->useController:Z

    .line 31
    .line 32
    if-ne v0, p1, :cond_4

    .line 33
    return-void

    .line 34
    .line 35
    :cond_4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/w0;->useController:Z

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->player:Lcom/google/android/exoplayer2/d3;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->setPlayer(Lcom/google/android/exoplayer2/d3;)V

    .line 49
    goto :goto_3

    .line 50
    .line 51
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/c0;->b0()V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 59
    const/4 v0, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->setPlayer(Lcom/google/android/exoplayer2/d3;)V

    .line 63
    .line 64
    .line 65
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->M()V

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->surfaceView:Landroid/view/View;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/w0;->R()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->U(Landroid/view/KeyEvent;)Z

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->controller:Lcom/google/android/exoplayer2/ui/c0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0;->b0()V

    .line 8
    :cond_0
    return-void
.end method
