.class public Lcom/narvii/services/EventLogProfileService;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private needsBirthDateUpdate:Z

.field public needsCompleteSignupBirthday:Z

.field nvContext:Lcom/narvii/app/NVContext;

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field response:Lcom/narvii/logging/EventLogProfileResponse;

.field private showMyCommunityTab:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/services/EventLogProfileService;->needsBirthDateUpdate:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/services/EventLogProfileService;->needsCompleteSignupBirthday:Z

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/services/EventLogProfileService$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/services/EventLogProfileService$1;-><init>(Lcom/narvii/services/EventLogProfileService;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->receiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    new-instance v2, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 43
    .line 44
    const-string v0, "account"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 60
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/services/EventLogProfileService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/services/EventLogProfileService;->needsBirthDateUpdate:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/PreferencesHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/services/EventLogProfileService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/services/EventLogProfileService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/services/EventLogProfileService;->needsBirthDateUpdate:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/services/EventLogProfileService;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    return-void
.end method

.method private isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method


# virtual methods
.method public addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public alreadyShownBirthdayFlowThreeTimes()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/narvii/util/PreferencesHelper;->getBirthdateForceTimestamp(Ljava/lang/String;)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/util/PreferencesHelper;->getBirthdateForceFreq(Ljava/lang/String;)I

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x3

    .line 35
    .line 36
    if-lt v2, v3, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/narvii/services/EventLogProfileService;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedsBirthDateUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/services/EventLogProfileService;->needsBirthDateUpdate:Z

    return v0
.end method

.method public getResponse()Lcom/narvii/logging/EventLogProfileResponse;
    .locals 1

    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    return-object v0
.end method

.method public getSavedResponse()Lcom/narvii/logging/EventLogProfileResponse;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "eventLogProfile"

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    const-class v1, Lcom/narvii/logging/EventLogProfileResponse;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/logging/EventLogProfileResponse;

    .line 36
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getCommunityTabExp()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    if-eq v0, v4, :cond_1

    .line 22
    move v2, v3

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/services/EventLogProfileService;->getResponse()Lcom/narvii/logging/EventLogProfileResponse;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/services/EventLogProfileService;->getSavedResponse()Lcom/narvii/logging/EventLogProfileResponse;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    :cond_3
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/logging/EventLogProfileResponse;->participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iget v0, v0, Lcom/narvii/logging/ParticipatedExperiments;->communityTabExp:I

    .line 48
    .line 49
    if-eq v0, v4, :cond_5

    .line 50
    :cond_4
    move v2, v3

    .line 51
    .line 52
    .line 53
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    .line 57
    .line 58
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    move-result v0

    .line 63
    return v0
.end method

.method public needsShowBirthDateUpdate()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/narvii/util/PreferencesHelper;->getBirthdateForceTimestamp(Ljava/lang/String;)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/util/PreferencesHelper;->getBirthdateForceFreq(Ljava/lang/String;)I

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x3

    .line 35
    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/narvii/services/EventLogProfileService;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method public refresh(ZZ)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/narvii/services/EventLogProfileService;->lastProfileRequestTime:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    .line 11
    .line 12
    const-wide/32 v2, 0xdbba0

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/narvii/services/EventLogProfileService;->lastProfileRequestTime:J

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    const-string v0, "api"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    const-string v1, "content_language"

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 56
    .line 57
    const-string v2, "/eventlog/profile"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v2, "language"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    iput-object v1, p0, Lcom/narvii/services/EventLogProfileService;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 74
    .line 75
    new-instance v2, Lcom/narvii/services/EventLogProfileService$2;

    .line 76
    .line 77
    const-class v3, Lcom/narvii/logging/EventLogProfileResponse;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p0, v3, v0, p2}, Lcom/narvii/services/EventLogProfileService$2;-><init>(Lcom/narvii/services/EventLogProfileService;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 84
    return-void
.end method

.method public refreshIfIdle()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/services/EventLogProfileService;->isLoading()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    .line 20
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public resetShowCommunityTab()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/services/EventLogProfileService;->showMyCommunityTab:Ljava/lang/Boolean;

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    .line 5
    return-void
.end method

.method public updateBirthdateForceFreq()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->updateBirthdateForceFreq(Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/services/EventLogProfileService;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->setBirthdateForceTimestamp(Ljava/lang/String;)V

    .line 23
    return-void
.end method
