.class Lcom/narvii/checkin/CheckInHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CheckInHelper.java"


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

    .line 260
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iput-object p3, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

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

    .line 263
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 264
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 265
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 266
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 267
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

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

    .line 273
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 274
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 275
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 276
    iget-object v0, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 277
    iget-object v0, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-boolean v1, v0, Lcom/narvii/model/CheckInHistory;->hasCheckInToday:Z

    iget v0, v0, Lcom/narvii/model/CheckInHistory;->consecutiveCheckInDays:I

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 279
    iget-object p1, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-eqz p1, :cond_0

    .line 280
    new-instance p2, Lcom/narvii/achievements/StreakRepairDialog;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p2, v0, p1}, Lcom/narvii/achievements/StreakRepairDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/CheckInHistory;)V

    .line 281
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/achievements/StreakRepairDialog;->source:Ljava/lang/String;

    .line 282
    invoke-virtual {p2}, Lcom/narvii/achievements/StreakRepairDialog;->show()V

    .line 283
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 284
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 288
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

    .line 260
    check-cast p2, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    return-void
.end method
