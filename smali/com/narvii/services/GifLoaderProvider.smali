.class public Lcom/narvii/services/GifLoaderProvider;
.super Ljava/lang/Object;
.source "GifLoaderProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/drawables/gif/GifLoader;",
        ">;"
    }
.end annotation


# static fields
.field static final TTL:J = 0xa4cb800L


# instance fields
.field dir:Ljava/io/File;

.field maxSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/drawables/gif/GifLoader;
    .locals 9

    .line 16
    iget-object v0, p0, Lcom/narvii/services/GifLoaderProvider;->dir:Ljava/io/File;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 18
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x1

    .line 23
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "gif"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/narvii/services/GifLoaderProvider;->dir:Ljava/io/File;

    const-wide/32 v1, 0x800000

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0xa

    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v7

    mul-long v7, v7, v5

    div-long/2addr v7, v3

    const-wide/32 v3, 0x3000000

    .line 29
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/narvii/services/GifLoaderProvider;->maxSize:I

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableExternalMemorySize()J

    move-result-wide v7

    mul-long v7, v7, v5

    div-long/2addr v7, v3

    const-wide/32 v3, 0x7800000

    .line 34
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/narvii/services/GifLoaderProvider;->maxSize:I

    .line 38
    :cond_3
    :goto_0
    new-instance v0, Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v1, p0, Lcom/narvii/services/GifLoaderProvider;->dir:Ljava/io/File;

    invoke-direct {v0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/GifLoaderProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GifLoaderProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 4

    .line 51
    iget p1, p0, Lcom/narvii/services/GifLoaderProvider;->maxSize:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->trimAndFlush(IJ)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GifLoaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GifLoaderProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GifLoaderProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    .line 56
    invoke-virtual {p2}, Lcom/narvii/util/drawables/gif/GifLoader;->abortAll()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GifLoaderProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/gif/GifLoader;)V

    return-void
.end method
