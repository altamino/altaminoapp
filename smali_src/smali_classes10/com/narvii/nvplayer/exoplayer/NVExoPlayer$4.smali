.class Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheDataSource$EventListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCacheIgnored(I)V
    .locals 0

    return-void
.end method

.method public onCachedBytesRead(JJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->r(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener;->onCachedBytesRead(JJ)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;->this$0:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->x(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Z)V

    .line 32
    :cond_0
    return-void
.end method
