.class public Lcom/narvii/services/incubator/IncubatorNoticeService;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "IncubatorNoticeService.java"


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

    .line 83
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 31
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 36
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorNoticeService$1;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->receiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 85
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->accountService:Lcom/narvii/account/AccountService;

    .line 86
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 87
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/narvii/services/incubator/IncubatorNoticeService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method private invalidateNoticeResult()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 183
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "_invalidateNoticeResult"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private invalidateNotificationResult()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "_invalidateNotification"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public hasReminder()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    return v0
.end method

.method public invalidate()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->active:Z

    return v0
.end method

.method public isFullCheckRequesting()Z
    .locals 1

    .line 103
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

    .line 71
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    .line 72
    invoke-direct {p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->invalidateNoticeResult()V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNotificationCountChanged(I)V

    if-nez p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->invalidateNotificationResult()V

    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method

.method public refresh(Z)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return-void

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 114
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    .line 118
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/reminder/full-check"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ignoreUnreadChatThreadsCount"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    .line 119
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Lcom/narvii/services/incubator/IncubatorNoticeService$2;

    const-class v2, Lcom/narvii/notice/ReminderFullCheckResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/services/incubator/IncubatorNoticeService$2;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    return-void
.end method

.method public removeReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public sendGlobalNoticeRequest()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 144
    iget-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 148
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/reminder/check"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ignoreUnreadChatThreadsCount"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timezone"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 151
    iget-object v1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->globalNoticeRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/services/incubator/IncubatorNoticeService$3;

    const-class v3, Lcom/narvii/community/ReminderCheckMapResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/services/incubator/IncubatorNoticeService$3;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService;->active:Z

    return-void
.end method
