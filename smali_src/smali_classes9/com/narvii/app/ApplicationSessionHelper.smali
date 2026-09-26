.class public Lcom/narvii/app/ApplicationSessionHelper;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sput v0, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static getMainCommunityId()I
    .locals 4

    const-wide v0, 0xffffffffL

    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getSessionId()I
    .locals 1

    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    return v0
.end method

.method public static getTaskId()I
    .locals 1

    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    return v0
.end method

.method public static hasMainStacked()Z
    .locals 4

    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMasterStacked()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    shl-long/2addr v0, v2

    .line 16
    .line 17
    const-string v2, "config"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result p0

    .line 28
    int-to-long v2, p0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v4, 0xffffffffL

    .line 34
    and-long/2addr v2, v4

    .line 35
    or-long/2addr v0, v2

    .line 36
    .line 37
    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 38
    .line 39
    cmp-long p0, v2, v0

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 46
    :cond_0
    return-void
.end method

.method public static mainOpened(Lcom/narvii/app/NVActivity;)V
    .locals 6

    .line 1
    .line 2
    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    const/16 v2, 0x20

    .line 23
    shl-long/2addr v0, v2

    .line 24
    .line 25
    const-string v2, "config"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 35
    move-result p0

    .line 36
    int-to-long v2, p0

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v4, 0xffffffffL

    .line 42
    and-long/2addr v2, v4

    .line 43
    or-long/2addr v0, v2

    .line 44
    .line 45
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 46
    :cond_0
    return-void
.end method

.method public static masterFinished(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    .line 12
    move-result-wide v0

    .line 13
    long-to-int p0, v0

    .line 14
    .line 15
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 16
    .line 17
    if-ne v0, p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 19
    .line 20
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 21
    :cond_0
    return-void
.end method

.method public static masterOpened(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 8
    move-result v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContextId()J

    .line 16
    move-result-wide v0

    .line 17
    long-to-int p0, v0

    .line 18
    .line 19
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 20
    :cond_0
    return-void
.end method

.method private static resetApp(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 7
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "noSplash"

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "__noInheritance"

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "__noMapping"

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x10008000

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    invoke-static {p0, v1}, Lcom/narvii/app/ApplicationSessionHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 15
    instance-of p0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 16
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    return-void
.end method

.method private static resetApp(Lcom/narvii/app/NVContext;J)Z
    .locals 6

    sget-boolean v0, Lcom/narvii/app/ApplicationSessionHelper;->RESET_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    sget v2, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-wide/32 v2, 0x36ee80

    cmp-long p1, p1, v2

    if-lez p1, :cond_3

    .line 5
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    long-to-int p1, p1

    sput p1, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 6
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "__procId"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    move-result v1

    .line 11
    .line 12
    sget v2, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    .line 13
    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    .line 17
    .line 18
    const-string v1, "__procSessionId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v1

    .line 23
    .line 24
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 25
    .line 26
    const-string v1, "__procTaskId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 33
    .line 34
    const-string v1, "__procMasterCid"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    move-result v1

    .line 39
    .line 40
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 41
    .line 42
    const-string v1, "__procMainCCid"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    sput-wide v1, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 49
    .line 50
    const-string v1, "__procPauseTime"

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 56
    move-result-wide v4

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    move-result-wide v6

    .line 61
    sub-long/2addr v6, v4

    .line 62
    .line 63
    sput-wide v6, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 64
    .line 65
    sput-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    .line 66
    const/4 p1, 0x1

    .line 67
    .line 68
    iput-boolean p1, p0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v4, "session "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    sget v4, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v4, " restored, pauseDuration="

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, "ms, taskId="

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    sget v4, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v4, ", masterCid="

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    sget v4, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v4, ", mainCCid="

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 131
    .line 132
    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 133
    .line 134
    .line 135
    const-wide/32 v6, 0x124f80

    .line 136
    .line 137
    cmp-long v1, v4, v6

    .line 138
    .line 139
    if-lez v1, :cond_1

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    .line 143
    move-result-wide v4

    .line 144
    long-to-int v1, v4

    .line 145
    .line 146
    sput v1, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 147
    .line 148
    :cond_1
    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v4, v5}, Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;J)Z

    .line 152
    move-result p0

    .line 153
    .line 154
    if-eqz p0, :cond_2

    .line 155
    .line 156
    sput-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 157
    return p1

    .line 158
    :cond_2
    return v0
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static save(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    const-string p0, "__procId"

    .line 3
    .line 4
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->procId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    .line 9
    const-string p0, "__procSessionId"

    .line 10
    .line 11
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    const-string p0, "__procTaskId"

    .line 17
    .line 18
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    const-string p0, "__procMasterCid"

    .line 24
    .line 25
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    const-string p0, "__procMainCCid"

    .line 31
    .line 32
    sget-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 36
    .line 37
    const-string p0, "__procPauseTime"

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    return-void
.end method

.method static setNewTask(I)V
    .locals 7

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 3
    .line 4
    if-eq p0, v0, :cond_5

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v3, "quit task "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    sget v3, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 31
    goto :goto_3

    .line 32
    .line 33
    :cond_0
    sget v2, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 34
    .line 35
    const-string v3, "new task "

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    sget-wide v4, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 40
    .line 41
    cmp-long v2, v4, v0

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, " overrides old tasks "

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    sget v3, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, " ("

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    sget v3, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 92
    .line 93
    const-string v4, ""

    .line 94
    .line 95
    if-nez v3, :cond_3

    .line 96
    move-object v3, v4

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_3
    const-string v3, "master"

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    sget-wide v5, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 105
    .line 106
    cmp-long v3, v5, v0

    .line 107
    .line 108
    if-nez v3, :cond_4

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_4
    const-string v4, "main"

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, ")"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 127
    .line 128
    :goto_3
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->taskId:I

    .line 129
    const/4 p0, 0x0

    .line 130
    .line 131
    sput p0, Lcom/narvii/app/ApplicationSessionHelper;->masterCid:I

    .line 132
    .line 133
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->mainCCid:J

    .line 134
    :cond_5
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/ApplicationSessionHelper;
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    iget-boolean v0, v0, Lcom/narvii/app/NVActivity;->newCreate:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    :cond_0
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/app/ApplicationSessionHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/ApplicationSessionHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 2
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    const-wide/16 p1, 0x0

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 4

    .line 2
    instance-of p2, p1, Landroid/app/Application;

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    sget-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    sub-long/2addr p1, v2

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    const-wide/32 v0, 0x124f80

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 4
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    long-to-int p1, p1

    sput p1, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    goto :goto_0

    :cond_0
    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    goto :goto_0

    :cond_1
    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 5
    invoke-static {p1, v2, v3}, Lcom/narvii/app/ApplicationSessionHelper;->resetApp(Lcom/narvii/app/NVContext;J)Z

    move-result p2

    if-eqz p2, :cond_2

    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    goto :goto_0

    .line 6
    :cond_2
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide p1

    sget-wide v2, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    sput-wide v0, Lcom/narvii/app/ApplicationSessionHelper;->newCreateActivityCid:J

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 2
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    long-to-int p1, p1

    sput p1, Lcom/narvii/app/ApplicationSessionHelper;->sessionId:I

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V
    .locals 0

    .line 2
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseTime:J

    sput-wide p1, Lcom/narvii/app/ApplicationSessionHelper;->lastPauseDuration:J

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/ApplicationSessionHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/ApplicationSessionHelper;)V

    return-void
.end method
