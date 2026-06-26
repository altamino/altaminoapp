.class Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CustomizedStickerPickListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->sendRequest()V
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
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

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

    .line 228
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 229
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    iput-object p4, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 204
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 205
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 208
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p2, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->collectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/monetization/sticker/StickerService;->setStickerList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 215
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Sticker;

    .line 217
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object p2, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 222
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;->error:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
