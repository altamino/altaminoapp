.class final Lcom/narvii/video/SharedMediaPlayer$5;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    .line 217
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    .line 220
    :cond_0
    sget-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo(), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "videoplayer"

    invoke-static {v2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x2be

    const-wide/16 v2, 0x32

    if-ne p2, v0, :cond_2

    .line 223
    sget-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    if-nez v0, :cond_2

    .line 224
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$100()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_3

    .line 226
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 228
    sput-boolean v1, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_5

    .line 229
    sget-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    .line 230
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$100()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 233
    :cond_5
    :goto_0
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_6

    .line 234
    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
