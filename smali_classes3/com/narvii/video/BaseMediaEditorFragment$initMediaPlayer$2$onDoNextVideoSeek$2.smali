.class final Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;
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


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 418
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    iget-object v0, v0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
