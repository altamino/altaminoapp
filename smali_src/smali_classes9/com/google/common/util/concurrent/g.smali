.class public final Lcom/google/common/util/concurrent/g;
.super Lcom/google/common/util/concurrent/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/g$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/k<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/f<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/g$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/g$a;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/f;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/k;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 12
    return-void
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "Future was expected to be done: %s"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Lcom/google/common/base/o;->r(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/common/util/concurrent/s;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
