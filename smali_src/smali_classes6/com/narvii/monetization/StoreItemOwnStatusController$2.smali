.class Lcom/narvii/monetization/StoreItemOwnStatusController$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

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
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 25
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
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/narvii/model/IStoreItem;->setActivated(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 19
    .line 20
    iget-object p2, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 21
    .line 22
    instance-of p2, p2, Lcom/narvii/model/NVObject;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->sendNotificationAfterActivated()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 37
    .line 38
    check-cast p2, Lcom/narvii/model/NVObject;

    .line 39
    .line 40
    const-string v0, "update"

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    const-string v0, "notification"

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController$2;->this$0:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 61
    const/4 p2, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    .line 65
    return-void
.end method
