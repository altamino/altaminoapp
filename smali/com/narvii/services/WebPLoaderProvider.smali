.class public Lcom/narvii/services/WebPLoaderProvider;
.super Ljava/lang/Object;
.source "WebPLoaderProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/drawables/webp/WebPLoader;",
        ">;"
    }
.end annotation


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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/drawables/webp/WebPLoader;
    .locals 9

    .line 15
    iget-object v0, p0, Lcom/narvii/services/WebPLoaderProvider;->dir:Ljava/io/File;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x1

    .line 22
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "webp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/narvii/services/WebPLoaderProvider;->dir:Ljava/io/File;

    const-wide/32 v1, 0x800000

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0xa

    if-eqz v0, :cond_2

    .line 27
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v7

    mul-long v7, v7, v5

    div-long/2addr v7, v3

    const-wide/32 v3, 0x3000000

    .line 28
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/narvii/services/WebPLoaderProvider;->maxSize:I

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableExternalMemorySize()J

    move-result-wide v7

    mul-long v7, v7, v5

    div-long/2addr v7, v3

    const-wide/32 v3, 0x7800000

    .line 33
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/narvii/services/WebPLoaderProvider;->maxSize:I

    .line 37
    :cond_3
    :goto_0
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    iget-object v1, p0, Lcom/narvii/services/WebPLoaderProvider;->dir:Ljava/io/File;

    invoke-direct {v0, p1, v1}, Lcom/narvii/util/drawables/webp/WebPLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/WebPLoaderProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/WebPLoaderProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/WebPLoaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/WebPLoaderProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/WebPLoaderProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/WebPLoaderProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/drawables/webp/WebPLoader;)V

    return-void
.end method
