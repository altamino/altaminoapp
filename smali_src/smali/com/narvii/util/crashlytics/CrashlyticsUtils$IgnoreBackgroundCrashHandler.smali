.class Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;->parent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$IgnoreBackgroundCrashHandler;->parent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string p1, "narvii"

    .line 13
    .line 14
    const-string p2, "background crash, kill process!"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 25
    :goto_0
    return-void
.end method
