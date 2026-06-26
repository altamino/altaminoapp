.class Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;
.super Ljava/lang/Object;
.source "CrashlyticsUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoreBackgroundCrashHandler"
.end annotation


# instance fields
.field private parent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;->parent:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 254
    sget-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;->parent:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "narvii"

    const-string p2, "background crash, kill process!"

    .line 257
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    return-void
.end method
