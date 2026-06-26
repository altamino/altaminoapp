.class final Lcom/narvii/video/SharedMediaPlayer$1;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 133
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 136
    :cond_0
    sget-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "videoplayer"

    const-string v1, "onPrepared()"

    .line 137
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    instance-of v0, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-nez v0, :cond_2

    .line 142
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    :cond_2
    const/4 v0, 0x3

    .line 144
    sput v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    .line 145
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_3

    .line 146
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_3
    return-void
.end method
