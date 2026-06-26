.class final Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;
.super Ljava/lang/Object;
.source "MeiShePreviewPlayer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/player/MeiShePreviewPlayer;->onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/player/MeiShePreviewPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/editor/player/MeiShePreviewPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;->this$0:Lcom/narvii/editor/player/MeiShePreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;->this$0:Lcom/narvii/editor/player/MeiShePreviewPlayer;

    invoke-static {v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->access$getOnVideoPrepared$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "onPlaybackPreloadingCompletion >>> "

    .line 1116
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;->this$0:Lcom/narvii/editor/player/MeiShePreviewPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->access$setOnVideoPrepared$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;Z)V

    .line 1118
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;->this$0:Lcom/narvii/editor/player/MeiShePreviewPlayer;

    invoke-static {v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->access$getMediaEventListeners$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1119
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoPrepared()V

    .line 1120
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onAudioTrackAllPrepared()V

    goto :goto_0

    :cond_0
    return-void
.end method
