.class public Lcom/narvii/services/AppLogEventServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/logging/service/LogEventService;",
        ">;",
        "Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;"
    }
.end annotation


# instance fields
.field appLaunchTime:J

.field launched:Z

.field logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

.field private loggingVI:Z

.field nvContext:Lcom/narvii/app/NVContext;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/services/AppLogEventServiceProvider$1;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/services/AppLogEventServiceProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/services/AppLogEventServiceProvider;->getOutPut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/services/AppLogEventServiceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/services/AppLogEventServiceProvider;->logIDFA()V

    return-void
.end method

.method private getOutPut(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    .line 13
    new-array v0, v0, [C

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v2

    .line 25
    .line 26
    rsub-int v2, v2, 0x9f

    .line 27
    int-to-char v2, v2

    .line 28
    .line 29
    aput-char v2, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 38
    return-object p1
.end method

.method private logIDFA()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/services/AppLogEventServiceProvider$3;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method private tryLogVIInfo()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "prefs"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/content/SharedPreferences;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "viInfoSent"

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->loggingVI:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->loggingVI:Z

    .line 30
    .line 31
    new-instance v0, Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/services/AppLogEventServiceProvider$4;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/services/AppLogEventServiceProvider$4;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public clearResponseWhenAccountChange()V
    .locals 0

    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/service/LogEventService;
    .locals 3

    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "eventLogProfile"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 3
    invoke-virtual {v0, p0}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/services/AppLogEventServiceProvider$2;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    :cond_0
    iget-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    invoke-direct {p0}, Lcom/narvii/services/AppLogEventServiceProvider;->logIDFA()V

    iget-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/AppLogEventServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/service/LogEventService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/logging/EventLogProfileResponse;->globalStrategyInfo:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEventServiceImpl;->setGlobalStrategyInfo(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    sget-object v0, Lcom/narvii/logging/ActSemantic;->appQuit:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/services/AppLogEventServiceProvider;->appLaunchTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p2, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/narvii/logging/LogUtils;->lastPauseContext:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 7
    iget-object v0, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->isStoryDetailPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    sget-object v0, Lcom/narvii/nvplayer/BufferingQuit;->HOME:Lcom/narvii/nvplayer/BufferingQuit;

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBuffering(Lcom/narvii/nvplayer/BufferingQuit;)V

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEventServiceImpl;->setPushTackId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 2

    .line 2
    sget-object p2, Lcom/narvii/pushservice/PushNotificationService;->FROM_PUSH:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p2}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    .line 3
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->appLaunch:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->launched:Z

    if-eqz v0, :cond_0

    const-string v0, "quickStart"

    goto :goto_0

    :cond_0
    const-string v0, "coldStart"

    :goto_0
    const-string v1, "launchType"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string v0, "launchFrom"

    const-string v1, "push"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 5
    iget-object v0, p2, Lcom/narvii/pushservice/PushNotificationService$PushFrom;->fromPushPayload:Lcom/narvii/pushservice/PushPayload;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/narvii/logging/LogEventServiceImpl;->setPushTackId(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p2, p2, Lcom/narvii/pushservice/PushNotificationService$PushFrom;->fromPushPayload:Lcom/narvii/pushservice/PushPayload;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pushInfo"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->appLaunchTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->launched:Z

    .line 10
    invoke-direct {p0}, Lcom/narvii/services/AppLogEventServiceProvider;->tryLogVIInfo()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public shouldShowDialog()V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method
