.class public final Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
.method constructor <init>(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;ZZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/user/follow/FollowNotificationHelper;",
            "Lcom/narvii/model/User;",
            "ZZ",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$showToast:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$setRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getFail()Le8/l;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$setRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    .line 11
    .line 12
    iput v0, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "update"

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$getNc$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/notification/NotificationCenter;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getSuccess()Le8/l;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$isSubscribe:Z

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$subscribeVibrate(Lcom/narvii/user/follow/FollowNotificationHelper;)V

    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$showToast:Z

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->access$getPushNotificationHelper$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/account/push/PushNotificationHelper;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->$user:Lcom/narvii/model/User;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "nickname"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    const-string v1, "scenario_subscribe_user"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-nez p1, :cond_1

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;->this$0:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/user/follow/FollowNotificationHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    const v0, 0x7f12045d

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 105
    :cond_1
    return-void
.end method
