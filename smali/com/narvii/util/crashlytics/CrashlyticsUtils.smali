.class public Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.super Ljava/lang/Object;
.source "CrashlyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$PreFilterCrashHandler;,
        Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;,
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

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;-><init>(I)V

    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 59
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;-><init>(I)V

    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    .line 187
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;

    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;-><init>()V

    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$2;

    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$2;-><init>()V

    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .locals 1

    .line 46
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .line 46
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->writeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static getActiveActivity()Lcom/narvii/app/NVActivity;
    .locals 1

    .line 98
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->active:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    :goto_0
    return-object v0
.end method

.method public static getInitializingActivity()Lcom/narvii/app/NVActivity;
    .locals 1

    .line 89
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->initializing:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->init(Landroid/content/Context;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 12

    .line 118
    sget-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->inited:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 121
    sput-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->inited:Z

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    const-wide/16 v4, 0x190

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x7

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    .line 123
    new-instance p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;

    invoke-direct {p1, p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 126
    new-instance p1, Lcom/narvii/util/crashlytics/DevLogger;

    const/16 v11, 0x50

    invoke-direct {p1, v11}, Lcom/narvii/util/crashlytics/DevLogger;-><init>(I)V

    sput-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    .line 127
    sget-object p1, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    sget-object v11, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 130
    sput-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->ENABLED:Z

    .line 132
    new-instance p1, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;

    invoke-direct {p3, v10}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;-><init>(Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;)V

    invoke-virtual {p1, p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    .line 134
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 136
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    invoke-static {p1, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 137
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 138
    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 142
    :cond_1
    sput-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->ENABLED:Z

    .line 144
    new-instance p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;

    invoke-direct {p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;-><init>()V

    .line 145
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 147
    new-instance p3, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {p3, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v11, Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;

    invoke-direct {v11, v10}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;-><init>(Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;)V

    invoke-virtual {p3, v11}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    .line 149
    invoke-static {p0, p3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 151
    new-instance p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils$PreFilterCrashHandler;

    invoke-direct {p3, p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$PreFilterCrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 152
    invoke-static {p3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 154
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->updateCrashlyticsUserInfo:Ljava/lang/Runnable;

    invoke-static {p1, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 155
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 156
    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 159
    sget-object p1, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    new-instance p3, Lcom/narvii/util/crashlytics/BuglyLogger;

    new-instance v3, Ljava/util/HashSet;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "narvii"

    aput-object v5, v4, v2

    const-string v5, "narvii_push"

    aput-object v5, v4, p2

    const-string v5, "api"

    aput-object v5, v4, v1

    const-string/jumbo v5, "statistics"

    aput-object v5, v4, v0

    const-string v5, "nh"

    aput-object v5, v4, v9

    const-string/jumbo v5, "youtube"

    aput-object v5, v4, v7

    const-string v5, "onSaveInstanceState"

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p3, v9, v3}, Lcom/narvii/util/crashlytics/BuglyLogger;-><init>(ILjava/util/Set;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    :goto_0
    sget-object p1, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    new-instance p3, Lcom/narvii/util/crashlytics/OomHelper$OomCountLogger;

    invoke-direct {p3}, Lcom/narvii/util/crashlytics/OomHelper$OomCountLogger;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string p3, "crash.log"

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    .line 166
    sget-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long p3, p0, v3

    if-lez p3, :cond_7

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x493e0

    cmp-long p3, p0, v3

    if-gez p3, :cond_6

    .line 169
    :try_start_0
    sget-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    invoke-static {p0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-static {p0, p1, p2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 170
    new-instance p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    invoke-direct {p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;-><init>()V

    .line 171
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->crashType:I

    .line 172
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorType:Ljava/lang/String;

    .line 173
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorMessage:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorStack:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->states:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v7, :cond_3

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v10

    :goto_1
    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el1Active:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v6, :cond_4

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p2, v10

    :goto_2
    iput-object p2, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el2Activities:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v8, :cond_5

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ljava/lang/String;

    :cond_5
    iput-object v10, p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->el3Images:Ljava/lang/String;

    .line 179
    sput-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    :cond_6
    sget-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->crashLogFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    return-void
.end method

.method public static removeActiveActivity(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->getActiveActivity()Lcom/narvii/app/NVActivity;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 109
    sput-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->active:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public static setActiveActivity(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->active:Ljava/lang/ref/WeakReference;

    .line 104
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->add(Ljava/lang/String;)V

    return-void
.end method

.method public static setInitializingActivity(Lcom/narvii/app/NVActivity;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    sput-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->initializing:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static writeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    const/16 v2, 0x20

    .line 404
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 406
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
