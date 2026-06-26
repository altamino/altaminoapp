.class public final Lcom/narvii/user/follow/FollowNotificationHelper;
.super Ljava/lang/Object;
.source "FollowNotificationHelper.kt"


# instance fields
.field private api:Lcom/narvii/util/http/ApiService;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private fail:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesting:Z

.field private loading:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final nc:Lcom/narvii/notification/NotificationCenter;

.field private final pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 24
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 25
    iget-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"notification\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    .line 26
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public static final synthetic access$getNc$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/notification/NotificationCenter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    return-object p0
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-object p0
.end method

.method public static final synthetic access$isRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    return p0
.end method

.method public static final synthetic access$setRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    return-void
.end method

.method public static final synthetic access$subscribeVibrate(Lcom/narvii/user/follow/FollowNotificationHelper;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribeVibrate()V

    return-void
.end method

.method public static synthetic subscribe$default(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic subscribe$default(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;Ljava/lang/Boolean;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method private final subscribeVibrate()V
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getFail()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getLoading()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->loading:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSuccess()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setFail(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setLoading(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->loading:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSuccess(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->success:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public final subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V
    .locals 8

    .line 37
    iget-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    move v3, p2

    goto :goto_0

    :cond_1
    iget p2, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    if-nez p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    .line 42
    iget-object p2, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->loading:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Unit;

    :cond_3
    const-string p2, "/subscription"

    const-string v0, "/user-profile/"

    if-eqz v3, :cond_4

    .line 44
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    goto :goto_1

    .line 46
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->api:Lcom/narvii/util/http/ApiService;

    new-instance v7, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;

    const-class v6, Lcom/narvii/model/api/ApiResponse;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;-><init>(Lcom/narvii/user/follow/FollowNotificationHelper;ZLcom/narvii/model/User;ZLjava/lang/Class;)V

    invoke-virtual {v0, p2, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_5
    :goto_2
    return-void
.end method
