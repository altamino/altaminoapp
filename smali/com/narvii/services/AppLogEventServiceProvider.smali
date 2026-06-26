.class public Lcom/narvii/services/AppLogEventServiceProvider;
.super Ljava/lang/Object;
.source "AppLogEventServiceProvider.java"

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
.field launched:Z

.field logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

.field private loggingVI:Z

.field nvContext:Lcom/narvii/app/NVContext;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/AppLogEventServiceProvider$1;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/services/AppLogEventServiceProvider;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/services/AppLogEventServiceProvider;->logIDFA()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/services/AppLogEventServiceProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/services/AppLogEventServiceProvider;->getOutPut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOutPut(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 176
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 180
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    rsub-int v2, v2, 0x9f

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private logIDFA()V
    .locals 1

    .line 112
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider$3;

    invoke-direct {v0, p0}, Lcom/narvii/services/AppLogEventServiceProvider$3;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tryLogVIInfo()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "prefs"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "viInfoSent"

    .line 141
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->loggingVI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->loggingVI:Z

    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/narvii/services/AppLogEventServiceProvider$4;

    invoke-direct {v1, p0}, Lcom/narvii/services/AppLogEventServiceProvider$4;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

    .line 64
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "eventLogProfile"

    .line 65
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 66
    invoke-virtual {v0, p0}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/services/AppLogEventServiceProvider$2;-><init>(Lcom/narvii/services/AppLogEventServiceProvider;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    invoke-direct {p0}, Lcom/narvii/services/AppLogEventServiceProvider;->logIDFA()V

    .line 84
    iget-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/services/AppLogEventServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/service/LogEventService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 0

    .line 219
    iget-object p2, p0, Lcom/narvii/services/AppLogEventServiceProvider;->logEventServiceImpl:Lcom/narvii/logging/LogEventServiceImpl;

    if-eqz p2, :cond_0

    .line 220
    iget-object p1, p1, Lcom/narvii/logging/EventLogProfileResponse;->globalStrategyInfo:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEventServiceImpl;->setGlobalStrategyInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/narvii/logging/service/LogEventService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AppLogEventServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/logging/service/LogEventService;)V

    return-void
.end method
