.class public final Lkotlin/concurrent/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Thread.kt\nkotlin/concurrent/ThreadsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation


# direct methods
.method public static final a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILe8/a;)Ljava/lang/Thread;
    .locals 1
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "I",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlin/concurrent/a$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p5}, Lkotlin/concurrent/a$a;-><init>(Le8/a;)V

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 17
    .line 18
    :cond_0
    if-lez p4, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/Thread;->setPriority(I)V

    .line 22
    .line 23
    :cond_1
    if-eqz p3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 27
    .line 28
    :cond_2
    if-eqz p2, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    :cond_3
    if-eqz p0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    :cond_4
    return-object v0
.end method

.method public static synthetic b(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILe8/a;ILjava/lang/Object;)Ljava/lang/Thread;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x1

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    move v0, p0

    .line 7
    .line 8
    and-int/lit8 p0, p6, 0x2

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_1
    move v1, p1

    .line 13
    .line 14
    and-int/lit8 p0, p6, 0x4

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    move-object v2, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move-object v2, p2

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p0, p6, 0x8

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    move-object v3, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    move-object v3, p3

    .line 28
    .line 29
    :goto_1
    and-int/lit8 p0, p6, 0x10

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    const/4 p4, -0x1

    .line 33
    :cond_4
    move v4, p4

    .line 34
    move-object v5, p5

    .line 35
    .line 36
    .line 37
    invoke-static/range {v0 .. v5}, Lkotlin/concurrent/a;->a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILe8/a;)Ljava/lang/Thread;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
