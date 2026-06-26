.class Lcom/narvii/drawer/DrawerHost$17;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DrawerHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/ReminderCheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

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

    .line 1538
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1539
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheckTime:J

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1522
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 1523
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget-object v1, v1, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 1524
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 1525
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v0, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    .line 1526
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v0, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    .line 1528
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1530
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_drawerResponseListener"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 1532
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

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

    .line 1519
    check-cast p2, Lcom/narvii/community/ReminderCheckResult;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$17;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckResult;)V

    return-void
.end method
