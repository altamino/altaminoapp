.class final Lcom/narvii/video/widget/MediaTimeLineComponent$1;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTimeLineComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTimeLineComponent.kt\ncom/narvii/video/widget/MediaTimeLineComponent$1\n*L\n1#1,1175:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 161
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaPlayer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 162
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    const/16 v2, 0x65

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 163
    invoke-static {v0, v4, v3, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->getCurrentAudioPositionInTimeline$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v5

    :goto_1
    int-to-long v5, v5

    if-eqz v1, :cond_2

    .line 164
    invoke-static {v0, v4, v3, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->getCurrentAudioRawPositionInClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoRawPositionInClip()I

    move-result v0

    :goto_2
    int-to-long v0, v0

    .line 165
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getInterceptedByController$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurPlaybackTimeBase$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto/16 :goto_3

    .line 169
    :cond_3
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7, v5, v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$setCurPlaybackTimeBase$p(Lcom/narvii/video/widget/MediaTimeLineComponent;J)V

    .line 170
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7, v5, v6, v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onPlayerTick(JJ)V

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1, v4, v3, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineScrolledOffsetChanged(I)V

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, v5, v0

    .line 173
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSeeking()Z

    move-result v2

    if-nez v2, :cond_6

    .line 174
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;

    move-result-object v2

    if-eqz v2, :cond_6

    long-to-float v7, v0

    iget-object v8, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v8}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/narvii/video/widget/MediaRetrieveController;->updatePointerPosition(F)V

    .line 176
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curPlaybackTimeBase = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurPlaybackTimeBase$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "   timeOffsetInController / timeLineItemFrameLengthInMs = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenesBackgroundMusicFragment"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v5, v0

    if-ltz v2, :cond_9

    .line 178
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 185
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/4 v3, 0x4

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V

    .line 195
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMainHandler$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getPlaybackTimer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
