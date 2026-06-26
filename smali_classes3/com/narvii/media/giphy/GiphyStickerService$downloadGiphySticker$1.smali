.class public final Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;
.super Ljava/lang/Object;
.source "GiphyStickerService.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/giphy/GiphyStickerService;->downloadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $giphyItem:Lcom/narvii/media/giphy/GiphyItem;

.field final synthetic $wr:Ljava/lang/ref/WeakReference;

.field final synthetic this$0:Lcom/narvii/media/giphy/GiphyStickerService;


# direct methods
.method constructor <init>(Lcom/narvii/media/giphy/GiphyStickerService;Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/media/giphy/GiphyItem;",
            "Ljava/lang/ref/WeakReference;",
            ")V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    iput-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iput-object p3, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getDownloadingItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;->onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V

    :cond_1
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {v0}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getDownloadingItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iget-object v1, v1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    invoke-interface {p1, v0}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;->onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V

    :cond_1
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    invoke-interface {v0, p1, v1}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;->onGiphyStickerLoaded(Ljava/io/File;Lcom/narvii/media/giphy/GiphyItem;)V

    :cond_3
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 0

    return-void
.end method
