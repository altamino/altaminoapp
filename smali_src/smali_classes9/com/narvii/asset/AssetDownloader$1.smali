.class Lcom/narvii/asset/AssetDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/asset/AssetDownloader$1;->this$0:Lcom/narvii/asset/AssetDownloader;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Lcom/narvii/asset/AssetDownloadListener;->onError(Lcom/narvii/asset/IAsset;Ljava/lang/Exception;)V

    .line 8
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->getUrl()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/narvii/asset/AssetDownloader$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Lcom/narvii/asset/AssetDownloadListener;->onPostExecute(Lcom/narvii/asset/IAsset;Ljava/io/File;)V

    .line 28
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/asset/AssetDownloader$1;->val$assetDownloadListener:Lcom/narvii/asset/AssetDownloadListener;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/asset/AssetDownloader$1;->val$iAsset:Lcom/narvii/asset/IAsset;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/asset/AssetDownloadListener;->onProgressUpdate(Lcom/narvii/asset/IAsset;II)V

    .line 8
    return-void
.end method
