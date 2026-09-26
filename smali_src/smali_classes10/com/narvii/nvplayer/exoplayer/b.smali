.class public final synthetic Lcom/narvii/nvplayer/exoplayer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;


# instance fields
.field public final synthetic a:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/b;->a:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    return-void
.end method


# virtual methods
.method public final onBandwidthSample(IJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/b;->a:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->j(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;IJJ)V

    return-void
.end method
