.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    .line 20
    .line 21
    xor-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 11
    .line 12
    iget-boolean p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    .line 13
    .line 14
    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$active:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 28
    const/4 p2, 0x1

    .line 29
    .line 30
    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->added:Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 43
    .line 44
    :goto_0
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 45
    .line 46
    const-string p2, "update"

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 57
    return-void
.end method
