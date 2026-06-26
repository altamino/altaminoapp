.class final Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;
.super Ljava/lang/Object;
.source "ExoPreloadUtil.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $media:Lcom/narvii/model/Media;

.field final synthetic $player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$media:Lcom/narvii/model/Media;

    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iput-object p3, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$media:Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$media:Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$media:Lcom/narvii/model/Media;

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->access$prepareCatch(Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    return-void
.end method
