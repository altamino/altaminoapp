.class public final synthetic Lcom/narvii/nvplayer/exoplayer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/model/Media;

.field public final synthetic b:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/a;->a:Lcom/narvii/model/Media;

    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/a;->b:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iput-object p3, p0, Lcom/narvii/nvplayer/exoplayer/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/a;->a:Lcom/narvii/model/Media;

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/a;->b:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/a;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->a(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    return-void
.end method
