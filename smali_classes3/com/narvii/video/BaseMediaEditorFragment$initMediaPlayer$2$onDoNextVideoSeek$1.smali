.class final Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->onDoNextVideoSeek()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMediaEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMediaEditorFragment.kt\ncom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1\n*L\n1#1,598:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 405
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v2, v2, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 406
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 407
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getDragging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v1, 0x2

    invoke-static {v0, v4, v4, v1, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 411
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v2, v2, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const-string v5, "seekToMillis"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v4, v0, v1, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->seekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
