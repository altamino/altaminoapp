.class public Lcom/narvii/services/incubator/IncubatorNoticeService;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;
    }
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private active:Z

.field ctx:Lcom/narvii/app/NVContext;

.field dispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

.field hasReminder:Z

.field lastCheckTime:J

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private request:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorNoticeService$1;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    const-string v1, "account"

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->accountService:Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance v1, Landroid/content/IntentFilter;

    .line 43
    .line 44
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 51
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method private invalidateNoticeResult()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "_invalidateNoticeResult"

    .line 7
    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
.end method

.method private invalidateNotificationResult()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "_invalidateNotification"

    .line 7
    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public addReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public hasReminder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    return v0
.end method

.method public invalidate()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->active:Z

    return v0
.end method

.method public isFullCheckRequesting()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onNoticeCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->invalidateNoticeResult()V

    .line 7
    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNotificationCountChanged(I)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->invalidateNotificationResult()V

    .line 9
    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method

.method public refresh(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    .line 18
    sub-long/2addr v0, v2

    .line 19
    .line 20
    .line 21
    const-wide/32 v2, 0x2bf20

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-gez p1, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    const-string v0, "api"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "/reminder/full-check"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v1, "ignoreUnreadChatThreadsCount"

    .line 63
    .line 64
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    .line 75
    .line 76
    new-instance v1, Lcom/narvii/services/incubator/IncubatorNoticeService$2;

    .line 77
    .line 78
    const-class v2, Lcom/narvii/notice/ReminderFullCheckResponse;

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, p0, v2}, Lcom/narvii/services/incubator/IncubatorNoticeService$2;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    move-result-wide v0

    .line 89
    .line 90
    iput-wide v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    .line 91
    return-void
.end method

.method public removeReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public sendGlobalNoticeRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "/reminder/check"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "ignoreUnreadChatThreadsCount"

    .line 37
    .line 38
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    const-string/jumbo v3, "timezone"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 64
    .line 65
    new-instance v2, Lcom/narvii/services/incubator/IncubatorNoticeService$3;

    .line 66
    .line 67
    const-class v3, Lcom/narvii/community/ReminderCheckMapResponse;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, v3}, Lcom/narvii/services/incubator/IncubatorNoticeService$3;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 74
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->active:Z

    return-void
.end method
