.class public Lcom/narvii/services/MediaLoaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/media/MediaLoader;",
        ">;"
    }
.end annotation


# instance fields
.field dir:Ljava/io/File;

.field maxSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaLoader;
    .locals 8

    iget-object v0, p0, Lcom/narvii/services/MediaLoaderProvider;->dir:Ljava/io/File;

    if-nez v0, :cond_3

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string v3, "audio"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/narvii/services/MediaLoaderProvider;->dir:Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const-wide/32 v2, 0x400000

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x3

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v0

    mul-long/2addr v0, v6

    div-long/2addr v0, v4

    const-wide/32 v4, 0x1000000

    .line 8
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/narvii/services/MediaLoaderProvider;->maxSize:I

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/StorageUtils;->getAvailableExternalMemorySize(Landroid/content/Context;)J

    move-result-wide v0

    mul-long/2addr v0, v6

    div-long/2addr v0, v4

    const-wide/32 v4, 0x2000000

    .line 10
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/narvii/services/MediaLoaderProvider;->maxSize:I

    .line 11
    :cond_3
    :goto_2
    new-instance v0, Lcom/narvii/media/MediaLoader;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/services/MediaLoaderProvider;->dir:Ljava/io/File;

    invoke-direct {v0, p1, v1}, Lcom/narvii/media/MediaLoader;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/MediaLoaderProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaLoader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/MediaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaLoaderProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V
    .locals 4

    iget p1, p0, Lcom/narvii/services/MediaLoaderProvider;->maxSize:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/media/MediaLoader;->trimAndFlush(IJ)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/media/MediaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaLoaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/MediaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaLoaderProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/MediaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaLoaderProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/MediaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaLoaderProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaLoader;)V

    return-void
.end method
