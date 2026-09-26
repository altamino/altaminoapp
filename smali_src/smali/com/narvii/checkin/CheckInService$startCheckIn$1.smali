.class public final Lcom/narvii/checkin/CheckInService$startCheckIn$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService;->startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/checkin/CheckInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/narvii/checkin/CheckInService;


# direct methods
.method constructor <init>(JLcom/narvii/checkin/CheckInService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/narvii/checkin/CheckInService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/checkin/CheckInResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->$startTime:J

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFail$lambda$3(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/checkin/CheckInService;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish$lambda$2(Lcom/narvii/checkin/CheckInService;Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish$lambda$0(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish$lambda$2$lambda$1(Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method private static final onFail$lambda$3(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    move-object v6, p5

    .line 8
    .line 9
    .line 10
    invoke-interface/range {v0 .. v6}, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method

.method private static final onFinish$lambda$0(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    .line 4
    return-void
.end method

.method private static final onFinish$lambda$2(Lcom/narvii/checkin/CheckInService;Lcom/narvii/checkin/CheckInResult;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getActivity()Landroid/app/Activity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInService;->setDontUpdateRanking(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getWillPlayLottery()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->showLotteryPrompt()V

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/checkin/CheckInService;->setDontUpdateRanking(Z)V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getActivity()Landroid/app/Activity;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;-><init>(Landroid/app/Activity;)V

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V

    .line 43
    .line 44
    new-instance p1, Lcom/narvii/checkin/f;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/narvii/checkin/f;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 48
    .line 49
    const-wide/16 v0, 0x5dc

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 53
    return-void
.end method

.method private static final onFinish$lambda$2$lambda$1(Lcom/narvii/checkin/CheckInService;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getWillPlayLottery()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->showLotteryPrompt()V

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 9
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
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getCtx()Lcom/narvii/app/NVContext;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v8, Lcom/narvii/checkin/i;

    .line 25
    move-object v1, v8

    .line 26
    move-object v2, p1

    .line 27
    move v3, p2

    .line 28
    move-object v4, p3

    .line 29
    move-object v5, p4

    .line 30
    move-object v6, p5

    .line 31
    move-object v7, p6

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v1 .. v7}, Lcom/narvii/checkin/i;-><init>(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v8}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/EventDispatcher;->clear()V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 49
    const/4 p2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/narvii/checkin/CheckInService;->setCheckingIn(Z)V

    .line 53
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 5
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/checkin/CheckInResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 2
    iget-boolean v1, p2, Lcom/narvii/checkin/CheckInResult;->canPlayLottery:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getCommunityConfigHelper()Lcom/narvii/modulization/CommunityConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInService;->setWillPlayLottery(Z)V

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 4
    invoke-virtual {v0, v2}, Lcom/narvii/checkin/CheckInService;->setCheckInPopUpDone(Z)V

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 5
    invoke-virtual {v0, v3}, Lcom/narvii/checkin/CheckInService;->setDontUpdateRanking(Z)V

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    iget v1, p2, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4, v3}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/checkin/CheckInResult;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v3}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p2, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 9
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 10
    iget-object v1, p2, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    iget v4, v1, Lcom/narvii/model/User;->level:I

    iput v4, v0, Lcom/narvii/model/User;->level:I

    .line 11
    iget v1, v1, Lcom/narvii/model/User;->reputation:I

    iput v1, v0, Lcom/narvii/model/User;->reputation:I

    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 12
    invoke-virtual {v1}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v1

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v4, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 13
    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/narvii/checkin/g;

    invoke-direct {v1, p1, p2}, Lcom/narvii/checkin/g;-><init>(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 14
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/EventDispatcher;->clear()V

    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 15
    invoke-virtual {p1, v2}, Lcom/narvii/checkin/CheckInService;->setCheckingIn(Z)V

    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    .line 16
    new-instance v0, Lcom/narvii/checkin/h;

    invoke-direct {v0, p1, p2}, Lcom/narvii/checkin/h;-><init>(Lcom/narvii/checkin/CheckInService;Lcom/narvii/checkin/CheckInResult;)V

    const-wide/16 p1, 0x7d0

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/checkin/CheckInResult;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/checkin/CheckInResult;
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [B
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
            ">;[B)",
            "Lcom/narvii/checkin/CheckInResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/checkin/CheckInResult;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->$startTime:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p4, v0, p2

    if-gtz p4, :cond_0

    const-wide/16 v0, 0x7d0

    cmp-long p4, p2, v0

    if-gez p4, :cond_0

    const/16 p4, 0x7d0

    int-to-long v0, p4

    sub-long/2addr v0, p2

    .line 4
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/checkin/CheckInResult;

    move-result-object p1

    return-object p1
.end method
