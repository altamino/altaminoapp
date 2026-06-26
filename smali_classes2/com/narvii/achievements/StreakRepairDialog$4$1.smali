.class Lcom/narvii/achievements/StreakRepairDialog$4$1;
.super Ljava/lang/Object;
.source "StreakRepairDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/StreakRepairDialog$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

.field final synthetic val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/StreakRepairDialog$4;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iput-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 352
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$400(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 353
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    iget-object v1, v0, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v0, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 354
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    iget-object v1, v0, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-boolean v3, v1, Lcom/narvii/model/CheckInHistory;->hasCheckInToday:Z

    iget v1, v1, Lcom/narvii/model/CheckInHistory;->consecutiveCheckInDays:I

    iget-object v0, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v3, v1, v0, v2}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 356
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object v1, v1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {v1}, Lcom/narvii/achievements/StreakRepairDialog;->access$400(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v3, "config"

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 359
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    const-string v3, "cid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 363
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairListener:Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;

    if-eqz p1, :cond_0

    .line 364
    invoke-interface {p1}, Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;->onSteakRepairFinished()V

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 371
    :cond_1
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iput-object v0, p1, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    const/4 v0, 0x0

    .line 373
    invoke-static {p1, v0}, Lcom/narvii/achievements/StreakRepairDialog;->access$302(Lcom/narvii/achievements/StreakRepairDialog;Z)Z

    .line 375
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$000(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 377
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    iput-boolean v2, p1, Lcom/narvii/achievements/StreakRepairDialog;->anyFixed:Z

    .line 380
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$400(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->val$resp:Lcom/narvii/checkin/CheckInHistoryResponse;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInHelper;->getStreakRepairCellList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    move-result-object p1

    .line 381
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->updateCells(Ljava/util/List;)V

    .line 383
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object p1, p1, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$500(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 384
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {v0}, Lcom/narvii/achievements/StreakRepairDialog;->access$400(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 385
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$4$1;->this$1:Lcom/narvii/achievements/StreakRepairDialog$4;

    iget-object v0, v0, Lcom/narvii/achievements/StreakRepairDialog$4;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {v0}, Lcom/narvii/achievements/StreakRepairDialog;->access$400(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f06c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method
