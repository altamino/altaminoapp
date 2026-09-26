.class Lcom/narvii/checkin/CheckInHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/checkin/CheckInHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    .line 4
    iget-object p1, p1, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 5
    iget-object v0, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-boolean v1, v0, Lcom/narvii/model/CheckInHistory;->hasCheckInToday:Z

    iget v0, v0, Lcom/narvii/model/CheckInHistory;->consecutiveCheckInDays:I

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 7
    iget-object p1, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/narvii/achievements/StreakRepairDialog;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    iget-object p2, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-direct {p1, v0, p2}, Lcom/narvii/achievements/StreakRepairDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/CheckInHistory;)V

    iget-object p2, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    .line 9
    iget-object p2, p2, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/achievements/StreakRepairDialog;->source:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/achievements/StreakRepairDialog;->show()V

    iget-object p2, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    return-void
.end method
