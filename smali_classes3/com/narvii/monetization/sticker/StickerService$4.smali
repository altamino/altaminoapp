.class Lcom/narvii/monetization/sticker/StickerService$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerService.java"


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

    .line 288
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

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

    .line 311
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 312
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 313
    iput-object p4, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    .line 314
    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/monetization/sticker/StickerService$4$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/StickerService$4$1;-><init>(Lcom/narvii/monetization/sticker/StickerService$4;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
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

    .line 291
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 292
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 294
    iget-object v1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 295
    new-instance v1, Lcom/narvii/util/FilterHelper;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 296
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 297
    iget-object v2, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    .line 300
    iget v0, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionCount:I

    sub-int/2addr v0, p1

    iput v0, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionCount:I

    .line 301
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$4;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    iget p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionCount:I

    iput p2, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 302
    invoke-static {p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->access$100(Lcom/narvii/monetization/sticker/StickerService;Ljava/util/List;)V

    goto :goto_1

    .line 304
    :cond_1
    iput v0, p1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    const/4 p2, 0x0

    .line 305
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->access$100(Lcom/narvii/monetization/sticker/StickerService;Ljava/util/List;)V

    :goto_1
    return-void
.end method
