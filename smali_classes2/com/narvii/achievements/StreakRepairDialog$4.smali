.class Lcom/narvii/achievements/StreakRepairDialog$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StreakRepairDialog.java"


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

    .line 340
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

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

    .line 403
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 404
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/narvii/achievements/StreakRepairDialog;->access$202(Lcom/narvii/achievements/StreakRepairDialog;Z)Z

    .line 405
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    const/4 p3, 0x0

    iput-object p3, p1, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    const/4 p3, 0x1

    const/16 p5, 0x10cc

    if-ne p2, p5, :cond_0

    .line 407
    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$700(Lcom/narvii/achievements/StreakRepairDialog;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 411
    :goto_0
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$000(Lcom/narvii/achievements/StreakRepairDialog;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 344
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/achievements/StreakRepairDialog;->access$202(Lcom/narvii/achievements/StreakRepairDialog;Z)Z

    .line 345
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    .line 347
    iget-object v0, p1, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 348
    invoke-static {p1, v1}, Lcom/narvii/achievements/StreakRepairDialog;->access$302(Lcom/narvii/achievements/StreakRepairDialog;Z)Z

    .line 349
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    new-instance v0, Lcom/narvii/achievements/StreakRepairDialog$4$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/achievements/StreakRepairDialog$4$1;-><init>(Lcom/narvii/achievements/StreakRepairDialog$4;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->startFixAnimation(Lcom/narvii/util/Callback;)V

    .line 391
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    check-cast p2, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/achievements/StreakRepairDialog$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    return-void
.end method
