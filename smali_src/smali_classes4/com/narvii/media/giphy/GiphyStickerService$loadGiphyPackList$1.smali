.class public final Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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


# instance fields
.field final synthetic this$0:Lcom/narvii/media/giphy/GiphyStickerService;


# direct methods
.method constructor <init>(Lcom/narvii/media/giphy/GiphyStickerService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/media/giphy/GiphyStickerService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/giphy/GiphyPackListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getPackListingListener$p(Lcom/narvii/media/giphy/GiphyStickerService;)Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;->onGiphyPackListLoaded(Ljava/util/ArrayList;)V

    .line 16
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyPackListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyPackListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p2, Lcom/narvii/media/giphy/GiphyPackListResponse;->data:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 4
    invoke-static {p2}, Lcom/narvii/media/giphy/GiphyStickerService;->access$getCachedGiphyPackList$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->this$0:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 5
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

    .line 1
    check-cast p2, Lcom/narvii/media/giphy/GiphyPackListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/giphy/GiphyPackListResponse;)V

    return-void
.end method
