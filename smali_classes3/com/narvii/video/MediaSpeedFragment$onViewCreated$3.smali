.class public final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "MediaSpeedFragment.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IPlayingEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSpeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSpeedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayingEOF()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/MediaSpeedFragment;->access$setHasVideoCompleted$p(Lcom/narvii/video/MediaSpeedFragment;Z)V

    .line 124
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 125
    new-instance v0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1;-><init>(Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v0, p3, p4}, Lcom/narvii/video/MediaSpeedFragment;->access$setVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;J)V

    .line 117
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$isSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v8}, Lcom/narvii/video/MediaSpeedFragment;->updateTime$default(Lcom/narvii/video/MediaSpeedFragment;JJZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPlayingStopped()V
    .locals 0

    return-void
.end method
