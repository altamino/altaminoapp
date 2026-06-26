.class public final Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FollowNotificationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $isSubscribe:Z

.field final synthetic $showToast:Z

.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/user/follow/FollowNotificationHelper;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/FollowNotificationHelper;ZLcom/narvii/model/User;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/model/User;",
            "Z",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    iput-boolean p2, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    iput-object p3, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    iput-boolean p4, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$showToast:Z

    invoke-direct {p0, p5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 69
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$setRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;Z)V

    .line 71
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 72
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$setRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;Z)V

    .line 51
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    iget-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    iput v0, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 54
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-static {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$getNc$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/notification/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 57
    iget-boolean p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-static {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$subscribeVibrate(Lcom/narvii/user/follow/FollowNotificationHelper;)V

    .line 59
    iget-boolean p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$showToast:Z

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-static {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$getPushNotificationHelper$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const-string v1, "user.nickname"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scenario_subscribe_user"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03f1

    invoke-static {p1, v0, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method
