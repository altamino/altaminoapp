.class Lcom/narvii/wallet/optinads/OptinAdsUtil$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/optinads/OptinAdsUtil;->optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$area:Ljava/lang/String;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$level:I

.field final synthetic val$nvContext:Lcom/narvii/app/NVContext;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;Lcom/narvii/app/NVContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    iput p5, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$level:I

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$source:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$area:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->lambda$onFail$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/app/NVContext;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->lambda$onFail$1(Lcom/narvii/app/NVContext;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onFail$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->cancelJoinAminoPlusTurnOffAds:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 18
    return-void
.end method

.method private static synthetic lambda$onFail$1(Lcom/narvii/app/NVContext;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->joinAminoPlusTurnOffAds:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

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
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    const/16 p1, 0x127

    .line 11
    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    new-instance p2, Lcom/narvii/wallet/optinads/h;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2}, Lcom/narvii/wallet/optinads/h;-><init>()V

    .line 32
    .line 33
    .line 34
    const p3, 0x7f1201e2

    .line 35
    const/4 p4, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3, p4, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    new-instance p3, Lcom/narvii/wallet/optinads/i;

    .line 43
    .line 44
    .line 45
    invoke-direct {p3, p2}, Lcom/narvii/wallet/optinads/i;-><init>(Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    .line 48
    const p2, 0x7f120c6a

    .line 49
    const/4 p4, 0x2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$area:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    sget-object p2, Lcom/narvii/logging/ActSemantic;->requestAminoPlus:Lcom/narvii/logging/ActSemantic;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$area:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    .line 88
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$callback:Lcom/narvii/util/Callback;

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    const/4 p2, 0x0

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 95
    :cond_2
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "prefs"

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "optinAds"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "statistics"

    .line 8
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string p2, "Opt-in Ads Toggle"

    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$level:I

    if-lez p2, :cond_1

    const-string p2, "On"

    goto :goto_0

    :cond_1
    const-string p2, "Off"

    :goto_0
    const-string v0, "Toggle"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget p2, p0, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->val$level:I

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const-string v0, "Opt-in Ads"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Opt-in Ads On Total"

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
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
