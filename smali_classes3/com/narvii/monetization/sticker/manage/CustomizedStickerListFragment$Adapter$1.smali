.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CustomizedStickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->sendRequest()V
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
.field final synthetic this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

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

    .line 375
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 376
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    iput-object p4, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->error:Ljava/lang/String;

    .line 377
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

    .line 353
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 357
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-boolean v0, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 359
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 360
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 362
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object p2, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/monetization/sticker/StickerService;->setStickerList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 366
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 367
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->access$100(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;->error:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
