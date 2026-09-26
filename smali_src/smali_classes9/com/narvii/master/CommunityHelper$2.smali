.class Lcom/narvii/master/CommunityHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$ndcId:I

.field final synthetic val$showProgress:Z


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityHelper;Ljava/lang/Class;IZLcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/master/CommunityHelper$2;->val$showProgress:Z

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/master/CommunityHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/master/CommunityHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
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
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 6
    .line 7
    iget-boolean p3, p1, Lcom/narvii/master/CommunityHelper;->autoOpenCommunityDetail:Z

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const/16 p3, 0x322

    .line 12
    .line 13
    if-ne p2, p3, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    const-string p2, "community"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 24
    .line 25
    iget p2, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    iget p3, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3, p1}, Lcom/narvii/master/CommunityHelper;->a(Landroid/content/Context;ILcom/narvii/model/Community;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    const/4 p2, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/util/NVToast;->setSkipGeneralShowCheck(Z)Lcom/narvii/util/NVToast;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 62
    .line 63
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$showProgress:Z

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 80
    :cond_2
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
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunityHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "affiliations"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iget v0, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    .line 4
    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 5
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iget v0, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 8
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 9
    invoke-virtual {p1, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 10
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "myCommunityList"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 12
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "sticker"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 14
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    .line 15
    iput v0, p1, Lcom/narvii/model/User;->ndcId:I

    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    .line 16
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 17
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    :cond_2
    iget-boolean p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$showProgress:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_3
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_4

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
