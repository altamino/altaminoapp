.class public final Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/media/giphy/GiphyStickerService;


# direct methods
.method constructor <init>(Lcom/narvii/media/giphy/GiphyStickerService;Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/media/giphy/GiphyStickerService;",
            "Lcom/narvii/media/giphy/GiphyItem;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

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

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
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
    const-string p2, "url"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getDownloadingItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;->onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 63
    :cond_1
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
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getDownloadingItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;->onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 69
    :cond_1
    return-void

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$wr:Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;->$giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, p1, v1}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;->onGiphyStickerLoaded(Ljava/io/File;Lcom/narvii/media/giphy/GiphyItem;)V

    .line 85
    :cond_3
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 0

    return-void
.end method
