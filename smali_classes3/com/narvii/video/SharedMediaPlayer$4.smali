.class final Lcom/narvii/video/SharedMediaPlayer$4;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/SharedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .line 186
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 189
    :cond_0
    sget-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "videoplayer"

    const-string v1, "onCompletion()"

    .line 190
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    instance-of v0, p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 195
    new-instance v2, Lcom/narvii/video/SharedMediaPlayer$4$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/narvii/video/SharedMediaPlayer$4$1;-><init>(Lcom/narvii/video/SharedMediaPlayer$4;Ltv/danmaku/ijk/media/player/IMediaPlayer;J)V

    const-wide/16 v0, 0x32

    invoke-static {v2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    .line 206
    sput v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    .line 207
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_3

    .line 208
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_3
    :goto_0
    return-void
.end method
