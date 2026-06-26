.class Lcom/narvii/services/incubator/IncubatorNoticeService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "IncubatorNoticeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/notice/ReminderFullCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorNoticeService;Ljava/lang/Class;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinish$0$IncubatorNoticeService$2(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    iget-boolean v0, v0, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    invoke-interface {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;->onHasReminderChanged(Z)V

    return-void
.end method

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

    .line 135
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 136
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->access$002(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    check-cast p2, Lcom/narvii/notice/ReminderFullCheckResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/ReminderFullCheckResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/ReminderFullCheckResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->access$002(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 123
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    iget-boolean v0, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 124
    iget-object p2, p2, Lcom/narvii/notice/ReminderFullCheckResponse;->reminderFullCheckResult:Lcom/narvii/notice/ReminderFullCheckResult;

    if-eqz p2, :cond_0

    .line 125
    iget-boolean p2, p2, Lcom/narvii/notice/ReminderFullCheckResult;->hasReminder:Z

    iput-boolean p2, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    iget-boolean p2, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    if-eq v0, p2, :cond_1

    .line 129
    iget-object p1, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$2$hpVPPOmYLjo0Ztd4dvADThGbkSY;

    invoke-direct {p2, p0}, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$2$hpVPPOmYLjo0Ztd4dvADThGbkSY;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService$2;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method
