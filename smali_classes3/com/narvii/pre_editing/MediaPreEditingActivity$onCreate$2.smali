.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingEnd()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    sget v1, Lcom/narvii/mediaeditor/R$id;->video_progress_view:I

    invoke-virtual {v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    const-string v1, "video_progress_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBufferingStart()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    sget v1, Lcom/narvii/mediaeditor/R$id;->video_progress_view:I

    invoke-virtual {v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    const-string v1, "video_progress_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onComplete()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterStartPosition()J

    move-result-wide v1

    .line 118
    iget-object v3, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterEndPosition()J

    move-result-wide v3

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    .line 117
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->onFrameLocatedDuringMove(JJZZ)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayPauseStateChanged(Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$updatePlayState(Lcom/narvii/pre_editing/MediaPreEditingActivity;Z)V

    return-void
.end method

.method public onPrepared()V
    .locals 15

    .line 98
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 99
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getThumbnailVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->getDuration()J

    move-result-wide v3

    .line 103
    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/PreEditFrameRetriever;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->initRetriever(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/32 v1, 0xea60

    const-string v5, "maxOutputTime"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 106
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    const-string v7, "minOutputTime"

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 107
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v9, "trimStartTime"

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 108
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "trimEndTime"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 110
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    move-result-object v2

    .line 111
    iget-object v13, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v13}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/PreEditFrameRetriever;

    move-result-object v14

    .line 110
    invoke-virtual/range {v2 .. v14}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->updatePlaybackTime(J)V

    return-void
.end method
