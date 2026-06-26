.class Lcom/narvii/monetization/sticker/StickerDetailFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerDetailFragment;->getStickerCollectionInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Ljava/lang/Class;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 271
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->access$100(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method
