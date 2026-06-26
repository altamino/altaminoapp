.class Lcom/narvii/monetization/sticker/StickerService$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/sticker/picker/StickerListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerService;

.field final synthetic val$collectionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$6;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerService$6;->val$collectionId:Ljava/lang/String;

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

    .line 392
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    check-cast p2, Lcom/narvii/monetization/sticker/picker/StickerListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerService$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/picker/StickerListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/picker/StickerListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 383
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerListResponse;->stickerList:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 387
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerService$6;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService$6;->val$collectionId:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/monetization/sticker/StickerService;->setStickerList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
