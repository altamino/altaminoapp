.class Lcom/narvii/asset/AssetDownloader$1;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/asset/AssetDownloader;->loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/asset/AssetDownloader;

.field final synthetic val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

.field final synthetic val$iAsset:Lcom/narvii/asset/IAsset;


# direct methods
.method constructor <init>(Lcom/narvii/asset/AssetDownloader;Lcom/narvii/asset/AssetDownloadListener;Lcom/narvii/asset/IAsset;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/asset/AssetDownloader$1;->this$0:Lcom/narvii/asset/AssetDownloader;

    iput-object p2, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    iput-object p3, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    invoke-interface {p1, v0, p2}, Lcom/narvii/asset/AssetDownloadListener;->onError(Lcom/narvii/asset/IAsset;Ljava/lang/Exception;)V

    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/asset/AssetDownloader$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    iget-object v1, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    invoke-interface {v0, v1, p1}, Lcom/narvii/asset/AssetDownloadListener;->onPostExecute(Lcom/narvii/asset/IAsset;Ljava/io/File;)V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    iget-object v1, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/asset/AssetDownloadListener;->onProgressUpdate(Lcom/narvii/asset/IAsset;II)V

    return-void
.end method
