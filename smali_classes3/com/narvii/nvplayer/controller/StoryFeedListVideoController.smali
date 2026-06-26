.class public Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;
.super Ljava/lang/Object;
.source "StoryFeedListVideoController.java"

# interfaces
.implements Lcom/narvii/nvplayerview/controller/IVideoController;


# instance fields
.field player:Lcom/narvii/nvplayer/INVPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p3, p0, Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;->player:Lcom/narvii/nvplayer/INVPlayer;

    return-void
.end method


# virtual methods
.method public synthetic closeVoice()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$closeVoice(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic destroy()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$destroy(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b0665

    return v0
.end method

.method public synthetic getProgress()I
    .locals 1

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$getProgress(Lcom/narvii/nvplayerview/controller/IVideoController;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;->player:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;->player:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public synthetic onOrientationChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onOrientationChanged(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onPlayerError(Lcom/narvii/nvplayerview/controller/IVideoController;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public synthetic onPressBack()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onPressBack(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onRenderedFirstFrame(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic openVoice()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$openVoice(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic pause()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$pause(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;->player:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    return-void
.end method

.method public synthetic setAnimating(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setAnimating(Lcom/narvii/nvplayerview/controller/IVideoController;Z)V

    return-void
.end method

.method public synthetic setCurrentTime()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setCurrentTime(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setOptionMenu()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setOptionMenu(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setProgress(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setProgress(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public synthetic setTotalTime()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setTotalTime(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setUIVisibility(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setUIVisibility(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public synthetic start()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$start(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method
