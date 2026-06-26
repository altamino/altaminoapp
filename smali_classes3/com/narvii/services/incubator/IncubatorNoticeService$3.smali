.class Lcom/narvii/services/incubator/IncubatorNoticeService$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "IncubatorNoticeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/ReminderCheckMapResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorNoticeService;Ljava/lang/Class;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$3;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

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

    .line 169
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 170
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$3;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->access$102(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckMapResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 155
    iget-object v0, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$3;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    iget-object v0, v0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    const-string v2, "_invalidateNoticeResult"

    .line 157
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest;->tagBoolean(Ljava/lang/Object;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v2, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v3}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    :cond_0
    const-string v2, "_invalidateNotification"

    .line 160
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest;->tagBoolean(Ljava/lang/Object;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 161
    iget-object p1, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget p1, p1, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v3}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$3;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->access$102(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    check-cast p2, Lcom/narvii/community/ReminderCheckMapResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckMapResponse;)V

    return-void
.end method
