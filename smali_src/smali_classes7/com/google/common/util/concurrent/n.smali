.class public final Lcom/google/common/util/concurrent/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/n$b;,
        Lcom/google/common/util/concurrent/n$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lcom/google/common/util/concurrent/m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lcom/google/common/util/concurrent/m;

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/google/common/util/concurrent/n$b;

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n$b;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 19
    :goto_0
    move-object p0, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/google/common/util/concurrent/n$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n$a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return-object p0
.end method
