.class public Lcom/narvii/app/ApplicationSessionHelper;
.super Ljava/lang/Object;
.source "ApplicationSessionHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/app/ApplicationSessionHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final RESET_DURATION:J = 0x36ee80L

.field public static RESET_ENABLED:Z = false

.field public static final SESSION_DURATION:J = 0x124f80L

.field private static lastPauseDuration:J

.field private static lastPauseTime:J

.field protected static mainCCid:J

.field protected static masterCid:I

.field private static newCreateActivityCid:J

.field private static procId:I

.field private static sessionId:I

.field private static taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static getMainCommunityId()I
    .locals 4

    .line 84
    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static getSessionId()I
    .locals 1

    .line 53
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    return v0
.end method

.method public static getTaskId()I
    .locals 1

    .line 57
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    return v0
.end method

.method public static hasMainStacked()Z
    .locals 5

    .line 80
    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMasterStacked()Z
    .locals 1

    .line 76
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mainFinished(Lcom/narvii/app/NVActivity;)V
    .locals 6

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-string v2, "config"

    .line 212
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/config/ConfigService;

    const-wide v2, 0xffffffffL

    .line 213
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 214
    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .line 215
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    :cond_0
    return-void
.end method

.method public static mainOpened(Lcom/narvii/app/NVActivity;)V
    .locals 6

    .line 199
    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-string v2, "config"

    .line 202
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/config/ConfigService;

    const-wide v2, 0xffffffffL

    .line 203
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 204
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    :cond_0
    return-void
.end method

.method public static masterFinished(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    move-result-wide v0

    long-to-int p0, v0

    .line 192
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 193
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    :cond_0
    return-void
.end method

.method public static masterOpened(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 183
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    move-result-wide v0

    long-to-int p0, v0

    .line 185
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    :cond_0
    return-void
.end method

.method private static resetApp(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 162
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const-string v3, "noSplash"

    .line 168
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "__noInheritance"

    .line 169
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "__noMapping"

    .line 170
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x10008000

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 173
    instance-of p0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 174
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 177
    :cond_1
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 178
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    const-wide/16 v0, 0x0

    .line 179
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    return-void
.end method

.method private static resetApp(Lcom/narvii/app/NVContext;J)Z
    .locals 6

    .line 129
    sget-boolean v0, Lcom/narvii/app/ApplicationSessionHelper;->RESET_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    .line 134
    sget v2, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-eq v0, v2, :cond_1

    return v1

    .line 138
    :cond_1
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_2

    .line 139
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v2

    .line 140
    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-wide/32 v2, 0x36ee80

    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    .line 145
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    long-to-int p2, p1

    sput p2, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 146
    new-instance p1, Lcom/narvii/app/ApplicationSessionHelper$1;

    invoke-direct {p1, p0}, Lcom/narvii/app/ApplicationSessionHelper$1;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method static restore(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "__procId"

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    sget v2, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    if-eq v1, v2, :cond_2

    .line 94
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    const-string v1, "__procSessionId"

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    const-string v1, "__procTaskId"

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    const-string v1, "__procMasterCid"

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    const-string v1, "__procMainCCid"

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    const-wide/16 v1, 0x0

    const-string v3, "__procPauseTime"

    .line 100
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sput-wide v5, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 102
    sput-wide v1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restored, pauseDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms, taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", masterCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mainCCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 108
    sget-wide v3, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    const-wide/32 v5, 0x124f80

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 109
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide v3

    long-to-int v4, v3

    sput v4, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 111
    :cond_1
    sget-wide v3, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    invoke-static {p0, v3, v4}, Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 112
    sput-wide v1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    return p1

    :cond_2
    return v0
.end method

.method static save(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)V
    .locals 2

    .line 120
    sget p0, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    const-string v0, "__procId"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    sget p0, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    const-string v0, "__procSessionId"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    sget p0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    const-string v0, "__procTaskId"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    sget p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    const-string v0, "__procMasterCid"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    const-string p0, "__procMainCCid"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p0, "__procPauseTime"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method static setNewTask(I)V
    .locals 7

    .line 61
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-eq p0, v0, :cond_5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quit task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 64
    :cond_0
    sget v2, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    const-string v3, "new task "

    if-nez v2, :cond_2

    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " overrides old tasks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    const-string v4, ""

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, "master"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    cmp-long v3, v5, v0

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, "main"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 69
    :goto_3
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    const/4 p0, 0x0

    .line 70
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 71
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    :cond_5
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/ApplicationSessionHelper;
    .locals 2

    .line 222
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    iget-boolean v0, v0, Lcom/narvii/app/NVActivity;->newCreate:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    :cond_0
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/ApplicationSessionHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/ApplicationSessionHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 265
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    const-wide/16 p1, 0x0

    .line 267
    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 5

    .line 239
    instance-of p2, p1, Landroid/app/Application;

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 240
    sget-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    sub-long/2addr p1, v2

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 242
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    .line 243
    sget-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    const-wide/32 v0, 0x124f80

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 244
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    long-to-int p2, p1

    sput p2, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    goto :goto_0

    .line 248
    :cond_0
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    goto :goto_0

    .line 251
    :cond_1
    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    invoke-static {p1, v2, v3}, Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;J)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 252
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    goto :goto_0

    .line 253
    :cond_2
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_3

    .line 254
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide p1

    .line 255
    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_3

    .line 257
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 230
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    .line 231
    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    .line 232
    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 233
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    long-to-int p2, p1

    sput p2, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 273
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    .line 274
    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    .line 275
    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method
