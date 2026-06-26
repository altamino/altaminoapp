.class public Lcom/narvii/services/ImageDiskCacheProvider;
.super Ljava/lang/Object;
.source "ImageDiskCacheProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/image/DiskLruCacheWrapper;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/image/DiskLruCacheWrapper;
    .locals 10

    .line 23
    iget-object v0, p0, Lcom/narvii/services/ImageDiskCacheProvider;->dir:Ljava/io/File;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "fail to get external cache dir, using internal cache instead"

    .line 27
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x1

    .line 31
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v2, "img"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/services/ImageDiskCacheProvider;->dir:Ljava/io/File;

    const-wide/32 v2, 0x400000

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x3

    if-eqz v0, :cond_2

    .line 36
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v0

    mul-long v0, v0, v6

    div-long/2addr v0, v4

    const-wide/32 v4, 0x1000000

    .line 37
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/narvii/services/ImageDiskCacheProvider;->maxSize:I

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v8

    mul-long v8, v8, v6

    div-long/2addr v8, v4

    const-wide/32 v4, 0x2000000

    .line 42
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lcom/narvii/services/ImageDiskCacheProvider;->maxSize:I

    .line 44
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, ".nomedia"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->touch(Ljava/io/File;)Z

    .line 48
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/util/image/DiskLruCacheWrapper;

    iget-object v0, p0, Lcom/narvii/services/ImageDiskCacheProvider;->dir:Ljava/io/File;

    invoke-direct {p1, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/services/ImageDiskCacheProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/image/DiskLruCacheWrapper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/image/DiskLruCacheWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageDiskCacheProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V
    .locals 4

    .line 64
    iget p1, p0, Lcom/narvii/services/ImageDiskCacheProvider;->maxSize:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->trimAndFlush(IJ)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/image/DiskLruCacheWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageDiskCacheProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/image/DiskLruCacheWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageDiskCacheProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/image/DiskLruCacheWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageDiskCacheProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/image/DiskLruCacheWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageDiskCacheProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/DiskLruCacheWrapper;)V

    return-void
.end method
