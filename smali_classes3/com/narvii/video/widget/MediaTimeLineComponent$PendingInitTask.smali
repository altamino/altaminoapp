.class final Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingInitTask"
.end annotation


# instance fields
.field private final borderColor:I

.field private final callback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

.field private final cutterInitIntervalInMs:I

.field private final dataType:I

.field private final frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private final isForAudioWave:Z

.field private final itemFrameLengthInMs:F

.field private final maxOutputLengthInMs:I

.field private final mediaClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private final minOutputLengthInMs:Ljava/lang/Integer;

.field private final resetTimeLine:Z

.field private final showAdditionalBorderAtTail:Z

.field private final showFrameBorder:Z

.field private final showRoundCorner:Z

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field private final timeLineType:I


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;",
            "Lcom/narvii/video/interfaces/IPreviewPlayer;",
            "Lcom/narvii/video/services/FrameRetrieverManager;",
            "I",
            "Ljava/lang/Integer;",
            "FZIZZI",
            "Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    const-string v2, "mediaClipList"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    .line 1164
    iput-object v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p2

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->dataType:I

    move v2, p3

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->timeLineType:I

    move v2, p4

    iput-boolean v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->isForAudioWave:Z

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->mediaClipList:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    move v1, p8

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->maxOutputLengthInMs:I

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->minOutputLengthInMs:Ljava/lang/Integer;

    move v1, p10

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->itemFrameLengthInMs:F

    move v1, p11

    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showFrameBorder:Z

    move v1, p12

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->borderColor:I

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showRoundCorner:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showAdditionalBorderAtTail:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->cutterInitIntervalInMs:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->callback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->resetTimeLine:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0xbb8

    .line 1165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    move/from16 v13, p10

    :goto_2
    and-int/lit16 v1, v0, 0x200

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    move/from16 v14, p11

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const/4 v15, -0x1

    goto :goto_4

    :cond_4
    move/from16 v15, p12

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    const/16 v16, 0x0

    goto :goto_5

    :cond_5
    move/from16 v16, p13

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    move/from16 v17, p14

    :goto_6
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    const/16 v18, 0x0

    goto :goto_7

    :cond_7
    move/from16 v18, p15

    :goto_7
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_8

    move-object/from16 v19, v2

    goto :goto_8

    :cond_8
    move-object/from16 v19, p16

    :goto_8
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/16 v20, 0x0

    goto :goto_9

    :cond_9
    move/from16 v20, p17

    :goto_9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    .line 1167
    invoke-direct/range {v3 .. v20}, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)V

    return-void
.end method


# virtual methods
.method public final getBorderColor()I
    .locals 1

    .line 1166
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->borderColor:I

    return v0
.end method

.method public final getCallback()Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->callback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-object v0
.end method

.method public final getCutterInitIntervalInMs()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->cutterInitIntervalInMs:I

    return v0
.end method

.method public final getDataType()I
    .locals 1

    .line 1164
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->dataType:I

    return v0
.end method

.method public final getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object v0
.end method

.method public final getItemFrameLengthInMs()F
    .locals 1

    .line 1165
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->itemFrameLengthInMs:F

    return v0
.end method

.method public final getMaxOutputLengthInMs()I
    .locals 1

    .line 1165
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->maxOutputLengthInMs:I

    return v0
.end method

.method public final getMediaClipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;"
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->mediaClipList:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-object v0
.end method

.method public final getMinOutputLengthInMs()Ljava/lang/Integer;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->minOutputLengthInMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResetTimeLine()Z
    .locals 1

    .line 1167
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->resetTimeLine:Z

    return v0
.end method

.method public final getShowAdditionalBorderAtTail()Z
    .locals 1

    .line 1166
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showAdditionalBorderAtTail:Z

    return v0
.end method

.method public final getShowFrameBorder()Z
    .locals 1

    .line 1166
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showFrameBorder:Z

    return v0
.end method

.method public final getShowRoundCorner()Z
    .locals 1

    .line 1166
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showRoundCorner:Z

    return v0
.end method

.method public final getTimeLineType()I
    .locals 1

    .line 1164
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->timeLineType:I

    return v0
.end method

.method public final isForAudioWave()Z
    .locals 1

    .line 1164
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->isForAudioWave:Z

    return v0
.end method

.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1170
    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->dataType:I

    iget v3, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->timeLineType:I

    iget-boolean v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->isForAudioWave:Z

    iget-object v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->mediaClipList:Ljava/util/List;

    iget-object v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    iget-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 1171
    iget v8, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->maxOutputLengthInMs:I

    iget-object v9, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->minOutputLengthInMs:Ljava/lang/Integer;

    iget v10, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->itemFrameLengthInMs:F

    iget-boolean v11, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showFrameBorder:Z

    iget v12, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->borderColor:I

    iget-boolean v13, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showRoundCorner:Z

    iget-boolean v14, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->showAdditionalBorderAtTail:Z

    iget v15, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->cutterInitIntervalInMs:I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->callback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->resetTimeLine:Z

    move/from16 v17, v1

    move-object/from16 v1, v18

    .line 1170
    invoke-virtual/range {v1 .. v17}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I

    return-void
.end method
