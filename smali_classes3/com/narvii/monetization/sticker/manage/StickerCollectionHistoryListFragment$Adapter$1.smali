.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerCollectionHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->changeActive(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

.field final synthetic val$active:Z

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iput-boolean p5, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

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

    .line 296
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 297
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 298
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    invoke-virtual {p1, p4}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-boolean p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 300
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 282
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 283
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-boolean p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 284
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 285
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->added:Z

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 290
    :goto_0
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const-string v0, "update"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 291
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method
