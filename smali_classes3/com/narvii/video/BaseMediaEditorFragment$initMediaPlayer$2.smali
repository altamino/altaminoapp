.class public final Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;
.super Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;
.source "BaseMediaEditorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMediaEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMediaEditorFragment.kt\ncom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2\n*L\n1#1,598:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-direct {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTrackAllPrepared()V
    .locals 5

    .line 440
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onAudioTrackAllPrepared()V

    .line 441
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->access$setHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    .line 445
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, v4, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, v1, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDoNextVideoSeek()V
    .locals 3

    .line 399
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onDoNextVideoSeek()V

    .line 400
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 402
    new-instance v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 416
    :cond_1
    new-instance v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;-><init>(Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    .line 423
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    sget v2, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {v0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 430
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->access$setMute$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    goto :goto_2

    .line 425
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pauseWhenNextSeek()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pause()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onVideoError(Ljava/lang/Exception;)V
    .locals 3

    .line 435
    invoke-super {p0, p1}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoError(Ljava/lang/Exception;)V

    .line 436
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public onVideoPrepared()V
    .locals 5

    .line 382
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoPrepared()V

    .line 383
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->access$setHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    .line 384
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->innerOnVideoPrepared()V

    .line 388
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->access$getHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, v4, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, v1, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onVideoWindowIndexChanged(IZ)V
    .locals 1

    .line 453
    invoke-super {p0, p1, p2}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoWindowIndexChanged(IZ)V

    .line 454
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onActiveVideoChanged(IZ)V

    return-void
.end method
