.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StickerPickerListFragment.java"


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

    .line 380
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

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

    .line 394
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 395
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$302(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Z)Z

    .line 396
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {p1, p4}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$002(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    .line 380
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

    .line 383
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 384
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$302(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Z)Z

    .line 385
    iget-object p1, p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_0

    .line 386
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 387
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 388
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method
