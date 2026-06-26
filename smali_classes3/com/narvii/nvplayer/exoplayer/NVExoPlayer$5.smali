.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;
.super Ljava/lang/Object;
.source "NVExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;
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

    .line 833
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheIgnored(I)V
    .locals 0

    return-void
.end method

.method public onCachedBytesRead(JJ)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$900(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener;->onCachedBytesRead(JJ)V

    .line 838
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->access$902(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Z)Z

    :cond_0
    return-void
.end method
