.class public interface abstract Lcom/narvii/asset/IAssetDownloader;
.super Ljava/lang/Object;
.source "IAssetDownloader.java"


# virtual methods
.method public abstract deleteDownloadedFile(Lcom/narvii/asset/IAsset;)V
.end method

.method public abstract getDownloadState(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;
.end method

.method public abstract getDownloadedFile(Lcom/narvii/asset/IAsset;)Ljava/io/File;
.end method

.method public abstract loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V
.end method

.method public abstract removeDownloadListenerByTag(Ljava/lang/Object;)V
.end method
