.class final Lcom/narvii/video/SharedMediaPlayer$6;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 244
    sget-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 245
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 246
    sput-boolean v1, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x32

    .line 248
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
