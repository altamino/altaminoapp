.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;
.super Ljava/lang/Object;
.source "NVExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBandwidthSample(IJJ)V
    .locals 0

    .line 132
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const-wide/16 p2, 0x3e8

    div-long/2addr p4, p2

    long-to-int p2, p4

    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$002(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;I)I

    .line 134
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$000(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "kbps, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    invoke-virtual {p3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->preloadStrategyDebugInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPreloadStrategyChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
