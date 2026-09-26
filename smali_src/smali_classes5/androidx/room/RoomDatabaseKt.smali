.class public final Landroidx/room/RoomDatabaseKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoomDatabaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabaseExt.kt\nandroidx/room/RoomDatabaseKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,174:1\n314#2,11:175\n*S KotlinDebug\n*F\n+ 1 RoomDatabaseExt.kt\nandroidx/room/RoomDatabaseKt\n*L\n86#1:175,11\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/room/RoomDatabase;Lkotlin/coroutines/e;)Lkotlin/coroutines/g;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/room/RoomDatabaseKt;->b(Landroidx/room/RoomDatabase;Lkotlin/coroutines/e;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Landroidx/room/RoomDatabase;Lkotlin/coroutines/e;)Lkotlin/coroutines/g;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/room/TransactionElement;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/room/TransactionElement;-><init>(Lkotlin/coroutines/e;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->r()Ljava/lang/ThreadLocal;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lkotlinx/coroutines/a3;->a(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlinx/coroutines/z2;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static final c(Landroidx/room/RoomDatabase;Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/coroutines/g;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->s()Ljava/util/concurrent/Executor;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-instance v2, Landroidx/room/RoomDatabaseKt$startTransactionCoroutine$2$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p1, v0, p0, p2}, Landroidx/room/RoomDatabaseKt$startTransactionCoroutine$2$1;-><init>(Lkotlin/coroutines/g;Lkotlinx/coroutines/o;Landroidx/room/RoomDatabase;Le8/p;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p2, "Unable to acquire a thread to perform the database transaction."

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1}, Lkotlinx/coroutines/o;->e(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    if-ne p0, p1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 51
    :cond_0
    return-object p0
.end method

.method public static final d(Landroidx/room/RoomDatabase;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Le8/l<",
            "-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1}, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;-><init>(Landroidx/room/RoomDatabase;Le8/l;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget-object v2, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Landroidx/room/TransactionElement;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/room/TransactionElement;->e()Lkotlin/coroutines/e;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, v0, p2}, Landroidx/room/RoomDatabaseKt;->c(Landroidx/room/RoomDatabase;Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
