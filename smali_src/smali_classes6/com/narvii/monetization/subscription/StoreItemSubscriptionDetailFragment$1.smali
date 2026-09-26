.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->changeAutoRenewRequest(Z)V
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
.field final synthetic this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

.field final synthetic val$autoRenew:Z

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/lang/Class;ZLcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$autoRenew:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->z(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 28
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
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->u(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    instance-of p2, p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    move-object p2, p1

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/model/StoreItemBaseObject;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$autoRenew:Z

    .line 27
    .line 28
    iput-boolean v0, p2, Lcom/narvii/model/OwnershipInfo;->isAutoRenew:Z

    .line 29
    .line 30
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->z(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)V

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 36
    .line 37
    const-string v0, "update"

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 43
    .line 44
    const-string v0, "notification"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 59
    return-void
.end method
