.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoreItemSubscriptionDetailFragment.java"


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

    .line 199
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    iput-boolean p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$autoRenew:Z

    iput-object p4, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 219
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 220
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 221
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$100(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)V

    .line 222
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 203
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$000(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 204
    instance-of p2, p1, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz p2, :cond_0

    .line 205
    move-object p2, p1

    check-cast p2, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object p2

    .line 206
    iget-boolean v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$autoRenew:Z

    iput-boolean v0, p2, Lcom/narvii/model/OwnershipInfo;->isAutoRenew:Z

    .line 208
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$100(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)V

    .line 210
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 211
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 212
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 214
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
