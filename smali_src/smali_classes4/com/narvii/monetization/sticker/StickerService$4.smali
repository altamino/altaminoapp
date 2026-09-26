.class Lcom/narvii/monetization/sticker/StickerService$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

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
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 9
    .line 10
    iput-object p4, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/monetization/sticker/StickerService$4$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/StickerService$4$1;-><init>(Lcom/narvii/monetization/sticker/StickerService$4;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 21
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerService$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 4
    iget-object v1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/narvii/util/FilterHelper;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 7
    iget-object v2, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    .line 9
    iget v0, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionCount:I

    sub-int/2addr v0, p1

    iput v0, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionCount:I

    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    .line 10
    iput v0, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 11
    invoke-static {p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->b(Lcom/narvii/monetization/sticker/StickerService;Ljava/util/List;)V

    goto :goto_1

    .line 12
    :cond_1
    iput v0, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    const/4 p2, 0x0

    .line 13
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->b(Lcom/narvii/monetization/sticker/StickerService;Ljava/util/List;)V

    :goto_1
    return-void
.end method
