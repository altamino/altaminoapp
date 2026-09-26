.class Lcom/narvii/achievements/StreakRepairDialog$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/StreakRepairDialog;->fixStreak()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/checkin/CheckInHistoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/StreakRepairDialog;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/StreakRepairDialog;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 6
    const/4 p3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p3}, Lcom/narvii/achievements/StreakRepairDialog;->d(Lcom/narvii/achievements/StreakRepairDialog;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 12
    const/4 p3, 0x0

    .line 13
    .line 14
    iput-object p3, p1, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    const/16 p3, 0x10cc

    .line 17
    const/4 p5, 0x1

    .line 18
    .line 19
    if-ne p2, p3, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->f(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p4, p5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->i(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-string p2, "statistics"

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 58
    .line 59
    const-string p2, "Streak Repairs"

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Lcom/narvii/achievements/StreakRepairDialog;->c(Lcom/narvii/achievements/StreakRepairDialog;)I

    .line 69
    move-result p2

    .line 70
    .line 71
    if-ne p2, p5, :cond_1

    .line 72
    .line 73
    const-string p2, "Amino+ Membership"

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    const-string p2, "Coins"

    .line 77
    .line 78
    :goto_1
    const-string p3, "Payment"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    .line 83
    const-string p2, "Result"

    .line 84
    .line 85
    const-string p3, "Failed"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 89
    .line 90
    const-string p2, "Streak Repair Failed Totals"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 94
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/achievements/StreakRepairDialog;->d(Lcom/narvii/achievements/StreakRepairDialog;Z)V

    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    .line 5
    iget-object v0, p1, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1, v1}, Lcom/narvii/achievements/StreakRepairDialog;->e(Lcom/narvii/achievements/StreakRepairDialog;Z)V

    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 7
    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    new-instance v0, Lcom/narvii/achievements/StreakRepairDialog$4$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/achievements/StreakRepairDialog$4$1;-><init>(Lcom/narvii/achievements/StreakRepairDialog$4;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->startFixAnimation(Lcom/narvii/util/Callback;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 8
    sget-object p2, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "PurchaseButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {p2}, Lcom/narvii/achievements/StreakRepairDialog;->c(Lcom/narvii/achievements/StreakRepairDialog;)I

    move-result p2

    if-ne p2, v1, :cond_1

    const-string p2, "free"

    goto :goto_0

    :cond_1
    const-string p2, "useCoins"

    :goto_0
    const-string v0, "purchaseType"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "statistics"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string p2, "Streak Repairs"

    .line 10
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 11
    invoke-static {p2}, Lcom/narvii/achievements/StreakRepairDialog;->c(Lcom/narvii/achievements/StreakRepairDialog;)I

    move-result p2

    if-ne p2, v1, :cond_2

    const-string p2, "Amino+ Membership"

    goto :goto_1

    :cond_2
    const-string p2, "Coins"

    :goto_1
    const-string v0, "Payment"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    const-string p2, "Result"

    const-string v0, "Succeed"

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 13
    invoke-static {p2}, Lcom/narvii/achievements/StreakRepairDialog;->c(Lcom/narvii/achievements/StreakRepairDialog;)I

    move-result p2

    if-ne p2, v1, :cond_3

    const-string p2, "Streak Repair (Membership) Total"

    goto :goto_2

    :cond_3
    const-string p2, "Streak Repair (Coins) Totals"

    :goto_2
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    const-string p2, "Streak Repair Total"

    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

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
    check-cast p2, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/achievements/StreakRepairDialog$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    return-void
.end method
