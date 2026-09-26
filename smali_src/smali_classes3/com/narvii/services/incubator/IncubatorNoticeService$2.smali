.class Lcom/narvii/services/incubator/IncubatorNoticeService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/services/incubator/IncubatorNoticeService$2;Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->lambda$onFinish$0(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    return-void
.end method

.method private synthetic lambda$onFinish$0(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;->onHasReminderChanged(Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->b(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)V

    .line 10
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

    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->b(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$2;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 3
    iget-boolean v0, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 4
    iget-object p2, p2, Lcom/narvii/notice/ReminderFullCheckResponse;->reminderFullCheckResult:Lcom/narvii/notice/ReminderFullCheckResult;

    if-eqz p2, :cond_0

    .line 5
    iget-boolean p2, p2, Lcom/narvii/notice/ReminderFullCheckResult;->hasReminder:Z

    iput-boolean p2, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 6
    :cond_0
    iget-boolean p2, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    if-eq v0, p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/services/incubator/c;

    invoke-direct {p2, p0}, Lcom/narvii/services/incubator/c;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService$2;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method
