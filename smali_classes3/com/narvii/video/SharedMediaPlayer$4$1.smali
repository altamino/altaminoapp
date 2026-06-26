.class Lcom/narvii/video/SharedMediaPlayer$4$1;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SharedMediaPlayer$4;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SharedMediaPlayer$4;

.field final synthetic val$mp:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Lcom/narvii/video/SharedMediaPlayer$4;Ltv/danmaku/ijk/media/player/IMediaPlayer;J)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->this$0:Lcom/narvii/video/SharedMediaPlayer$4;

    iput-object p2, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$mp:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iput-wide p3, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$mp:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$pos:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 199
    iget-object v0, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$mp:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 200
    iget-object v0, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$mp:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 201
    iget-object v0, p0, Lcom/narvii/video/SharedMediaPlayer$4$1;->val$mp:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    :cond_0
    return-void
.end method
