.class public Lcom/narvii/asset/AssetDownloadServiceProvider;
.super Ljava/lang/Object;
.source "AssetDownloadServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/asset/AssetDownloader;",
        ">;"
    }
.end annotation


# instance fields
.field assetDownloader:Lcom/narvii/asset/AssetDownloader;

.field protected path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/narvii/asset/AssetDownloadServiceProvider;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/asset/AssetDownloader;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloadServiceProvider;->assetDownloader:Lcom/narvii/asset/AssetDownloader;

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetDownloadServiceProvider;->getAssetDownloader(Lcom/narvii/app/NVContext;)Lcom/narvii/asset/AssetDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/asset/AssetDownloadServiceProvider;->assetDownloader:Lcom/narvii/asset/AssetDownloader;

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/asset/AssetDownloadServiceProvider;->assetDownloader:Lcom/narvii/asset/AssetDownloader;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetDownloadServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/asset/AssetDownloader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/asset/AssetDownloader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/asset/AssetDownloadServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V

    return-void
.end method

.method protected getAssetDownloader(Lcom/narvii/app/NVContext;)Lcom/narvii/asset/AssetDownloader;
    .locals 2

    .line 26
    new-instance v0, Lcom/narvii/asset/AssetDownloader;

    iget-object v1, p0, Lcom/narvii/asset/AssetDownloadServiceProvider;->path:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/narvii/asset/AssetDownloader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/asset/AssetDownloader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/asset/AssetDownloadServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/asset/AssetDownloader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/asset/AssetDownloadServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/asset/AssetDownloader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/asset/AssetDownloadServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/asset/AssetDownloader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/asset/AssetDownloadServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/asset/AssetDownloader;)V

    return-void
.end method
