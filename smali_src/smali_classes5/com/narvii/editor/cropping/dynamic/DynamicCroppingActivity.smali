.class public final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

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


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEST_PATH:Ljava/lang/String; = "dest_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DYNAMIC_CROPPING_REQUEST:I = 0x3039

.field private static final FRAME_RATE:Ljava/lang/String; = "frame_rate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RATIO:F = 0.5625f

.field private static final RECORD_SURFACE_HEIGHT_RATIO:F = 0.15147783f

.field private static final SOURCE_PATH:Ljava/lang/String; = "source_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DynamicCroppingActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TRIM_END:Ljava/lang/String; = "trim_end"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TRIM_START:Ljava/lang/String; = "trim_start"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->Companion:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/Timer;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timer:Ljava/util/Timer;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoWidth:I

    .line 17
    .line 18
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoHeight:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->supportDynamicCropping:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playerState:I

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 25
    .line 26
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 27
    .line 28
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    .line 29
    .line 30
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    .line 33
    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    .line 37
    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->handler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setTime(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 4
    return-void
.end method

.method private final addCurrentFramePos(ZZ)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "player"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 18
    int-to-long v4, v0

    .line 19
    mul-long/2addr v2, v4

    .line 20
    long-to-float v0, v2

    .line 21
    .line 22
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 23
    div-float/2addr v0, v2

    .line 24
    float-to-int v0, v0

    .line 25
    .line 26
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 27
    .line 28
    if-gt v0, v2, :cond_11

    .line 29
    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 35
    .line 36
    const-string v3, "videoEditorPosArray"

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 42
    move-object v2, v1

    .line 43
    .line 44
    :cond_2
    aget v2, v2, v0

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    cmpl-float v2, v2, v4

    .line 48
    .line 49
    const-string v5, "recordSurfaceView"

    .line 50
    .line 51
    const-string v6, "editorView"

    .line 52
    .line 53
    if-ltz v2, :cond_6

    .line 54
    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 63
    move-object p1, v1

    .line 64
    .line 65
    :cond_3
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 66
    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 71
    move-object v2, v1

    .line 72
    .line 73
    :cond_4
    aget v2, v2, v0

    .line 74
    .line 75
    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 76
    .line 77
    if-nez v7, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 81
    move-object v7, v1

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 85
    move-result v7

    .line 86
    int-to-float v7, v7

    .line 87
    mul-float/2addr v2, v7

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->moveInnerRectToPos(F)V

    .line 91
    .line 92
    :cond_6
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 98
    move-object p1, v1

    .line 99
    .line 100
    :cond_7
    aget p1, p1, v0

    .line 101
    .line 102
    cmpg-float p1, p1, v4

    .line 103
    .line 104
    if-ltz p1, :cond_8

    .line 105
    .line 106
    if-eqz p2, :cond_10

    .line 107
    .line 108
    :cond_8
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 109
    .line 110
    if-nez p1, :cond_9

    .line 111
    .line 112
    .line 113
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 114
    move-object p1, v1

    .line 115
    .line 116
    .line 117
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getVideoRect()Landroid/graphics/Rect;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 121
    int-to-float p1, p1

    .line 122
    .line 123
    const/high16 p2, 0x3f800000    # 1.0f

    .line 124
    mul-float/2addr p1, p2

    .line 125
    .line 126
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 127
    .line 128
    if-nez p2, :cond_a

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 132
    move-object p2, v1

    .line 133
    .line 134
    .line 135
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 136
    move-result p2

    .line 137
    int-to-float p2, p2

    .line 138
    div-float/2addr p1, p2

    .line 139
    .line 140
    add-int/lit8 p2, v0, -0x1

    .line 141
    :goto_0
    const/4 v2, -0x1

    .line 142
    .line 143
    if-ge v2, p2, :cond_e

    .line 144
    .line 145
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 146
    .line 147
    if-nez v2, :cond_b

    .line 148
    .line 149
    .line 150
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 151
    move-object v2, v1

    .line 152
    .line 153
    :cond_b
    aget v2, v2, p2

    .line 154
    .line 155
    cmpl-float v2, v2, v4

    .line 156
    .line 157
    if-ltz v2, :cond_c

    .line 158
    goto :goto_1

    .line 159
    .line 160
    :cond_c
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 161
    .line 162
    if-nez v2, :cond_d

    .line 163
    .line 164
    .line 165
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 166
    move-object v2, v1

    .line 167
    .line 168
    :cond_d
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    .line 169
    .line 170
    aput v5, v2, p2

    .line 171
    .line 172
    add-int/lit8 p2, p2, -0x1

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :cond_e
    :goto_1
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 176
    .line 177
    if-nez p2, :cond_f

    .line 178
    .line 179
    .line 180
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 181
    goto :goto_2

    .line 182
    :cond_f
    move-object v1, p2

    .line 183
    .line 184
    :goto_2
    aput p1, v1, v0

    .line 185
    .line 186
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    .line 187
    .line 188
    :cond_10
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    .line 189
    .line 190
    .line 191
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 192
    move-result p1

    .line 193
    .line 194
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    .line 195
    :cond_11
    :goto_3
    return-void
.end method

.method static synthetic addCurrentFramePos$default(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos(ZZ)V

    .line 9
    return-void
.end method

.method private final clickPlayBtn()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 9
    .line 10
    const-string v2, "player"

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object v0, v3

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    .line 21
    move-result v0

    .line 22
    const/4 v4, 0x4

    .line 23
    .line 24
    if-ne v0, v4, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    move-object v0, v3

    .line 33
    .line 34
    :cond_1
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4, v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    move-object v0, v3

    .line 48
    .line 49
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    const-string v0, "playBtn"

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move-object v3, v0

    .line 64
    .line 65
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    sget v0, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_stop:I

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_5
    sget v0, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_play:I

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    return-void
.end method

.method private final getVideoFrameRate()V
    .locals 11

    .line 1
    .line 2
    const-string v0, "durationUs"

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    const-string v2, "sourcePath"

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 23
    move-object v2, v3

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 30
    move-result v2

    .line 31
    .line 32
    const-string v4, "getTrackFormat(...)"

    .line 33
    const/4 v5, -0x1

    .line 34
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x0

    .line 36
    .line 37
    if-ltz v2, :cond_3

    .line 38
    move v8, v7

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v1, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 42
    move-result-object v9

    .line 43
    .line 44
    .line 45
    invoke-static {v9, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    const-string v10, "mime"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v9

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    const-string v10, "video/"

    .line 56
    .line 57
    .line 58
    invoke-static {v9, v10, v7, v6, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 59
    move-result v9

    .line 60
    const/4 v10, 0x1

    .line 61
    .line 62
    if-ne v9, v10, :cond_2

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_2
    if-eq v8, v2, :cond_3

    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v8, v5

    .line 70
    .line 71
    :goto_1
    if-ne v8, v5, :cond_4

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {v1, v8}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    const/high16 v2, -0x40800000    # -1.0f

    .line 85
    .line 86
    .line 87
    const v3, 0xf4240

    .line 88
    .line 89
    :try_start_0
    const-string v4, "frame-rate"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 93
    move-result v4

    .line 94
    .line 95
    iput v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 99
    move-result-wide v0

    .line 100
    .line 101
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 102
    int-to-long v4, v4

    .line 103
    mul-long/2addr v0, v4

    .line 104
    int-to-long v3, v3

    .line 105
    div-long/2addr v0, v3

    .line 106
    long-to-int v0, v0

    .line 107
    .line 108
    add-int/lit8 v1, v0, 0x1

    .line 109
    .line 110
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 111
    add-int/2addr v0, v6

    .line 112
    .line 113
    new-array v1, v0, [F

    .line 114
    .line 115
    :goto_2
    if-ge v7, v0, :cond_5

    .line 116
    .line 117
    aput v2, v1, v7

    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :cond_5
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 123
    goto :goto_4

    .line 124
    :catchall_0
    move-exception v4

    .line 125
    goto :goto_5

    .line 126
    :catch_0
    move-exception v4

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    const-string v4, "frame_rate"

    .line 132
    .line 133
    const/16 v5, 0x1e

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v4, v5}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    .line 137
    move-result v4

    .line 138
    .line 139
    iput v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 143
    move-result-wide v0

    .line 144
    .line 145
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 146
    int-to-long v4, v4

    .line 147
    mul-long/2addr v0, v4

    .line 148
    int-to-long v3, v3

    .line 149
    div-long/2addr v0, v3

    .line 150
    long-to-int v0, v0

    .line 151
    .line 152
    add-int/lit8 v1, v0, 0x1

    .line 153
    .line 154
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 155
    add-int/2addr v0, v6

    .line 156
    .line 157
    new-array v1, v0, [F

    .line 158
    .line 159
    :goto_3
    if-ge v7, v0, :cond_6

    .line 160
    .line 161
    aput v2, v1, v7

    .line 162
    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    goto :goto_3

    .line 165
    .line 166
    :cond_6
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 167
    :goto_4
    return-void

    .line 168
    .line 169
    .line 170
    :goto_5
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 171
    move-result-wide v0

    .line 172
    .line 173
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 174
    int-to-long v8, v5

    .line 175
    mul-long/2addr v0, v8

    .line 176
    int-to-long v8, v3

    .line 177
    div-long/2addr v0, v8

    .line 178
    long-to-int v0, v0

    .line 179
    .line 180
    add-int/lit8 v1, v0, 0x1

    .line 181
    .line 182
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 183
    add-int/2addr v0, v6

    .line 184
    .line 185
    new-array v1, v0, [F

    .line 186
    .line 187
    :goto_6
    if-ge v7, v0, :cond_7

    .line 188
    .line 189
    aput v2, v1, v7

    .line 190
    .line 191
    add-int/lit8 v7, v7, 0x1

    .line 192
    goto :goto_6

    .line 193
    .line 194
    :cond_7
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 195
    throw v4
.end method

.method private final initRenderThread()V
    .locals 10

    .line 1
    .line 2
    new-instance v2, Ljava/io/File;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 5
    const/4 v8, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "sourcePath"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    move-object v0, v8

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "no mp4 in sdcard, please check"

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->destPath:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string v0, "destPath"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 45
    move-object v0, v8

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 61
    .line 62
    :cond_3
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    .line 63
    const/4 v1, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->setStopRenderThread(Z)V

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 74
    .line 75
    new-instance v9, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    const-string v0, "offscreenActivityHandler"

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 85
    move-object v4, v8

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move-object v4, v0

    .line 88
    .line 89
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    const-string v0, "videoEditorPosArray"

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 97
    move-object v5, v8

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move-object v5, v0

    .line 100
    .line 101
    :goto_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 102
    .line 103
    const-string v1, "recordSurfaceView"

    .line 104
    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 109
    move-object v0, v8

    .line 110
    .line 111
    .line 112
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 113
    move-result v6

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 121
    move-object v0, v8

    .line 122
    .line 123
    .line 124
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 125
    move-result v7

    .line 126
    move-object v0, v9

    .line 127
    move-object v1, p0

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v0 .. v7}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;[FII)V

    .line 131
    .line 132
    iput-object v9, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 138
    .line 139
    const-string v1, "offscreenRenderThread"

    .line 140
    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 145
    move-object v0, v8

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->waitUntilReady()V

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 151
    .line 152
    if-nez v0, :cond_9

    .line 153
    .line 154
    .line 155
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 156
    move-object v0, v8

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->getMRenderHandler()Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->prepareOffscreenRender()V

    .line 164
    .line 165
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 166
    .line 167
    if-nez v0, :cond_a

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 171
    move-object v0, v8

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->getMRenderHandler()Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;->startOffscreenRender()V

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->offscreenRenderThread:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;

    .line 181
    .line 182
    if-nez v0, :cond_b

    .line 183
    .line 184
    .line 185
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 186
    goto :goto_2

    .line 187
    :cond_b
    move-object v8, v0

    .line 188
    .line 189
    :goto_2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->setTotalFrames(I)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 196
    move-result-wide v0

    .line 197
    .line 198
    iput-wide v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->time:J

    .line 199
    return-void
.end method

.method private static final onCreate$lambda$0(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    sget-object p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->getStopRenderThread()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->setStopRenderThread(Z)V

    .line 12
    return-void
.end method

.method private static final onVideoSizeChanged$lambda$1(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    const-string v2, "editorView"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object v0, v1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getVideoRect()Landroid/graphics/Rect;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 23
    int-to-float v0, v0

    .line 24
    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    mul-float/2addr v0, v3

    .line 27
    .line 28
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr v0, p1

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, p1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getInnerRectF()Landroid/graphics/RectF;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 48
    .line 49
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    .line 50
    const/4 p1, 0x0

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos(ZZ)V

    .line 55
    return-void
.end method

.method private final preparePlayer()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "source_path"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "dest_path"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->destPath:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "sourcePath"

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    move-object v2, v3

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/model/Media;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Lcom/narvii/model/Media;-><init>()V

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string v5, "file://"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->sourcePath:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v5, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 89
    move-object v5, v3

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    iput-object v1, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 99
    .line 100
    const/16 v1, 0x66

    .line 101
    .line 102
    iput v1, v2, Lcom/narvii/model/Media;->type:I

    .line 103
    const/4 v1, 0x1

    .line 104
    .line 105
    new-array v1, v1, [Lcom/narvii/model/Media;

    .line 106
    const/4 v4, 0x0

    .line 107
    .line 108
    aput-object v2, v1, v4

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 115
    .line 116
    iput-boolean v4, v0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 119
    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    const-string v1, "player"

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 126
    move-object v1, v3

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {v1, p0, v0, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 130
    :cond_4
    return-void
.end method

.method private final resetFramePos()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "player"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 18
    int-to-long v4, v0

    .line 19
    mul-long/2addr v2, v4

    .line 20
    long-to-float v0, v2

    .line 21
    .line 22
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 23
    div-float/2addr v0, v2

    .line 24
    float-to-int v0, v0

    .line 25
    .line 26
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 27
    .line 28
    if-gt v0, v2, :cond_4

    .line 29
    .line 30
    if-gez v0, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    .line 34
    .line 35
    if-ge v0, v2, :cond_4

    .line 36
    .line 37
    add-int/lit8 v3, v0, 0x1

    .line 38
    .line 39
    if-gt v3, v2, :cond_3

    .line 40
    .line 41
    :goto_0
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    const-string v4, "videoEditorPosArray"

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 49
    move-object v4, v1

    .line 50
    .line 51
    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    .line 52
    .line 53
    aput v5, v4, v3

    .line 54
    .line 55
    if-eq v3, v2, :cond_3

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->maxFrame:I

    .line 61
    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic s(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->onVideoSizeChanged$lambda$1(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setTime(Z)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "player"

    .line 5
    .line 6
    iget-object v3, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 18
    move-result-wide v3

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    if-nez v3, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    .line 29
    move-result-wide v3

    .line 30
    .line 31
    :goto_0
    if-nez p1, :cond_5

    .line 32
    .line 33
    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    const/4 v5, 0x0

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 43
    move-result-wide v5

    .line 44
    .line 45
    cmp-long v5, v3, v5

    .line 46
    .line 47
    if-lez v5, :cond_5

    .line 48
    .line 49
    iget-object v3, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 50
    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 55
    const/4 v3, 0x0

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 59
    move-result-wide v3

    .line 60
    .line 61
    :cond_5
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    cmp-long v5, v3, v5

    .line 64
    .line 65
    if-ltz v5, :cond_d

    .line 66
    .line 67
    const/16 v5, 0x3e8

    .line 68
    int-to-long v5, v5

    .line 69
    .line 70
    div-long v7, v3, v5

    .line 71
    .line 72
    const/16 v9, 0x3c

    .line 73
    int-to-long v9, v9

    .line 74
    .line 75
    div-long v11, v7, v9

    .line 76
    rem-long/2addr v11, v9

    .line 77
    long-to-int v11, v11

    .line 78
    rem-long/2addr v7, v9

    .line 79
    long-to-int v7, v7

    .line 80
    .line 81
    rem-long v5, v3, v5

    .line 82
    .line 83
    const/16 v8, 0x64

    .line 84
    int-to-long v8, v8

    .line 85
    div-long/2addr v5, v8

    .line 86
    .line 87
    const-string v10, ""

    .line 88
    const/4 v12, 0x0

    .line 89
    .line 90
    const/16 v13, 0xa

    .line 91
    .line 92
    const/16 v14, 0x3a

    .line 93
    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->totalTimeView:Landroid/widget/TextView;

    .line 97
    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    const-string v1, "totalTimeView"

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x0

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    move-object v2, v1

    .line 107
    .line 108
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    if-ge v7, v13, :cond_7

    .line 120
    .line 121
    .line 122
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v10

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    goto :goto_3

    .line 144
    .line 145
    :cond_8
    iget-object v15, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timeView:Landroid/widget/TextView;

    .line 146
    .line 147
    if-nez v15, :cond_9

    .line 148
    .line 149
    const-string v15, "timeView"

    .line 150
    .line 151
    .line 152
    invoke-static {v15}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 153
    const/4 v15, 0x0

    .line 154
    .line 155
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    if-ge v7, v13, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v10

    .line 171
    .line 172
    .line 173
    :cond_a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    iget-boolean v2, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 192
    .line 193
    if-eqz v2, :cond_d

    .line 194
    .line 195
    iget-object v2, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 196
    .line 197
    if-nez v2, :cond_b

    .line 198
    .line 199
    const-string v2, "seekBar"

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x0

    .line 204
    :cond_b
    mul-long/2addr v3, v8

    .line 205
    .line 206
    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 207
    .line 208
    if-nez v5, :cond_c

    .line 209
    .line 210
    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 212
    .line 213
    const/16 v16, 0x0

    .line 214
    goto :goto_2

    .line 215
    .line 216
    :cond_c
    move-object/from16 v16, v5

    .line 217
    .line 218
    .line 219
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 220
    move-result-wide v5

    .line 221
    div-long/2addr v3, v5

    .line 222
    long-to-int v1, v3

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 226
    :cond_d
    :goto_3
    return-void
.end method

.method public static synthetic t(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->onCreate$lambda$0(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "playBtn"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 21
    return-void
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->a(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    .line 15
    :goto_0
    sget v1, Lcom/narvii/meisheeditor/R$id;->close_btn:I

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    goto :goto_2

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ne v2, v1, :cond_4

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    const-string p1, "playBtn"

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v0, p1

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    return-void

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 46
    goto :goto_5

    .line 47
    .line 48
    :cond_4
    :goto_2
    sget v1, Lcom/narvii/meisheeditor/R$id;->check_btn:I

    .line 49
    .line 50
    if-nez p1, :cond_5

    .line 51
    goto :goto_4

    .line 52
    .line 53
    .line 54
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result v2

    .line 56
    .line 57
    if-ne v2, v1, :cond_a

    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->supportDynamicCropping:Z

    .line 60
    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    sget v0, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    .line 68
    const/4 v1, 0x0

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 76
    return-void

    .line 77
    .line 78
    :cond_6
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 79
    .line 80
    if-eqz p1, :cond_8

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 83
    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    const-string p1, "player"

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 90
    move-object p1, v0

    .line 91
    .line 92
    .line 93
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    .line 94
    move-result p1

    .line 95
    const/4 v1, 0x4

    .line 96
    .line 97
    if-eq p1, v1, :cond_8

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->clickPlayBtn()V

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->initRenderThread()V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 106
    .line 107
    if-nez p1, :cond_9

    .line 108
    .line 109
    const-string p1, "mProgressDialog"

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 113
    goto :goto_3

    .line 114
    :cond_9
    move-object v0, p1

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 118
    goto :goto_5

    .line 119
    .line 120
    :cond_a
    :goto_4
    sget v0, Lcom/narvii/meisheeditor/R$id;->play_btn:I

    .line 121
    .line 122
    if-nez p1, :cond_b

    .line 123
    goto :goto_5

    .line 124
    .line 125
    .line 126
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 127
    move-result p1

    .line 128
    .line 129
    if-ne p1, v0, :cond_c

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->clickPlayBtn()V

    .line 133
    :cond_c
    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/meisheeditor/R$layout;->activity_dynamic_cropping:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 9
    .line 10
    sget p1, Lcom/narvii/meisheeditor/R$id;->close_btn:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "findViewById(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/EasyButton;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->closeBtn:Lcom/narvii/widget/EasyButton;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "closeBtn"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    move-object p1, v1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    sget p1, Lcom/narvii/meisheeditor/R$id;->check_btn:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/widget/EasyButton;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->checkBtn:Lcom/narvii/widget/EasyButton;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    const-string p1, "checkBtn"

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 56
    move-object p1, v1

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    sget p1, Lcom/narvii/meisheeditor/R$id;->play_surface:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 73
    .line 74
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenHeight(Landroid/content/Context;)I

    .line 78
    move-result p1

    .line 79
    .line 80
    sget v2, Lcom/narvii/meisheeditor/R$id;->record_surface:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    check-cast v2, Landroid/view/SurfaceView;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 92
    .line 93
    const-string v3, "recordSurfaceView"

    .line 94
    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 99
    move-object v2, v1

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    const-string v4, "getInstance(...)"

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    iput-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 122
    .line 123
    const-string v4, "player"

    .line 124
    .line 125
    if-nez v2, :cond_3

    .line 126
    .line 127
    .line 128
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 129
    move-object v2, v1

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {v2, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->preparePlayer()V

    .line 136
    .line 137
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 138
    .line 139
    const-string v5, "playingSurfaceView"

    .line 140
    .line 141
    if-nez v2, :cond_4

    .line 142
    .line 143
    .line 144
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 145
    move-object v2, v1

    .line 146
    .line 147
    :cond_4
    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 148
    .line 149
    if-nez v6, :cond_5

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 153
    move-object v6, v1

    .line 154
    :cond_5
    const/4 v4, 0x0

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v6, v4}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->initViews(Lcom/narvii/nvplayer/INVPlayer;I)V

    .line 158
    .line 159
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 160
    .line 161
    if-nez v2, :cond_6

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 165
    move-object v2, v1

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    const v4, 0x3e1b1d01

    .line 173
    int-to-float p1, p1

    .line 174
    mul-float/2addr p1, v4

    .line 175
    float-to-int p1, p1

    .line 176
    .line 177
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    int-to-float p1, p1

    .line 179
    .line 180
    const/high16 v4, 0x3f100000    # 0.5625f

    .line 181
    div-float/2addr p1, v4

    .line 182
    float-to-int p1, p1

    .line 183
    .line 184
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    .line 186
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 187
    .line 188
    if-nez p1, :cond_7

    .line 189
    .line 190
    .line 191
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 192
    move-object p1, v1

    .line 193
    .line 194
    .line 195
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    sget p1, Lcom/narvii/meisheeditor/R$id;->record_view:I

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    check-cast p1, Landroid/widget/FrameLayout;

    .line 207
    .line 208
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordView:Landroid/widget/FrameLayout;

    .line 209
    .line 210
    sget p1, Lcom/narvii/meisheeditor/R$id;->play_btn:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    check-cast p1, Landroid/widget/Button;

    .line 220
    .line 221
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    .line 222
    .line 223
    if-nez p1, :cond_8

    .line 224
    .line 225
    const-string p1, "playBtn"

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 229
    move-object p1, v1

    .line 230
    .line 231
    .line 232
    :cond_8
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    sget p1, Lcom/narvii/meisheeditor/R$id;->top_view:I

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 241
    .line 242
    const-string v2, "#2A2A2A"

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 246
    move-result v2

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    .line 251
    sget p1, Lcom/narvii/meisheeditor/R$id;->bottom_view:I

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 258
    .line 259
    const-string v2, "#323335"

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 263
    move-result v2

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 267
    .line 268
    sget p1, Lcom/narvii/meisheeditor/R$id;->editor_view:I

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    check-cast p1, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 278
    .line 279
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 280
    .line 281
    const-string v2, "editorView"

    .line 282
    .line 283
    if-nez p1, :cond_9

    .line 284
    .line 285
    .line 286
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 287
    move-object p1, v1

    .line 288
    .line 289
    :cond_9
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 290
    .line 291
    if-nez v3, :cond_a

    .line 292
    .line 293
    .line 294
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 295
    move-object v3, v1

    .line 296
    .line 297
    .line 298
    :cond_a
    invoke-virtual {p1, v3}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setSimpleGlView(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;)V

    .line 299
    .line 300
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 301
    .line 302
    if-nez p1, :cond_b

    .line 303
    .line 304
    .line 305
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 306
    move-object p1, v1

    .line 307
    .line 308
    .line 309
    :cond_b
    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setEditorViewTouchListener(Lcom/narvii/editor/cropping/dynamic/SimpleEditorView$IEditorViewTouchListener;)V

    .line 310
    .line 311
    sget p1, Lcom/narvii/meisheeditor/R$id;->time_view:I

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 315
    move-result-object p1

    .line 316
    .line 317
    .line 318
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    check-cast p1, Landroid/widget/TextView;

    .line 321
    .line 322
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timeView:Landroid/widget/TextView;

    .line 323
    .line 324
    sget p1, Lcom/narvii/meisheeditor/R$id;->total_time_view:I

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 328
    move-result-object p1

    .line 329
    .line 330
    .line 331
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    check-cast p1, Landroid/widget/TextView;

    .line 334
    .line 335
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->totalTimeView:Landroid/widget/TextView;

    .line 336
    .line 337
    new-instance p1, Landroid/os/Handler;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 341
    move-result-object v2

    .line 342
    .line 343
    .line 344
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 345
    .line 346
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->handler:Landroid/os/Handler;

    .line 347
    .line 348
    sget p1, Lcom/narvii/meisheeditor/R$id;->seekbar:I

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 352
    move-result-object p1

    .line 353
    .line 354
    .line 355
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    check-cast p1, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 358
    .line 359
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 360
    .line 361
    if-nez p1, :cond_c

    .line 362
    .line 363
    const-string p1, "seekBar"

    .line 364
    .line 365
    .line 366
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 367
    move-object p1, v1

    .line 368
    .line 369
    .line 370
    :cond_c
    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setSeekBarChangeListener(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;)V

    .line 371
    .line 372
    sget p1, Lcom/narvii/meisheeditor/R$id;->render_record_view:I

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 376
    move-result-object p1

    .line 377
    .line 378
    .line 379
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    check-cast p1, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 382
    .line 383
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 384
    .line 385
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 389
    move-result-object v0

    .line 390
    .line 391
    .line 392
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 393
    .line 394
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 395
    const/4 v0, 0x1

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 399
    .line 400
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 401
    .line 402
    if-nez p1, :cond_d

    .line 403
    .line 404
    const-string p1, "mProgressDialog"

    .line 405
    .line 406
    .line 407
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 408
    goto :goto_0

    .line 409
    :cond_d
    move-object v1, p1

    .line 410
    .line 411
    :goto_0
    new-instance p1, Lcom/narvii/editor/cropping/dynamic/a;

    .line 412
    .line 413
    .line 414
    invoke-direct {p1}, Lcom/narvii/editor/cropping/dynamic/a;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 418
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timer:Ljava/util/Timer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    const-string v2, "player"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    move-object v0, v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->reset()V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->release()V

    .line 35
    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->b(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "player"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 18
    return-void
.end method

.method public synthetic onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->c(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    if-ne p2, p1, :cond_6

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playerState:I

    .line 6
    .line 7
    if-eq p1, p2, :cond_6

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playBtn:Landroid/widget/Button;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "playBtn"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    move-object v0, v1

    .line 25
    .line 26
    :cond_0
    sget v2, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_play:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 32
    .line 33
    const-string v2, "editorView"

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    move-object v0, v1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setShowOuterRect(Z)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 45
    .line 46
    const-string v0, "renderRecordView"

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    move-object p1, v1

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->getMaxPoint()I

    .line 56
    move-result p1

    .line 57
    .line 58
    if-gtz p1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 66
    move-object p1, v1

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getEditorViewMoved()Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    :cond_4
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    move-object v1, p1

    .line 82
    .line 83
    :goto_0
    const/16 p1, 0x63

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->addPoint(I)V

    .line 87
    .line 88
    :cond_6
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playerState:I

    .line 89
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->e(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public synthetic onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->f(Lcom/narvii/nvplayer/IVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;IZ)V
    .locals 3
    .param p1    # Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "seekBar"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 8
    .line 9
    if-nez p2, :cond_c

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 12
    .line 13
    const-string p3, "player"

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    move-object p2, v0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    .line 27
    const/high16 v1, 0x42c80000    # 100.0f

    .line 28
    div-float/2addr p1, v1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 36
    move-object v1, v0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 40
    move-result-wide v1

    .line 41
    long-to-float v1, v1

    .line 42
    mul-float/2addr p1, v1

    .line 43
    float-to-long v1, p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 54
    move-object p1, v0

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-nez p1, :cond_c

    .line 61
    const/4 p1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 72
    move-object p1, v0

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    .line 76
    move-result-wide p1

    .line 77
    .line 78
    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 79
    int-to-long v1, p3

    .line 80
    mul-long/2addr p1, v1

    .line 81
    long-to-float p1, p1

    .line 82
    .line 83
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 84
    div-float/2addr p1, p2

    .line 85
    float-to-int p1, p1

    .line 86
    .line 87
    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrames:I

    .line 88
    .line 89
    if-gt p1, p2, :cond_c

    .line 90
    .line 91
    if-gez p1, :cond_4

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :cond_4
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 95
    .line 96
    const-string p3, "videoEditorPosArray"

    .line 97
    .line 98
    if-nez p2, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 102
    move-object p2, v0

    .line 103
    .line 104
    :cond_5
    aget p2, p2, p1

    .line 105
    const/4 v1, 0x0

    .line 106
    .line 107
    cmpl-float p2, p2, v1

    .line 108
    .line 109
    const-string v1, "recordSurfaceView"

    .line 110
    .line 111
    const-string v2, "editorView"

    .line 112
    .line 113
    if-ltz p2, :cond_9

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 116
    .line 117
    if-nez p2, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 121
    move-object p2, v0

    .line 122
    .line 123
    :cond_6
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoEditorPosArray:[F

    .line 124
    .line 125
    if-nez v2, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 129
    move-object v2, v0

    .line 130
    .line 131
    :cond_7
    aget p1, v2, p1

    .line 132
    .line 133
    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 134
    .line 135
    if-nez p3, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 139
    goto :goto_0

    .line 140
    :cond_8
    move-object v0, p3

    .line 141
    .line 142
    .line 143
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 144
    move-result p3

    .line 145
    int-to-float p3, p3

    .line 146
    mul-float/2addr p1, p3

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->moveInnerRectToPos(F)V

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_9
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 153
    .line 154
    if-nez p1, :cond_a

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 158
    move-object p1, v0

    .line 159
    .line 160
    :cond_a
    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastLeftRatio:F

    .line 161
    .line 162
    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    .line 163
    .line 164
    if-nez p3, :cond_b

    .line 165
    .line 166
    .line 167
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 168
    goto :goto_1

    .line 169
    :cond_b
    move-object v0, p3

    .line 170
    .line 171
    .line 172
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 173
    move-result p3

    .line 174
    int-to-float p3, p3

    .line 175
    mul-float/2addr p2, p3

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->moveInnerRectToPos(F)V

    .line 179
    nop

    .line 180
    :cond_c
    :goto_2
    return-void
.end method

.method public synthetic onRenderFirstFrameInterval(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->g(Lcom/narvii/nvplayer/IVideoListener;J)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceRendered:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "playingSurfaceView"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    move-object v0, v2

    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderAnotherSurface(Landroid/view/Surface;)V

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceRendered:Z

    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timerStarted:Z

    .line 30
    .line 31
    if-nez v0, :cond_7

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timerStarted:Z

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->timer:Ljava/util/Timer;

    .line 39
    .line 40
    new-instance v4, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    const-wide/16 v7, 0x64

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 51
    .line 52
    const-string v0, "trim_start"

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    .line 57
    move-result v3

    .line 58
    int-to-float v3, v3

    .line 59
    .line 60
    const/high16 v4, 0x42c80000    # 100.0f

    .line 61
    mul-float/2addr v3, v4

    .line 62
    .line 63
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 64
    .line 65
    const-string v6, "player"

    .line 66
    .line 67
    if-nez v5, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 71
    move-object v5, v2

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 75
    move-result-wide v7

    .line 76
    long-to-float v5, v7

    .line 77
    div-float/2addr v3, v5

    .line 78
    float-to-int v3, v3

    .line 79
    .line 80
    iput v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    .line 81
    .line 82
    const-string v3, "trim_end"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    .line 86
    move-result v3

    .line 87
    int-to-float v3, v3

    .line 88
    mul-float/2addr v3, v4

    .line 89
    .line 90
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 91
    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 96
    move-object v4, v2

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 100
    move-result-wide v4

    .line 101
    long-to-float v4, v4

    .line 102
    div-float/2addr v3, v4

    .line 103
    float-to-int v3, v3

    .line 104
    .line 105
    iput v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimEnd:I

    .line 106
    .line 107
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 108
    .line 109
    const-string v4, "seekBar"

    .line 110
    .line 111
    if-nez v3, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 115
    move-object v3, v2

    .line 116
    .line 117
    :cond_4
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    .line 118
    .line 119
    iget v7, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimEnd:I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v5, v7}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setTrim(II)V

    .line 123
    .line 124
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    .line 125
    .line 126
    if-lez v3, :cond_7

    .line 127
    .line 128
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 129
    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    .line 133
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 134
    move-object v3, v2

    .line 135
    .line 136
    .line 137
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    .line 138
    move-result v0

    .line 139
    int-to-long v5, v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v5, v6}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 145
    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 150
    goto :goto_0

    .line 151
    :cond_6
    move-object v2, v0

    .line 152
    .line 153
    :goto_0
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->trimStart:I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 160
    :cond_7
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->getVideoFrameRate()V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "playingSurfaceView"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setPlaying(Z)V

    .line 25
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V
    .locals 1
    .param p1    # Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "seekBar"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 12
    move-result p1

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBeginProgress:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p1, "player"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 28
    return-void
.end method

.method public onStopTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V
    .locals 7
    .param p1    # Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "seekBar"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBarIsDragging:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    const-string v3, "player"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    move-object v1, v2

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    .line 26
    const/high16 v5, 0x42c80000    # 100.0f

    .line 27
    div-float/2addr v4, v5

    .line 28
    .line 29
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 30
    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 35
    move-object v5, v2

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDuration()J

    .line 39
    move-result-wide v5

    .line 40
    long-to-float v5, v5

    .line 41
    mul-float/2addr v4, v5

    .line 42
    float-to-long v4, v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4, v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    move-object v1, v2

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    const/4 v1, 0x0

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->setTime(Z)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 67
    move-result p1

    .line 68
    .line 69
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBeginProgress:I

    .line 70
    .line 71
    if-ge p1, v1, :cond_4

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    .line 74
    .line 75
    :cond_4
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 76
    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_5
    move-object v2, p1

    .line 83
    .line 84
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 88
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->i(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onTouchDown()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "renderRecordView"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object v0, v1

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, "seekBar"

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->resetPoint(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->resetFramePos()V

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordedDataNeedToReset:Z

    .line 40
    :cond_2
    return-void
.end method

.method public onTouchUp()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "editorView"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getInnerRectF()Landroid/graphics/RectF;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    .line 20
    .line 21
    sub-float v2, v0, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 25
    move-result v2

    .line 26
    .line 27
    const/high16 v3, 0x40a00000    # 5.0f

    .line 28
    .line 29
    cmpl-float v2, v2, v3

    .line 30
    .line 31
    if-lez v2, :cond_5

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->renderRecordView:Lcom/narvii/editor/cropping/dynamic/RenderRecordView;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const-string v2, "renderRecordView"

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    move-object v2, v1

    .line 42
    .line 43
    :cond_1
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 44
    .line 45
    const-string v4, "seekBar"

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 51
    move-object v3, v1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 55
    move-result v3

    .line 56
    .line 57
    const/16 v5, 0x64

    .line 58
    .line 59
    if-ge v3, v5, :cond_4

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->seekBar:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object v1, v3

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->getProgress()I

    .line 72
    move-result v1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_4
    const/16 v1, 0x63

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {v2, v1}, Lcom/narvii/editor/cropping/dynamic/RenderRecordView;->addPoint(I)V

    .line 79
    .line 80
    :cond_5
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 81
    .line 82
    if-nez v1, :cond_6

    .line 83
    const/4 v1, 0x0

    .line 84
    const/4 v2, 0x1

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos(ZZ)V

    .line 88
    .line 89
    :cond_6
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->lastVideoEditorLeft:F

    .line 90
    return-void
.end method

.method public synthetic onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->j(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 6

    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    const-string p3, "playingSurfaceView"

    .line 2
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p3, p4

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setVideoSize(II)V

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoWidth:I

    const-string v0, "editorView"

    if-ne p1, p3, :cond_2

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoHeight:I

    if-ne p2, p3, :cond_2

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-nez p1, :cond_1

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p4, p1

    :goto_0
    invoke-virtual {p4}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setVideoEditorRect()V

    return-void

    :cond_2
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoWidth:I

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoHeight:I

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    const p2, 0x3f128f5c    # 0.5725f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->supportDynamicCropping:Z

    :cond_3
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    const-string p3, "recordSurfaceView"

    if-nez p2, :cond_4

    .line 5
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p2, p4

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_5

    .line 6
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v1, p4

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 7
    sget-object v3, Lcom/narvii/editor/cropping/dynamic/Utils;->Companion:Lcom/narvii/editor/cropping/dynamic/Utils$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    if-le v2, v4, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x28

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int p1, v1

    .line 9
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 10
    :cond_6
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordSurfaceView:Landroid/view/SurfaceView;

    if-nez p1, :cond_7

    .line 12
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p1, p4

    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordView:Landroid/widget/FrameLayout;

    const-string p3, "recordView"

    if-nez p1, :cond_8

    .line 13
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p1, p4

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 14
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    const v2, 0x3f947ae1    # 1.16f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    invoke-virtual {v3, p0}, Lcom/narvii/editor/cropping/dynamic/Utils$Companion;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->recordView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_9

    .line 16
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v1, p4

    :cond_9
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-nez p3, :cond_a

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p3, p4

    .line 18
    :cond_a
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    .line 19
    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    .line 20
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    .line 21
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    .line 22
    invoke-virtual {p3, v1, v2, v3, p1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->setSize(FFFF)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->editorView:Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    if-nez p1, :cond_b

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object p4, p1

    :goto_2
    new-instance p1, Lcom/narvii/editor/cropping/dynamic/b;

    invoke-direct {p1, p0, p2}, Lcom/narvii/editor/cropping/dynamic/b;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic onVideoSupportLowResVideo(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->l(Lcom/narvii/nvplayer/IVideoListener;Z)V

    return-void
.end method

.method public final setDuration()V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->time:J

    .line 11
    sub-long/2addr v0, v2

    .line 12
    long-to-float v0, v0

    .line 13
    .line 14
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 15
    div-float/2addr v0, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    :cond_0
    return-void
.end method

.method public final setOffscreenProgress(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    const-string v1, "mProgressDialog"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    move-object v0, v2

    .line 26
    .line 27
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const/16 v4, 0x25

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 46
    .line 47
    const/16 v0, 0x64

    .line 48
    .line 49
    if-lt p1, v0, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->mProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 57
    move-object p1, v2

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 61
    .line 62
    new-instance p1, Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 66
    .line 67
    const-string v0, "success"

    .line 68
    const/4 v1, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->destPath:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const-string v0, "destPath"

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move-object v2, v0

    .line 83
    .line 84
    :goto_0
    const-string v0, "result"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/4 v0, -0x1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 95
    :cond_4
    return-void
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->m(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "playingSurfaceView"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->anotherSurfaceChanged(II)V

    .line 19
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "playingSurfaceView"

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setGlSurfaceDoFrameListener(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;)V

    .line 25
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 8
    .line 9
    const-string v0, "playingSurfaceView"

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object p1, v1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->stopRenderAnotherSurface()V

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceRendered:Z

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurface:Landroid/view/Surface;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->playingSurfaceView:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    move-object p1, v1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1, v1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->setGlSurfaceDoFrameListener(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;)V

    .line 36
    return-void
.end method

.method public surfaceDoFrame()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->isPlaying:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->videoFrameRate:I

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-string v0, "player"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    move-object v0, v1

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v3, v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->addCurrentFramePos$default(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;ZZILjava/lang/Object;)V

    .line 35
    :cond_3
    return-void
.end method
