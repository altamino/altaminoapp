.class public Lcom/narvii/util/crashlytics/BuglyLogger;
.super Ljava/lang/Object;
.source "BuglyLogger.java"

# interfaces
.implements Lcom/narvii/util/log/Logger;


# instance fields
.field private level:I

.field private tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/narvii/util/crashlytics/BuglyLogger;->level:I

    .line 22
    iput-object p2, p0, Lcom/narvii/util/crashlytics/BuglyLogger;->tags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 27
    iget v0, p0, Lcom/narvii/util/crashlytics/BuglyLogger;->level:I

    const/4 v1, 0x6

    if-lt p1, v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/narvii/util/crashlytics/BuglyLogger;->tags:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/tencent/bugly/crashreport/BuglyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p2, p3}, Lcom/tencent/bugly/crashreport/BuglyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p2, p3}, Lcom/tencent/bugly/crashreport/BuglyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_3
    invoke-static {p2, p3}, Lcom/tencent/bugly/crashreport/BuglyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    invoke-static {p2, p3}, Lcom/tencent/bugly/crashreport/BuglyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-ne p1, v1, :cond_7

    if-nez p4, :cond_6

    .line 47
    invoke-static {p3}, Lcom/narvii/util/Log;->msgException(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p4

    .line 48
    :cond_6
    invoke-static {p4}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method
