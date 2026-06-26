.class public Lcom/narvii/services/MediaPreloadServiceProvider;
.super Ljava/lang/Object;
.source "MediaPreloadServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/video/MediaPreloadService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/video/MediaPreloadService;
    .locals 4

    .line 13
    new-instance v0, Lcom/narvii/video/MediaPreloadService;

    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "media-preload"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/narvii/video/MediaPreloadService;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/MediaPreloadServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/video/MediaPreloadService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPreloadServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPreloadServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPreloadServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V
    .locals 0

    .line 19
    :try_start_0
    invoke-virtual {p2}, Lcom/narvii/video/EmbedHttpServer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "fail to start media proxy server"

    .line 21
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPreloadServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V
    .locals 3

    const/16 p1, 0xc

    const-wide/32 v0, 0x5265c00

    const/4 v2, 0x1

    .line 37
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPreloadServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/video/MediaPreloadService;)V

    return-void
.end method
