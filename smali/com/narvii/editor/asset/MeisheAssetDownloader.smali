.class public Lcom/narvii/editor/asset/MeisheAssetDownloader;
.super Lcom/narvii/asset/AssetDownloader;
.source "MeisheAssetDownloader.java"


# instance fields
.field private assetType:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/asset/AssetDownloader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 15
    iput p3, p0, Lcom/narvii/editor/asset/MeisheAssetDownloader;->assetType:I

    return-void
.end method


# virtual methods
.method protected applyZipExtract()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearCache()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/narvii/util/fileloader/FileLoader;->clearCache()V

    .line 26
    iget v0, p0, Lcom/narvii/editor/asset/MeisheAssetDownloader;->assetType:I

    invoke-static {v0}, Lcom/narvii/editor/utils/MeisheUtils;->uninstallAllAssetsOfType(I)V

    return-void
.end method
