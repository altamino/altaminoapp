.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V
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
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

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
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->z(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p4}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->y(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    :cond_0
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
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->z(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Z)V

    .line 4
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const-string v0, "notification"

    .line 6
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 7
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method
