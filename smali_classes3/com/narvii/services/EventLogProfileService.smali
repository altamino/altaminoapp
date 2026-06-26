.class public Lcom/narvii/services/EventLogProfileService;
.super Ljava/lang/Object;
.source "EventLogProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;
    }
.end annotation


# static fields
.field public static final EVENT_LOG_PROFILE_RATE_CONTROL:J = 0xdbba0L


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field error:Ljava/lang/String;

.field lastProfileRequestTime:J

.field listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;",
            ">;"
        }
    .end annotation
.end field

.field nvContext:Lcom/narvii/app/NVContext;

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field response:Lcom/narvii/logging/EventLogProfileResponse;

.field private showMyCommunityTab:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 52
    new-instance v0, Lcom/narvii/services/EventLogProfileService$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/EventLogProfileService$1;-><init>(Lcom/narvii/services/EventLogProfileService;)V

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->receiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    .line 128
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/services/EventLogProfileService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "account"

    .line 129
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 130
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/services/EventLogProfileService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/PreferencesHelper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/narvii/logging/EventLogProfileResponse;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    return-object v0
.end method

.method public getSavedResponse()Lcom/narvii/logging/EventLogProfileResponse;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    if-eqz v0, :cond_0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "eventLogProfile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_1
    const-class v1, Lcom/narvii/logging/EventLogProfileResponse;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/EventLogProfileResponse;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowMyCommunityTab()Z
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 79
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getCommunityTabExp()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v4, :cond_1

    const/4 v2, 0x1

    .line 87
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/services/EventLogProfileService;->getResponse()Lcom/narvii/logging/EventLogProfileResponse;

    move-result-object v0

    if-nez v0, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/narvii/services/EventLogProfileService;->getSavedResponse()Lcom/narvii/logging/EventLogProfileResponse;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 85
    iget-object v0, v0, Lcom/narvii/logging/EventLogProfileResponse;->participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/narvii/logging/ParticipatedExperiments;->communityTabExp:I

    if-eq v0, v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    .line 90
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public refresh(ZZ)V
    .locals 4

    if-nez p1, :cond_0

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/services/EventLogProfileService;->lastProfileRequestTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/services/EventLogProfileService;->lastProfileRequestTime:J

    .line 139
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "content_language"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 142
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v2, "/eventlog/profile"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 144
    iget-object v1, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/services/EventLogProfileService$2;

    const-class v3, Lcom/narvii/logging/EventLogProfileResponse;

    invoke-direct {v2, p0, v3, v0, p2}, Lcom/narvii/services/EventLogProfileService$2;-><init>(Lcom/narvii/services/EventLogProfileService;Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public refreshIfIdle()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/services/EventLogProfileService;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, v0}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    return-void
.end method
