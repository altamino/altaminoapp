.class public final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;
.super Lcom/narvii/app/NVActivity;
.source "DynamicCroppingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
.implements Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;
.implements Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicCroppingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicCroppingActivity.kt\ncom/narvii/editor/cropping/dynamic/DynamicCroppingActivity\n*L\n1#1,593:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;

.field private static final DEST_PATH:Ljava/lang/String; = "dest_path"

.field private static final DYNAMIC_CROPPING_REQUEST:I = 0x3039

.field private static final FRAME_RATE:Ljava/lang/String; = "frame_rate"

.field private static final RATIO:F = 0.5625f

.field private static final RECORD_SURFACE_HEIGHT_RATIO:F = 0.15147783f

.field private static final SOURCE_PATH:Ljava/lang/String; = "source_path"

.field private static final TAG:Ljava/lang/String; = "DynamicCroppingActivity"

.field private static final TRIM_END:Ljava/lang/String; = "trim_end"

.field private static final TRIM_START:Ljava/lang/String; = "trim_start"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private checkBtn:Lcom/narvii/widget/EasyButton;

.field private closeBtn:Lcom/narvii/widget/EasyButton;

.field private destPath:Ljava/lang/String;

.field private editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

.field private handler:Landroid/os/Handler;

.field private isPlaying:Z

.field private lastLeftRatio:F

.field private lastVideoEditorLeft:F

.field private mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private maxFrame:I

.field private offscreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

.field private offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

.field private playBtn:Landroid/widget/Button;

.field private player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field private playerState:I

.field private playingSurface:Landroid/view/Surface;

.field private playingSurfaceRendered:Z

.field private playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

.field private recordSurfaceView:Landroid/view/SurfaceView;

.field private recordView:Landroid/widget/FrameLayout;

.field private recordedDataNeedToReset:Z

.field private renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

.field private seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

.field private seekBarIsDragging:Z

.field private seekBeginProgress:I

.field private sourcePath:Ljava/lang/String;

.field private supportDynamicCropping:Z

.field private time:J

.field private timeView:Landroid/widget/TextView;

.field private final timer:Ljava/util/Timer;

.field private timerStarted:Z

.field private totalTimeView:Landroid/widget/TextView;

.field private trimEnd:I

.field private trimStart:I

.field private videoEditorPosArray:[F

.field private videoFrameRate:I

.field private videoFrames:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->Companion:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timer:Ljava/util/Timer;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoWidth:I

    .line 82
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoHeight:I

    .line 83
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->supportDynamicCropping:Z

    .line 84
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playerState:I

    .line 91
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 92
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 95
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    const/high16 v0, -0x3ee00000    # -10.0f

    .line 404
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 530
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    return-void
.end method

.method public static final synthetic access$addCurrentFramePos(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;ZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos(ZZ)V

    return-void
.end method

.method public static final synthetic access$getEditorView$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editorView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "handler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getLastLeftRatio$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    return p0
.end method

.method public static final synthetic access$getLastVideoEditorLeft$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    return p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "player"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setEditorView$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    return-void
.end method

.method public static final synthetic access$setHandler$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/os/Handler;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setLastLeftRatio$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    return-void
.end method

.method public static final synthetic access$setLastVideoEditorLeft$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    return-void
.end method

.method public static final synthetic access$setPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    return-void
.end method

.method public static final synthetic access$setTime(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    return-void
.end method

.method private final addCurrentFramePos(ZZ)V
    .locals 8

    .line 532
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    int-to-long v4, v0

    mul-long v2, v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 533
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    if-gt v0, v2, :cond_10

    if-gez v0, :cond_0

    goto/16 :goto_3

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    const-string/jumbo v3, "videoEditorPosArray"

    if-eqz v2, :cond_f

    aget v4, v2, v0

    const/4 v5, 0x0

    int-to-float v5, v5

    const-string v6, "recordSurfaceView"

    const-string v7, "editorView"

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    if-eqz p1, :cond_4

    .line 537
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    aget v2, v2, v0

    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->moveInnerRectToPos(F)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    if-eqz p1, :cond_e

    aget p1, p1, v0

    cmpg-float p1, p1, v5

    if-ltz p1, :cond_5

    if-eqz p2, :cond_a

    .line 540
    :cond_5
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getVideoRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    add-int/lit8 p2, v0, -0x1

    :goto_1
    if-ltz p2, :cond_9

    .line 543
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    if-eqz v2, :cond_8

    aget v4, v2, p2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 546
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    aput v4, v2, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    if-eqz p2, :cond_b

    aput p1, p2, v0

    .line 550
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    .line 552
    :cond_a
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    return-void

    .line 549
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_3
    return-void

    :cond_11
    const-string p1, "player"

    .line 532
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method static synthetic addCurrentFramePos$default(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 531
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos(ZZ)V

    return-void
.end method

.method private final clickPlayBtn()V
    .locals 6

    .line 476
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 477
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const-string v2, "player"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 478
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 479
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 482
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_stop:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_play:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void

    :cond_3
    const-string v0, "playBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 477
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final getVideoFrameRate()V
    .locals 10

    const-string v0, "durationUs"

    .line 498
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    if-lez v1, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 503
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_2

    const/4 v6, 0x0

    .line 507
    :goto_0
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "mime"

    .line 508
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const-string/jumbo v9, "video/"

    invoke-static {v7, v9, v5, v8, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq v6, v2, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    :goto_1
    if-ne v6, v4, :cond_3

    return-void

    .line 517
    :cond_3
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 518
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const v3, 0xf4240

    :try_start_0
    const-string v4, "frame-rate"

    .line 520
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    int-to-long v6, v4

    mul-long v0, v0, v6

    int-to-long v3, v3

    div-long/2addr v0, v3

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 526
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    :goto_2
    if-ge v5, v0, :cond_4

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_0
    move-exception v4

    .line 522
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "frame_rate"

    const/16 v6, 0x1e

    .line 523
    invoke-virtual {p0, v4, v6}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    int-to-long v6, v4

    mul-long v0, v0, v6

    int-to-long v3, v3

    div-long/2addr v0, v3

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 526
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    :goto_3
    if-ge v5, v0, :cond_5

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    :goto_4
    return-void

    .line 525
    :goto_5
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    int-to-long v6, v6

    mul-long v0, v0, v6

    int-to-long v6, v3

    div-long/2addr v0, v6

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 526
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    :goto_6
    if-ge v5, v0, :cond_6

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    throw v4

    :cond_7
    const-string v0, "sourcePath"

    .line 503
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7
.end method

.method private final initRenderThread()V
    .locals 10

    .line 426
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v0, :cond_c

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "no mp4 in sdcard, please check"

    .line 428
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 431
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->destPath:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 434
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 436
    :cond_1
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->setStopRenderThread(Z)V

    .line 437
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 438
    new-instance v9, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 442
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    if-eqz v4, :cond_a

    .line 443
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    if-eqz v5, :cond_9

    .line 444
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    const-string v1, "recordSurfaceView"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    .line 445
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v7

    move-object v0, v9

    move-object v1, p0

    .line 438
    invoke-direct/range {v0 .. v7}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;[FII)V

    iput-object v9, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 447
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    const-string v1, "offscreenRenderThread"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 448
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->waitUntilReady()V

    .line 449
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->getMRenderHandler()Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->prepareOffscreenRender()V

    .line 450
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->getMRenderHandler()Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->startOffscreenRender()V

    .line 451
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->setTotalFrames(I)V

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->time:J

    return-void

    .line 451
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 450
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 449
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 448
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 447
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 445
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 444
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_9
    const-string/jumbo v0, "videoEditorPosArray"

    .line 443
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_a
    const-string v0, "offscreenActivityHandler"

    .line 442
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_b
    const-string v0, "destPath"

    .line 431
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_c
    const-string v0, "sourcePath"

    .line 426
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8
.end method

.method private final preparePlayer()V
    .locals 6

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.getStringExtra(SOURCE_PATH)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 577
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dest_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.getStringExtra(DEST_PATH)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->destPath:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    const-string v1, "sourcePath"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    new-instance v3, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 580
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/16 v1, 0x66

    .line 582
    iput v1, v3, Lcom/narvii/model/Media;->type:I

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/model/Media;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 583
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 584
    iput-boolean v4, v0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    .line 585
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 581
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 578
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final resetFramePos()V
    .locals 6

    .line 556
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    int-to-long v4, v0

    mul-long v2, v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 557
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    if-gt v0, v2, :cond_3

    if-gez v0, :cond_0

    goto :goto_1

    .line 560
    :cond_0
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    if-ge v0, v2, :cond_3

    add-int/lit8 v3, v0, 0x1

    if-gt v3, v2, :cond_2

    .line 562
    :goto_0
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    if-eqz v4, :cond_1

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v4, v3

    if-eq v3, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "videoEditorPosArray"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 564
    :cond_2
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v0, "player"

    .line 556
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private final setTime(Z)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "player"

    const/4 v2, 0x0

    .line 345
    iget-object v3, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    :goto_0
    if-nez p1, :cond_4

    .line 347
    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 348
    iget-object v3, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_c

    const/16 v5, 0x3e8

    int-to-long v5, v5

    .line 351
    div-long v7, v3, v5

    const/16 v9, 0x3c

    int-to-long v9, v9

    div-long v11, v7, v9

    rem-long/2addr v11, v9

    long-to-int v12, v11

    .line 352
    rem-long/2addr v7, v9

    long-to-int v8, v7

    .line 353
    rem-long v5, v3, v5

    const/16 v7, 0x64

    int-to-long v9, v7

    div-long/2addr v5, v9

    const/4 v7, 0x0

    const-string v11, ""

    const/16 v13, 0xa

    const/16 v14, 0x3a

    if-eqz p1, :cond_7

    .line 355
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->totalTimeView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v8, v13, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_5
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "totalTimeView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_7
    iget-object v15, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timeView:Landroid/widget/TextView;

    if-eqz v15, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v8, v13, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_8
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-boolean v2, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    if-eqz v2, :cond_c

    .line 359
    iget-object v2, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    if-eqz v2, :cond_a

    mul-long v3, v3, v9

    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    goto :goto_2

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_a
    const/4 v2, 0x0

    const-string v1, "seekBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    const-string v1, "timeView"

    .line 357
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    :goto_2
    return-void

    .line 345
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void

    :cond_1
    const-string v0, "playBtn"

    .line 569
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onCachedBytesRead(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 195
    :goto_0
    sget v1, Lcom/narvii/meisheeditor/R$id;->close_btn:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 196
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/Button;->isClickable()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    goto :goto_4

    :cond_3
    const-string p1, "playBtn"

    .line 196
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_4
    :goto_1
    sget v1, Lcom/narvii/meisheeditor/R$id;->check_btn:I

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 202
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->supportDynamicCropping:Z

    if-nez p1, :cond_6

    .line 203
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 206
    :cond_6
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    .line 207
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->clickPlayBtn()V

    goto :goto_2

    :cond_7
    const-string p1, "player"

    .line 206
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->initRenderThread()V

    .line 210
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_4

    :cond_9
    const-string p1, "mProgressDialog"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_a
    :goto_3
    sget v0, Lcom/narvii/meisheeditor/R$id;->play_btn:I

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_c

    .line 214
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->clickPlayBtn()V

    :cond_c
    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 108
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget p1, Lcom/narvii/meisheeditor/R$layout;->activity_dynamic_cropping:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 110
    sget p1, Lcom/narvii/meisheeditor/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.close_btn)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/EasyButton;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->closeBtn:Lcom/narvii/widget/EasyButton;

    .line 111
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->closeBtn:Lcom/narvii/widget/EasyButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget p1, Lcom/narvii/meisheeditor/R$id;->check_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.check_btn)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/EasyButton;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->checkBtn:Lcom/narvii/widget/EasyButton;

    .line 113
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->checkBtn:Lcom/narvii/widget/EasyButton;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget p1, Lcom/narvii/meisheeditor/R$id;->play_surface:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.play_surface)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 116
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    .line 117
    sget v1, Lcom/narvii/meisheeditor/R$id;->record_surface:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.record_surface)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 118
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    const-string v2, "recordSurfaceView"

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    move-result-object v1

    const-string v3, "NVExoPlayer.getInstance(applicationContext)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 120
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const-string v3, "player"

    if-eqz v1, :cond_f

    invoke-virtual {v1, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 121
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->preparePlayer()V

    .line 122
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    const-string v4, "playingSurfaceView"

    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v5, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->initViews(Lcom/narvii/nvplayer/INVPlayer;I)V

    .line 123
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v5, 0x3e1b1d01

    int-to-float p1, p1

    mul-float p1, p1, v5

    float-to-int p1, p1

    .line 124
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iget p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    const/high16 v5, 0x3f100000    # 0.5625f

    div-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    sget p1, Lcom/narvii/meisheeditor/R$id;->record_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.record_view)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordView:Landroid/widget/FrameLayout;

    .line 129
    sget p1, Lcom/narvii/meisheeditor/R$id;->play_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.play_btn)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    .line 130
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget p1, Lcom/narvii/meisheeditor/R$id;->top_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string v1, "#2A2A2A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 133
    sget p1, Lcom/narvii/meisheeditor/R$id;->bottom_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string v1, "#323335"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 135
    sget p1, Lcom/narvii/meisheeditor/R$id;->editor_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.editor_view)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 136
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    const-string v1, "editorView"

    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz v2, :cond_8

    invoke-virtual {p1, v2}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setSimpleGlView(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setEditorViewTouchListener(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;)V

    .line 139
    sget p1, Lcom/narvii/meisheeditor/R$id;->time_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.time_view)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timeView:Landroid/widget/TextView;

    .line 140
    sget p1, Lcom/narvii/meisheeditor/R$id;->total_time_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.total_time_view)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->totalTimeView:Landroid/widget/TextView;

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->handler:Landroid/os/Handler;

    .line 142
    sget p1, Lcom/narvii/meisheeditor/R$id;->seekbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.seekbar)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 143
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    const-string v1, "seekBar"

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setSeekBarChangeListener(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;)V

    .line 145
    sget p1, Lcom/narvii/meisheeditor/R$id;->render_record_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.render_record_view)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge p1, v2, :cond_3

    .line 149
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 150
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 151
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 155
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const-string v1, "mProgressDialog"

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 156
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;->INSTANCE:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string p1, "playBtn"

    .line 130
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string p1, "checkBtn"

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string p1, "closeBtn"

    .line 111
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 3

    .line 338
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 340
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const/4 v1, 0x0

    const-string v2, "player"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->reset()V

    .line 341
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->release()V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onErrorDebug(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 333
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 334
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    return-void

    :cond_0
    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPlayerError(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 296
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playerState:I

    if-eq p1, p2, :cond_6

    const/4 p1, 0x0

    .line 297
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 298
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 299
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget v2, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_play:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 300
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    const-string v2, "editorView"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setShowOuterRect(Z)V

    .line 301
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    const-string v0, "renderRecordView"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->getMaxPoint()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getEditorViewMoved()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    if-eqz p1, :cond_2

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->addPoint(I)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "playBtn"

    .line 299
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_6
    :goto_1
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playerState:I

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPositionDiscontinuity(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public synthetic onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPreloadStrategyChanged(Lcom/narvii/nvplayer/IVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;IZ)V
    .locals 5

    const-string p2, "seekBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-boolean p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    if-nez p2, :cond_d

    .line 367
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const-string p3, "player"

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 368
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 369
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 370
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    move-result-wide p2

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    int-to-long v1, v1

    mul-long p2, p2, v1

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 371
    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    if-gt p2, p3, :cond_8

    if-gez p2, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    const-string/jumbo v1, "videoEditorPosArray"

    if-eqz p3, :cond_7

    aget v2, p3, p2

    int-to-float p1, p1

    const-string v3, "recordSurfaceView"

    const-string v4, "editorView"

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_4

    .line 375
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    aget p2, p3, p2

    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->moveInnerRectToPos(F)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_4
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_6

    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->moveInnerRectToPos(F)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    return-void

    .line 370
    :cond_9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_a
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_b
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_1
    return-void
.end method

.method public synthetic onRenderFirstFrameInterval(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onRenderFirstFrameInterval(Lcom/narvii/nvplayer/IVideoListener;J)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 9

    .line 267
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceRendered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 268
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderAnotherSurface(Landroid/view/Surface;)V

    .line 269
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceRendered:Z

    goto :goto_0

    :cond_0
    const-string v0, "playingSurfaceView"

    .line 268
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timerStarted:Z

    if-nez v0, :cond_7

    .line 272
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timerStarted:Z

    .line 273
    invoke-direct {p0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 274
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timer:Ljava/util/Timer;

    new-instance v4, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;

    invoke-direct {v4, p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x64

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const-string/jumbo v0, "trim_start"

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const-string v6, "player"

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v7

    long-to-float v5, v7

    div-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    const-string/jumbo v3, "trim_end"

    .line 285
    invoke-virtual {p0, v3, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimEnd:I

    .line 286
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    const-string v4, "seekBar"

    if-eqz v3, :cond_4

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    iget v7, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimEnd:I

    invoke-virtual {v3, v5, v7}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setTrim(II)V

    .line 287
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    if-lez v3, :cond_7

    .line 288
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 289
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    invoke-virtual {v0, v2}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 290
    invoke-direct {p0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    goto :goto_1

    .line 289
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 325
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 326
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->getVideoFrameRate()V

    .line 327
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setPlaying(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "playingSurfaceView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 387
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBeginProgress:I

    .line 388
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    return-void

    :cond_0
    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStopTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V
    .locals 7

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 393
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const/4 v2, 0x0

    const-string v3, "player"

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v4, v4, v5

    float-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 394
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 395
    invoke-direct {p0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result p1

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBeginProgress:I

    if-ge p1, v1, :cond_1

    .line 399
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 393
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onTouchDown()V
    .locals 3

    .line 406
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->resetPoint(I)V

    .line 408
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->resetFramePos()V

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    goto :goto_0

    :cond_0
    const-string v0, "seekBar"

    .line 407
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "renderRecordView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchUp()V
    .locals 6

    .line 414
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getInnerRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 415
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 416
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    const-string v4, "seekBar"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_1

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v1, 0x63

    :goto_0
    invoke-virtual {v2, v1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->addPoint(I)V

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "renderRecordView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 419
    invoke-direct {p0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos(ZZ)V

    .line 421
    :cond_5
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    return-void

    :cond_6
    const-string v0, "editorView"

    .line 414
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 6

    .line 225
    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    const/4 p4, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3, p1, p2}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setVideoSize(II)V

    .line 226
    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoWidth:I

    const-string v0, "editorView"

    if-ne p1, p3, :cond_1

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoHeight:I

    if-ne p2, p3, :cond_1

    .line 227
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 230
    :cond_1
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoWidth:I

    .line 231
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoHeight:I

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p1, p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    const p2, 0x3f128f5c    # 0.5725f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 235
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->supportDynamicCropping:Z

    .line 237
    :cond_2
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    const-string p3, "recordSurfaceView"

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 238
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 240
    sget-object v3, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 241
    sget-object v1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x28

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 244
    :cond_3
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordView:Landroid/widget/FrameLayout;

    const-string p3, "recordView"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 249
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    const v2, 0x3f947ae1    # 1.16f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    sget-object v1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {v1, p0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 251
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p3, :cond_5

    .line 253
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    .line 254
    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    .line 255
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    .line 256
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    .line 252
    invoke-virtual {p3, v1, v2, v3, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setSize(FFFF)V

    .line 258
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-eqz p1, :cond_4

    new-instance p3, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;

    invoke-direct {p3, p0, p2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 252
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 251
    :cond_6
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 248
    :cond_7
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 247
    :cond_8
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 238
    :cond_9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 237
    :cond_a
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    :cond_b
    const-string p1, "playingSurfaceView"

    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4
.end method

.method public synthetic onVideoSupportLowResVideo(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSupportLowResVideo(Lcom/narvii/nvplayer/IVideoListener;Z)V

    return-void
.end method

.method public final setDuration()V
    .locals 4

    .line 456
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->time:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final setOffscreenProgress(I)V
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const-string v1, "mProgressDialog"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_3

    .line 465
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 466
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "success"

    .line 467
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->destPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 469
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 470
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string p1, "destPath"

    .line 468
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void

    .line 462
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$shouldPauseForPageAboveVideo(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 309
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->anotherSurfaceChanged(II)V

    return-void

    :cond_0
    const-string p1, "playingSurfaceView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 320
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    .line 321
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setGlSurfaceDoFrameListener(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;)V

    return-void

    :cond_1
    const-string p1, "playingSurfaceView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 313
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    const-string v0, "playingSurfaceView"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->stopRenderAnotherSurface()V

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceRendered:Z

    .line 315
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    .line 316
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setGlSurfaceDoFrameListener(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;)V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public surfaceDoFrame()V
    .locals 4

    .line 486
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 493
    invoke-static {p0, v0, v2, v3, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos$default(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;ZZILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "player"

    .line 492
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
