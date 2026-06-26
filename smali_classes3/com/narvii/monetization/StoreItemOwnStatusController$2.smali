.class Lcom/narvii/monetization/StoreItemOwnStatusController$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoreItemOwnStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickActivateItem()V
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
.field final synthetic this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/StoreItemOwnStatusController;Ljava/lang/Class;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

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

    .line 369
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 370
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    iget-object p1, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 371
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 377
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    iget-object p1, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/narvii/model/IStoreItem;->setActivated(Z)V

    .line 378
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 379
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    iget-object p2, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of p2, p2, Lcom/narvii/model/NVObject;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->sendNotificationAfterActivated()Z

    move-result p1

    if-nez p1, :cond_0

    .line 380
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    check-cast p2, Lcom/narvii/model/NVObject;

    const-string v0, "update"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 381
    iget-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 382
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    return-void
.end method
