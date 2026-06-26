.class Lcom/narvii/master/CommunityHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunityHelper.java"


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

    .line 287
    iput-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iput p3, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    iput-boolean p4, p0, Lcom/narvii/master/CommunityHelper$2;->val$showProgress:Z

    iput-object p5, p0, Lcom/narvii/master/CommunityHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p6, p0, Lcom/narvii/master/CommunityHelper$2;->val$callback:Lcom/narvii/util/Callback;

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

    .line 327
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 328
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-boolean p3, p1, Lcom/narvii/master/CommunityHelper;->autoOpenCommunityDetail:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x322

    if-ne p2, p3, :cond_0

    .line 330
    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string p2, "community"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 331
    iget p2, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 332
    iget-object p2, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p2, p2, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p3, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    invoke-static {p2, p3, p1}, Lcom/narvii/master/CommunityHelper;->access$000(Landroid/content/Context;ILcom/narvii/model/Community;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/util/NVToast;->setSkipGeneralShowCheck(Z)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 336
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$showProgress:Z

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_2

    .line 340
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

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

    .line 287
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

    .line 290
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 291
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "affiliations"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 292
    iget v0, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 294
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 295
    iget v0, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 298
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 299
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 300
    invoke-virtual {p1, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "myCommunityList"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 308
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "sticker"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 309
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 311
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    .line 312
    iget v0, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    iput v0, p1, Lcom/narvii/model/User;->ndcId:I

    .line 313
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->this$0:Lcom/narvii/master/CommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/CommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 314
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/master/CommunityHelper$2;->val$ndcId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 317
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$showProgress:Z

    if-eqz p1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 320
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/CommunityHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_4

    .line 321
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
