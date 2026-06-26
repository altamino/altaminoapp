.class public abstract Lcom/narvii/app/NVApplication;
.super Landroid/app/Application;
.source "NVApplication.java"

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

.field public static final CLIENT_TYPE_STANDALONE:I = 0x65

.field public static final CLIENT_TYPE_STORY_EDITOR:I = 0xc9

.field public static DEBUG:Z

.field public static FAKE_PRODUCTION:Ljava/lang/String;

.field public static FIRST_LAUNCH_SESSION:Z

.field public static MAIN_HOST:Ljava/lang/String;

.field public static SERVICE_HOST:Ljava/lang/String;

.field public static final START_TIME:J

.field private static activeCounter:I

.field private static handler:Landroid/os/Handler;

.field private static instance:Lcom/narvii/app/NVApplication;

.field private static liveCounter:I


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

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/app/NVApplication;->START_TIME:J

    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/narvii/app/NVApplication;->FAKE_PRODUCTION:Ljava/lang/String;

    const/16 v1, 0x65

    .line 52
    sput v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const-string v1, ".altamino.top"

    .line 53
    sput-object v1, Lcom/narvii/app/NVApplication;->MAIN_HOST:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    .line 414
    new-instance v0, Lcom/narvii/app/NVApplication$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/app/NVApplication$3;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/app/NVApplication;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(ZILjava/lang/String;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    .line 472
    new-instance v0, Lcom/narvii/app/NVApplication$4;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVApplication$4;-><init>(Lcom/narvii/app/NVApplication;)V

    iput-object v0, p0, Lcom/narvii/app/NVApplication;->lifecycleListener:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 120
    sput p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 121
    sget-object p1, Lcom/narvii/app/NVApplication;->FAKE_PRODUCTION:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ".altamino.top"

    :goto_0
    sput-object p3, Lcom/narvii/app/NVApplication;->MAIN_HOST:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/app/NVApplication;->cid:J

    .line 123
    sput-object p0, Lcom/narvii/app/NVApplication;->instance:Lcom/narvii/app/NVApplication;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/NVApplication;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/narvii/app/NVApplication;->firstFrameTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/narvii/app/NVApplication;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/narvii/app/NVApplication;->firstFrameTime:J

    return-wide p1
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 40
    sput p0, Lcom/narvii/app/NVApplication;->liveCounter:I

    return p0
.end method

.method static synthetic access$106()I
    .locals 1

    .line 40
    sget v0, Lcom/narvii/app/NVApplication;->liveCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/narvii/app/NVApplication;->liveCounter:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 40
    sput p0, Lcom/narvii/app/NVApplication;->activeCounter:I

    return p0
.end method

.method static synthetic access$206()I
    .locals 1

    .line 40
    sget v0, Lcom/narvii/app/NVApplication;->activeCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/narvii/app/NVApplication;->activeCounter:I

    return v0
.end method

.method public static getApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 207
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static instance()Lcom/narvii/app/NVApplication;
    .locals 2

    .line 108
    sget-object v0, Lcom/narvii/app/NVApplication;->instance:Lcom/narvii/app/NVApplication;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "narvii"

    const-string v1, "Application has not been created, exit"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application has not been created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isBasedOnMeishe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isStoryEditorApp()Z
    .locals 2

    .line 198
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method _getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 313
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method protected activityOnCreate(Landroid/app/Activity;)Z
    .locals 1

    .line 439
    sget p1, Lcom/narvii/app/NVApplication;->liveCounter:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/narvii/app/NVApplication;->liveCounter:I

    if-nez p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->onApplicationStart()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected activityOnDestory(Landroid/app/Activity;)V
    .locals 1

    .line 447
    sget-object p1, Lcom/narvii/app/NVApplication;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected activityOnPause(Landroid/app/Activity;)V
    .locals 1

    .line 463
    sget-object p1, Lcom/narvii/app/NVApplication;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected activityOnResume(Landroid/app/Activity;)Z
    .locals 1

    .line 451
    sget p1, Lcom/narvii/app/NVApplication;->activeCounter:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/narvii/app/NVApplication;->activeCounter:I

    if-nez p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->onApplicationResume()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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

    .line 337
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getContextId()J
    .locals 2

    .line 285
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

    .line 251
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

    .line 267
    iget-object p1, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 270
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

    .line 263
    invoke-virtual {p0, p0, p1}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 318
    iget-object p2, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    monitor-enter p2

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/NVSharedPreferences;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVApplication;->_getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 323
    monitor-exit p2

    return-object p1

    .line 325
    :cond_0
    new-instance v1, Lcom/narvii/util/NVSharedPreferences;

    invoke-direct {v1, v0}, Lcom/narvii/util/NVSharedPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 326
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->sharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 328
    :cond_1
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p1

    .line 329
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V
.end method

.method protected abstract initApplicationServices(Lcom/narvii/services/ServiceManager;)V
.end method

.method public isAppInForeground()Z
    .locals 1

    .line 459
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

    .line 401
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 402
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationPause(Landroid/app/Application;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->pause()V

    const-string v0, "application pause"

    .line 407
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 408
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 409
    invoke-static {v0}, Lcom/narvii/util/NVToast;->dismiss(Z)V

    return-void
.end method

.method protected onApplicationResume()V
    .locals 5

    const/4 v0, 0x1

    .line 374
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    const-string v0, "application resume"

    .line 375
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 379
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 380
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationResume(Landroid/app/Application;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/NVApplication;->firstFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 384
    new-instance v0, Lcom/narvii/app/NVApplication$2;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVApplication$2;-><init>(Lcom/narvii/app/NVApplication;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onApplicationStart()V
    .locals 2

    const/4 v0, 0x1

    .line 351
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    const-string v0, "application start"

    .line 352
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->start()V

    .line 356
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 357
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationStart(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onApplicationStop()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;

    .line 363
    invoke-interface {v1, p0}, Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;->onApplicationStop(Landroid/app/Application;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->stop()V

    const-string v0, "application stop"

    .line 368
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 369
    sput-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 370
    sput-boolean v0, Lcom/narvii/app/NVApplication;->FIRST_LAUNCH_SESSION:Z

    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 128
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/DBAminoLightHelper;->InitDatabaseAminoLight(Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string v0, "debug"

    invoke-static {v0, v1}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 131
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "currentActivityThread"

    new-array v5, v3, [Ljava/lang/Class;

    .line 132
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 133
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    .line 134
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mHiddenApiWarningShown"

    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "fail to set mHiddenApiWarningShown"

    .line 139
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v4, Lcom/narvii/app/NVApplication$1;

    invoke-direct {v4, p0}, Lcom/narvii/app/NVApplication$1;-><init>(Lcom/narvii/app/NVApplication;)V

    invoke-virtual {v0, v4}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 150
    sput-boolean v3, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "did"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/narvii/app/NVApplication;->FIRST_LAUNCH_SESSION:Z

    .line 154
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "__debug"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "fakeProduction"

    .line 156
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "apiServerHost"

    .line 157
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 158
    sget-object v4, Lcom/narvii/app/NVApplication;->FAKE_PRODUCTION:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 159
    sget v4, Lcom/narvii/lib/R$string;->_fake_production_id:I

    invoke-virtual {p0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/narvii/app/NVApplication;->FAKE_PRODUCTION:Ljava/lang/String;

    const-string v4, ".altamino.top"

    .line 160
    sput-object v4, Lcom/narvii/app/NVApplication;->MAIN_HOST:Ljava/lang/String;

    .line 161
    sput-object v1, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    .line 163
    sput-object v5, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    const-string v4, "https"

    .line 164
    sput-object v4, Lcom/narvii/util/http/ApiService;->FORCE_SCHEME:Ljava/lang/String;

    :cond_3
    :goto_2
    :try_start_1
    const-string v4, "leakCanary"

    .line 168
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.squareup.leakcanary.LeakCanary"

    .line 170
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "install"

    new-array v5, v2, [Ljava/lang/Class;

    .line 171
    const-class v6, Landroid/app/Application;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "fail to init LeakCanary"

    .line 176
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 184
    :cond_4
    :goto_3
    new-instance v0, Lcom/narvii/services/ServiceManager;

    invoke-direct {v0, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 185
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->initApplicationServices(Lcom/narvii/services/ServiceManager;)V

    .line 186
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->create()V

    .line 189
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 194
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->lifecycleListener:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 228
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 229
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    const-string v1, "lowMemory"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 223
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

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

    .line 255
    iget-object p1, p0, Lcom/narvii/app/NVApplication;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 258
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/services/ServiceManager;->peekService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeLifecycleListener(Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/narvii/app/NVApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setupCrashlytics()V
    .locals 2

    .line 237
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->init(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->justStartActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "navigator"

    .line 299
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    if-eqz v0, :cond_1

    .line 301
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 304
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->trackStartActivity(Landroid/content/Intent;)V

    .line 305
    invoke-super {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
