.class public Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;
.super Lcom/narvii/asset/AssetDownloadServiceProvider;
.source "MeisheAssetDownloadServiceProvider.java"


# instance fields
.field assetType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/asset/AssetDownloadServiceProvider;-><init>(Ljava/lang/String;)V

    .line 15
    iput p2, p0, Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;->assetType:I

    return-void
.end method


# virtual methods
.method protected getAssetDownloader(Lcom/narvii/app/NVContext;)Lcom/narvii/asset/AssetDownloader;
    .locals 3

    .line 21
    new-instance v0, Lcom/narvii/editor/asset/MeisheAssetDownloader;

    iget-object v1, p0, Lcom/narvii/asset/AssetDownloadServiceProvider;->path:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;->assetType:I

    invoke-direct {v0, p1, v1, v2}, Lcom/narvii/editor/asset/MeisheAssetDownloader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V

    return-object v0
.end method
