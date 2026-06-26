.class public final Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GiphyStickerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/giphy/GiphyStickerService;->loadGiphyPackList(ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/media/giphy/GiphyPackListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGiphyStickerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GiphyStickerService.kt\ncom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1\n*L\n1#1,126:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/giphy/GiphyStickerService;


# direct methods
.method constructor <init>(Lcom/narvii/media/giphy/GiphyStickerService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getPackListingListener$p(Lcom/narvii/media/giphy/GiphyStickerService;)Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;->onGiphyPackListLoaded(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyPackListResponse;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 51
    iget-object p1, p2, Lcom/narvii/media/giphy/GiphyPackListResponse;->data:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 52
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p2}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getCachedGiphyPackList$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getPackListingListener$p(Lcom/narvii/media/giphy/GiphyStickerService;)Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {p2}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getCachedGiphyPackList$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;->onGiphyPackListLoaded(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 48
    check-cast p2, Lcom/narvii/media/giphy/GiphyPackListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyPackListResponse;)V

    return-void
.end method
