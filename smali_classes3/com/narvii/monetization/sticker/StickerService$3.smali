.class Lcom/narvii/monetization/sticker/StickerService$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V
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

    .line 242
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$3;->this$0:Lcom/narvii/monetization/sticker/StickerService;

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

    .line 251
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 252
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$3;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    iput-object p4, p1, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    .line 253
    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/monetization/sticker/StickerService$3$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/StickerService$3$1;-><init>(Lcom/narvii/monetization/sticker/StickerService$3;)V

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

    .line 242
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerService$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 246
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$3;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->setStickerCollectionList(Ljava/util/List;)V

    return-void
.end method
