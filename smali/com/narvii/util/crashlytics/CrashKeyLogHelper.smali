.class public Lcom/narvii/util/crashlytics/CrashKeyLogHelper;
.super Ljava/lang/Object;
.source "CrashKeyLogHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/crashlytics/CrashKeyLogHelper;",
        ">;"
    }
.end annotation


# instance fields
.field log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/crashlytics/CrashKeyLogHelper;
    .locals 0

    .line 12
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    iput-object p1, p0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V
    .locals 3

    .line 23
    iget-object p2, p0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    if-eqz p2, :cond_0

    const-string p2, "logging"

    .line 24
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    .line 25
    iget-object v1, p0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    iget v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->crashType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, p2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    iget-object v2, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorType:Ljava/lang/String;

    aput-object v2, p2, v0

    const/4 v0, 0x4

    const-string v2, "message"

    aput-object v2, p2, v0

    const/4 v0, 0x5

    iget-object v2, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorMessage:Ljava/lang/String;

    aput-object v2, p2, v0

    const/4 v0, 0x6

    const-string/jumbo v2, "stack"

    aput-object v2, p2, v0

    const/4 v0, 0x7

    iget-object v2, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorStack:Ljava/lang/String;

    aput-object v2, p2, v0

    const/16 v0, 0x8

    const-string/jumbo v2, "states"

    aput-object v2, p2, v0

    const/16 v0, 0x9

    iget-object v2, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->states:Ljava/lang/String;

    aput-object v2, p2, v0

    const/16 v0, 0xa

    const-string v2, "active"

    aput-object v2, p2, v0

    const/16 v0, 0xb

    iget-object v2, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el1Active:Ljava/lang/String;

    aput-object v2, p2, v0

    const/16 v0, 0xc

    const-string v2, "activities"

    aput-object v2, p2, v0

    const/16 v0, 0xd

    iget-object v2, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el2Activities:Ljava/lang/String;

    aput-object v2, p2, v0

    const/16 v0, 0xe

    const-string v2, "images"

    aput-object v2, p2, v0

    const/16 v0, 0xf

    iget-object v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el3Images:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v0, "Crash"

    invoke-interface {p1, v0, p2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el1Active:Ljava/lang/String;

    .line 28
    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el2Activities:Ljava/lang/String;

    .line 29
    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el3Images:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->log:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/crashlytics/CrashKeyLogHelper;)V

    return-void
.end method
