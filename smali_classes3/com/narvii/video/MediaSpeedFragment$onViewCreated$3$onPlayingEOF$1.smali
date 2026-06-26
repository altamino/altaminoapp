.class final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1;
.super Ljava/lang/Object;
.source "MediaSpeedFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->onPlayingEOF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1;->this$0:Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1;->this$0:Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;

    iget-object v0, v0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1;->this$0:Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;

    iget-object v0, v0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    return-void
.end method
