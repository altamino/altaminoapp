.class final Lcom/narvii/video/SharedMediaPlayer$3;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 7

    .line 172
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 175
    :cond_0
    sput p2, Lcom/narvii/video/SharedMediaPlayer;->gVideoWidth:I

    .line 176
    sput p3, Lcom/narvii/video/SharedMediaPlayer;->gVideoHeight:I

    .line 177
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v1, :cond_1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 178
    invoke-interface/range {v1 .. v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    :cond_1
    return-void
.end method
