.class public final Lcom/narvii/checkin/CheckInService$startCheckIn$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CheckInService.kt"


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
.method constructor <init>(Lcom/narvii/checkin/CheckInService;JLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    iput-wide p2, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->$startTime:J

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 9
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

    .line 135
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 136
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    new-instance v8, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;-><init>(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v8}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/EventDispatcher;->clear()V

    .line 141
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/checkin/CheckInService;->setCheckingIn(Z)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    iget-boolean v1, p2, Lcom/narvii/checkin/CheckInResult;->canPlayLottery:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getCommunityConfigHelper()Lcom/narvii/modulization/CommunityConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInService;->setWillPlayLottery(Z)V

    .line 95
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0, v2}, Lcom/narvii/checkin/CheckInService;->setCheckInPopUpDone(Z)V

    .line 96
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0, v3}, Lcom/narvii/checkin/CheckInService;->setDontUpdateRanking(Z)V

    .line 98
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    iget v1, p2, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4, v3}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 99
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/checkin/CheckInResult;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v3}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p2, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    const-string v1, "account"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 102
    iget-object v1, p2, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    iget v4, v1, Lcom/narvii/model/User;->level:I

    iput v4, v0, Lcom/narvii/model/User;->level:I

    .line 103
    iget v1, v1, Lcom/narvii/model/User;->reputation:I

    iput v1, v0, Lcom/narvii/model/User;->reputation:I

    .line 104
    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v1}, Lcom/narvii/checkin/CheckInService;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v1

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v4, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;-><init>(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 110
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/EventDispatcher;->clear()V

    .line 111
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p1, v2}, Lcom/narvii/checkin/CheckInService;->setCheckingIn(Z)V

    .line 113
    new-instance p1, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;

    invoke-direct {p1, p0, p2}, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;-><init>(Lcom/narvii/checkin/CheckInService$startCheckIn$1;Lcom/narvii/checkin/CheckInResult;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 76
    check-cast p2, Lcom/narvii/checkin/CheckInResult;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/checkin/CheckInResult;
    .locals 4
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

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/checkin/CheckInResult;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->$startTime:J

    sub-long/2addr p2, v0

    const/16 p4, 0x7cf

    int-to-long v0, p4

    const-wide/16 v2, 0x0

    cmp-long p4, v2, p2

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p4, v0, p2

    if-ltz p4, :cond_1

    const/16 p4, 0x7d0

    int-to-long v0, p4

    sub-long/2addr v0, p2

    .line 83
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const-string p2, "r"

    .line 87
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/checkin/CheckInResult;

    move-result-object p1

    return-object p1
.end method
