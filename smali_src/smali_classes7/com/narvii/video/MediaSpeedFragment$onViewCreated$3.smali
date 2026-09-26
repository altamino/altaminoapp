.class public final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->onPlayingEOF$lambda$0(Lcom/narvii/video/MediaSpeedFragment;)V

    return-void
.end method

.method private static final onPlayingEOF$lambda$0(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v2, v3, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public onPlayingEOF()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/video/MediaSpeedFragment;->access$setHasVideoCompleted$p(Lcom/narvii/video/MediaSpeedFragment;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/video/f0;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/narvii/video/f0;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    .line 20
    .line 21
    const-wide/16 v2, 0x32

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 25
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p3, p4}, Lcom/narvii/video/MediaSpeedFragment;->access$setVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;J)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$isSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x0

    .line 19
    move-wide v2, p1

    .line 20
    move-wide v4, p3

    .line 21
    .line 22
    .line 23
    invoke-static/range {v1 .. v8}, Lcom/narvii/video/MediaSpeedFragment;->updateTime$default(Lcom/narvii/video/MediaSpeedFragment;JJZILjava/lang/Object;)V

    .line 24
    :cond_0
    return-void
.end method

.method public onPlayingStopped()V
    .locals 0

    return-void
.end method
