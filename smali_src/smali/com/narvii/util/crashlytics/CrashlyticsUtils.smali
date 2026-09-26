.class public Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$PreFilterCrashHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;
    }
.end annotation


# static fields
.field private static final CRASHTYPE_ANR:I = 0x4

.field private static final CRASHTYPE_COCOS2DX_JS:I = 0x5

.field private static final CRASHTYPE_COCOS2DX_LUA:I = 0x6

.field private static final CRASHTYPE_JAVA_CATCH:I = 0x1

.field private static final CRASHTYPE_JAVA_CRASH:I = 0x0

.field private static final CRASHTYPE_NATIVE:I = 0x2

.field private static final CRASHTYPE_U3D:I = 0x3

.field public static ENABLED:Z

.field private static final accountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private static active:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

.field private static crashLogFile:Ljava/io/File;

.field public static devLogger:Lcom/narvii/util/crashlytics/DevLogger;

.field public static foreground:Z

.field public static final images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

.field private static inited:Z

.field private static initializing:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

.field public static final states:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final updateCrashlyticsUserInfo:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 19
    .line 20
    const/16 v1, 0x40

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;-><init>(I)V

    .line 24
    .line 25
    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;-><init>()V

    .line 31
    .line 32
    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$2;-><init>()V

    .line 38
    .line 39
    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 40
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

.method static bridge synthetic a()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getActiveActivity()Lcom/narvii/app/NVActivity;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->active:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 13
    :goto_0
    return-object v0
.end method

.method public static getInitializingActivity()Lcom/narvii/app/NVActivity;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->initializing:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 13
    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->init(Landroid/content/Context;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 4

    sget-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->inited:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    sput-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->inited:Z

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    const-wide/16 v1, 0x190

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;

    invoke-direct {p1, p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4
    new-instance p1, Lcom/narvii/util/crashlytics/DevLogger;

    const/16 v3, 0x50

    invoke-direct {p1, v3}, Lcom/narvii/util/crashlytics/DevLogger;-><init>(I)V

    sput-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    .line 5
    sget-object p1, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    sget-object v3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    sput-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->ENABLED:Z

    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    .line 6
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 7
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_1
    sput-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->ENABLED:Z

    .line 9
    new-instance p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;

    invoke-direct {p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;-><init>()V

    .line 10
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 11
    new-instance p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils$PreFilterCrashHandler;

    invoke-direct {p3, p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$PreFilterCrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 12
    invoke-static {p3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    .line 13
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 14
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 16
    :cond_2
    :goto_0
    sget-object p1, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    new-instance p3, Lcom/narvii/util/crashlytics/OomHelper$OomCountLogger;

    invoke-direct {p3}, Lcom/narvii/util/crashlytics/OomHelper$OomCountLogger;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string p3, "crash.log"

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_7

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x493e0

    cmp-long p0, p0, v0

    if-gez p0, :cond_6

    :try_start_0
    sget-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    .line 20
    invoke-static {p0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-static {p0, p1, p2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 21
    new-instance p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    invoke-direct {p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;-><init>()V

    const/4 p3, 0x0

    .line 22
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->crashType:I

    .line 23
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorType:Ljava/lang/String;

    const/4 p2, 0x2

    .line 24
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorMessage:Ljava/lang/String;

    const/4 p2, 0x3

    .line 25
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorStack:Ljava/lang/String;

    const/4 p2, 0x4

    .line 26
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->states:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x5

    const/4 v0, 0x0

    if-le p2, p3, :cond_3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el1Active:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x6

    if-le p2, p3, :cond_4

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p2, v0

    :goto_2
    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el2Activities:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x7

    if-le p2, p3, :cond_5

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_5
    iput-object v0, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el3Images:Ljava/lang/String;

    sput-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    sget-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    return-void
.end method

.method public static removeActiveActivity(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->getActiveActivity()Lcom/narvii/app/NVActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne v0, p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    .line 9
    sput-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->active:Ljava/lang/ref/WeakReference;

    .line 10
    :cond_0
    return-void
.end method

.method public static setActiveActivity(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->active:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsKey()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->add(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static setInitializingActivity(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    move-object p0, v0

    .line 11
    .line 12
    :goto_0
    sput-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->initializing:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method private static writeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    .line 11
    :goto_0
    if-ge v0, v1, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 15
    move-result v2

    .line 16
    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 29
    .line 30
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method
