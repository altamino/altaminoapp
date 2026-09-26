.class public final Lcom/narvii/user/follow/FollowNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private api:Lcom/narvii/util/http/ApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fail:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isRequesting:Z

.field private loading:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nc:Lcom/narvii/notification/NotificationCenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private success:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "api"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 26
    .line 27
    const-string v0, "notification"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 46
    return-void
.end method

.method public static final synthetic access$getNc$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/notification/NotificationCenter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->nc:Lcom/narvii/notification/NotificationCenter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/user/follow/FollowNotificationHelper;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setRequesting$p(Lcom/narvii/user/follow/FollowNotificationHelper;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$subscribeVibrate(Lcom/narvii/user/follow/FollowNotificationHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribeVibrate()V

    .line 4
    return-void
.end method

.method public static synthetic subscribe$default(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic subscribe$default(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;Ljava/lang/Boolean;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method private final subscribeVibrate()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "vibrator"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast v0, Landroid/os/Vibrator;

    .line 21
    .line 22
    const-wide/16 v1, 0x12c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getFail()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->fail:Le8/l;

    return-object v0
.end method

.method public final getLoading()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->loading:Le8/a;

    return-object v0
.end method

.method public final getSuccess()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->success:Le8/l;

    return-object v0
.end method

.method public final setFail(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->fail:Le8/l;

    return-void
.end method

.method public final setLoading(Le8/a;)V
    .locals 0
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->loading:Le8/a;

    return-void
.end method

.method public final setSuccess(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->success:Le8/l;

    return-void
.end method

.method public final subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public final subscribe(Lcom/narvii/model/User;Ljava/lang/Boolean;Z)V
    .locals 8
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    move v4, p2

    goto :goto_1

    :cond_1
    iget p2, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    if-nez p2, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iput-boolean v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->isRequesting:Z

    iget-object p2, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->loading:Le8/a;

    if-eqz p2, :cond_3

    .line 3
    invoke-interface {p2}, Le8/a;->invoke()Ljava/lang/Object;

    :cond_3
    const-string p2, "/subscription"

    const-string v0, "/user-profile/"

    if-eqz v4, :cond_4

    .line 4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    goto :goto_2

    .line 5
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    :goto_2
    iget-object v0, p0, Lcom/narvii/user/follow/FollowNotificationHelper;->api:Lcom/narvii/util/http/ApiService;

    const-class v6, Lcom/narvii/model/api/ApiResponse;

    .line 6
    new-instance v7, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/user/follow/FollowNotificationHelper$subscribe$1;-><init>(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;ZZLjava/lang/Class;)V

    invoke-virtual {v0, p2, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_5
    :goto_3
    return-void
.end method
