.class public abstract Lcom/narvii/app/NVApplication;
.super Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;
    }
.end annotation


# static fields
.field public static CLIENT_TYPE:I = 0x0

.field public static final CLIENT_TYPE_ACM:I = 0xc8

.field public static final CLIENT_TYPE_MASTER:I = 0x64

.field public static DEBUG:Z = false

.field public static final DEFAULT_MAIN_HOST:Ljava/lang/String; = ".altamino.top"

.field public static FIRST_LAUNCH_SESSION:Z

.field public static FPR:Ljava/lang/String;

.field public static SERVICE_HOST:Ljava/lang/String;

.field public static final START_TIME:J

.field private static activeCounter:I

.field private static handler:Landroid/os/Handler;

.field private static instance:Lcom/narvii/app/NVApplication;

.field private static liveCounter:I

.field public static mainHost:Ljava/lang/String;


# instance fields
.field private cid:J

.field private firstFrameTime:J

.field private final lifecycleListener:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private serviceManager:Lcom/narvii/services/ServiceManager;

.field private sharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/NVSharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sput-wide v0, Lcom/narvii/app/NVApplication;->START_TIME:J

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    sput-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    sput v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 17
    .line 18
    const-string v1, ".altamino.top"

    .line 19
    .line 20
    sput-object v1, Lcom/narvii/app/NVApplication;->mainHost:Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/app/NVApplication$2;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/narvii/app/NVApplication$2;-><init>(Landroid/os/Looper;)V

    .line 32
    .line 33
    sput-object v0, Lcom/narvii/app/NVApplication;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method protected constructor <init>(ZILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/app/NVApplication$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/app/NVApplication$3;-><init>(Lcom/narvii/app/NVApplication;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/app/NVApplication;->lifecycleListener:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 25
    .line 26
    const/4 p1, 0x1

    sput-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 27
    .line 28
    sput p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 29
    .line 30
    sget-object p1, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    const-string p3, ".altamino.top"

    .line 36
    .line 37
    :goto_0
    sput-object p3, Lcom/narvii/app/NVApplication;->mainHost:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    .line 41
    move-result-wide p1

    .line 42
    .line 43
    iput-wide p1, p0, Lcom/narvii/app/NVApplication;->cid:J

    .line 44
    .line 45
    sput-object p0, Lcom/narvii/app/NVApplication;->instance:Lcom/narvii/app/NVApplication;

    .line 46
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/app/NVApplication;->lambda$onCreate$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/app/NVApplication;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/app/NVApplication;->firstFrameTime:J

    return-wide v0
.end method

.method static bridge synthetic d(Lcom/narvii/app/NVApplication;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/narvii/app/NVApplication;->firstFrameTime:J

    return-void
.end method

.method static bridge synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/narvii/app/NVApplication;->activeCounter:I

    return v0
.end method

.method static bridge synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcom/narvii/app/NVApplication;->liveCounter:I

    return v0
.end method

.method static bridge synthetic g(I)V
    .locals 0

    .line 1
    sput p0, Lcom/narvii/app/NVApplication;->activeCounter:I

    return-void
.end method

.method public static getApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method static bridge synthetic h(I)V
    .locals 0

    .line 1
    sput p0, Lcom/narvii/app/NVApplication;->liveCounter:I

    return-void
.end method

.method public static instance()Lcom/narvii/app/NVApplication;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/NVApplication;->instance:Lcom/narvii/app/NVApplication;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "narvii"

    .line 8
    .line 9
    const-string v1, "Application has not been created, exit"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 20
    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Application has not been created"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public static isBasedOnMeishe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$onCreate$0(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/logging/LogUtils;->resetLogInfo()V

    .line 4
    return-void
.end method

.method public static safedk_RedirectBlockingApplication_startActivity_3be0b6d71cb8c962ce03bf5f0efc2635(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setupComScoreLib()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/comscore/PublisherConfiguration$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/comscore/PublisherConfiguration$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "22489583"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/comscore/PublisherConfiguration$Builder;->publisherId(Ljava/lang/String;)Lcom/comscore/PublisherConfiguration$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/comscore/PublisherConfiguration$Builder;->build()Lcom/comscore/PublisherConfiguration;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/comscore/Analytics;->getConfiguration()Lcom/comscore/Configuration;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/comscore/Configuration;->addClient(Lcom/comscore/ClientConfiguration;)V

    .line 23
    .line 24
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/comscore/Analytics;->getConfiguration()Lcom/comscore/Configuration;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/comscore/Configuration;->enableImplementationValidationMode()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/comscore/Analytics;->start(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method _getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected activityOnCreate(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    .line 2
    sget p1, Lcom/narvii/app/NVApplication;->liveCounter:I

    .line 3
    .line 4
    add-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    sput v0, Lcom/narvii/app/NVApplication;->liveCounter:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->onApplicationStart()V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method protected activityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/app/NVApplication;->handler:Landroid/os/Handler;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method protected activityOnPause(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/app/NVApplication;->handler:Landroid/os/Handler;

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method protected activityOnResume(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    .line 2
    sget p1, Lcom/narvii/app/NVApplication;->activeCounter:I

    .line 3
    .line 4
    add-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    sput v0, Lcom/narvii/app/NVApplication;->activeCounter:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->onApplicationResume()V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method protected activityOnStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected activityOnStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public addLifecycleListener(Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method protected beforeServiceManagerCreated()V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getContextId()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/app/NVApplication;->cid:J

    return-wide v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getService(ILjava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    .line 3
    monitor-enter p2

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/util/NVSharedPreferences;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVApplication;->_getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    monitor-exit p2

    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance v1, Lcom/narvii/util/NVSharedPreferences;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/narvii/util/NVSharedPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-object v0, v1

    .line 37
    :cond_1
    monitor-exit p2

    .line 38
    return-object v0

    .line 39
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public abstract initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V
.end method

.method protected abstract initApplicationServices(Lcom/narvii/services/ServiceManager;)V
.end method

.method public isAppInForeground()Z
    .locals 1

    sget v0, Lcom/narvii/app/NVApplication;->activeCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onApplicationPause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationPause(Landroid/app/Application;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 28
    .line 29
    const-string v0, "application pause"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/NVToast;->dismiss(Z)V

    .line 39
    return-void
.end method

.method protected onApplicationResume()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 4
    .line 5
    const-string v0, "application resume"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationResume(Landroid/app/Application;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/NVApplication;->firstFrameTime:J

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    cmp-long v0, v0, v2

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/app/NVApplication$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/narvii/app/NVApplication$1;-><init>(Lcom/narvii/app/NVApplication;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 52
    :cond_1
    return-void
.end method

.method protected onApplicationStart()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 4
    .line 5
    const-string v0, "application start"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->start()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationStart(Landroid/app/Application;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method protected onApplicationStop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationStop(Landroid/app/Application;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 28
    .line 29
    const-string v0, "application stop"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 36
    .line 37
    sput-boolean v0, Lcom/narvii/app/NVApplication;->FIRST_LAUNCH_SESSION:Z

    .line 38
    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    .line 5
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v4, 0x1c

    .line 15
    .line 16
    if-ne v0, v4, :cond_0

    .line 17
    .line 18
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v4, "currentActivityThread"

    .line 25
    .line 26
    new-array v5, v3, [Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    .line 35
    new-array v5, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    const-string v5, "mHiddenApiWarningShown"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .line 55
    const-string v4, "fail to set mHiddenApiWarningShown"

    .line 56
    .line 57
    .line 58
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    new-instance v4, Lcom/narvii/app/h;

    .line 65
    .line 66
    .line 67
    invoke-direct {v4}, Lcom/narvii/app/h;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 71
    .line 72
    sput-boolean v3, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 73
    .line 74
    new-instance v0, Ljava/io/File;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 78
    move-result-object v4

    .line 79
    .line 80
    const-string v5, "did"

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 87
    move-result-wide v4

    .line 88
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    cmp-long v0, v4, v6

    .line 92
    .line 93
    if-nez v0, :cond_1

    .line 94
    move v0, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v0, v3

    .line 97
    .line 98
    :goto_1
    sput-boolean v0, Lcom/narvii/app/NVApplication;->FIRST_LAUNCH_SESSION:Z

    .line 99
    .line 100
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-string v4, "__debug"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    const-string v4, "fakeProduction"

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 118
    move-result v4

    .line 119
    .line 120
    const-string v5, "apiServerHost"

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v5

    .line 125
    .line 126
    if-eqz v4, :cond_2

    .line 127
    .line 128
    sget-object v4, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 129
    .line 130
    if-nez v4, :cond_2

    .line 131
    .line 132
    sget v4, Lcom/narvii/lib/R$string;->_fake_production_id:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    sput-object v4, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 139
    .line 140
    const-string v4, ".altamino.top"

    .line 141
    .line 142
    sput-object v4, Lcom/narvii/app/NVApplication;->mainHost:Ljava/lang/String;

    .line 143
    .line 144
    sput-object v1, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_2
    if-eqz v5, :cond_3

    .line 148
    .line 149
    sput-object v5, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    .line 150
    .line 151
    const-string v4, "https"

    .line 152
    .line 153
    sput-object v4, Lcom/narvii/util/http/ApiService;->FORCE_SCHEME:Ljava/lang/String;

    .line 154
    .line 155
    :cond_3
    :goto_2
    :try_start_1
    const-string v4, "leakCanary"

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    const-string v0, "com.squareup.leakcanary.LeakCanary"

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    const-string v4, "install"

    .line 170
    .line 171
    new-array v5, v2, [Ljava/lang/Class;

    .line 172
    .line 173
    const-class v6, Landroid/app/Application;

    .line 174
    .line 175
    aput-object v6, v5, v3

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    new-array v2, v2, [Ljava/lang/Object;

    .line 182
    .line 183
    aput-object p0, v2, v3

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    goto :goto_3

    .line 188
    :catch_1
    move-exception v0

    .line 189
    .line 190
    const-string v1, "fail to init LeakCanary"

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->setupCrashlytics()V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0}, Lcom/narvii/app/NVApplication;->setupComScoreLib()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->beforeServiceManagerCreated()V

    .line 203
    .line 204
    new-instance v0, Lcom/narvii/services/ServiceManager;

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 208
    .line 209
    iput-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->initApplicationServices(Lcom/narvii/services/ServiceManager;)V

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->create()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 224
    .line 225
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->lifecycleListener:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 229
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v1, "lowMemory"

    .line 8
    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 9
    return-void
.end method

.method public peekService(ILjava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/services/ServiceManager;->peekService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public removeLifecycleListener(Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method protected setupCrashlytics()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->init(Landroid/content/Context;ZLjava/lang/String;)V

    .line 7
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->justStartActivity(Landroid/content/Intent;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "navigator"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->trackStartActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/app/NVApplication;->safedk_RedirectBlockingApplication_startActivity_3be0b6d71cb8c962ce03bf5f0efc2635(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingApplication;Landroid/content/Intent;)V

    .line 30
    return-void
.end method
