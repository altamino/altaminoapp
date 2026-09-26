.class Lcom/narvii/drawer/DrawerHost$17;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

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
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    const/16 p2, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 10
    .line 11
    const-wide/16 p2, 0x0

    .line 12
    .line 13
    iput-wide p2, p1, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheckTime:J

    .line 14
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 2
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 3
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

    .line 4
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v0, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    .line 6
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v0, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$17;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 8
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_drawerResponseListener"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 9
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

    .line 1
    check-cast p2, Lcom/narvii/community/ReminderCheckResult;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$17;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckResult;)V

    return-void
.end method
