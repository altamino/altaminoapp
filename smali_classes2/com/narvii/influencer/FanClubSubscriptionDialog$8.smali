.class Lcom/narvii/influencer/FanClubSubscriptionDialog$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FanClubSubscriptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendFellowRequest()V
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
.field final synthetic this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

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

    .line 441
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 442
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 414
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 415
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 420
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$1200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/notification/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 424
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 425
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    move-result-object v0

    iget v2, v0, Lcom/narvii/model/User;->membersCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/narvii/model/User;->membersCount:I

    .line 426
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    move-result-object v2

    const-string/jumbo v3, "update"

    invoke-direct {v0, v3, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 427
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 428
    iget-object v2, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v3, "keepInfluencerInfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$1200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/notification/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 431
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 432
    iget v2, v0, Lcom/narvii/model/User;->joinedCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 433
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 435
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$800(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    .line 436
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
