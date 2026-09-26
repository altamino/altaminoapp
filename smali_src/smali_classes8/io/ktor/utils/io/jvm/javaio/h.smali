.class public final Lio/ktor/utils/io/jvm/javaio/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reading.kt\nio/ktor/utils/io/jvm/javaio/ReadingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/io/InputStream;Lkotlin/coroutines/g;Lt7/g;)Lio/ktor/utils/io/g;
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/g;",
            "Lt7/g<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lio/ktor/utils/io/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "context"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "pool"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v0, Lkotlinx/coroutines/t1;->INSTANCE:Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    new-instance v1, Lio/ktor/utils/io/jvm/javaio/h$a;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p2, p0, v2}, Lio/ktor/utils/io/jvm/javaio/h$a;-><init>(Lt7/g;Ljava/io/InputStream;Lkotlin/coroutines/d;)V

    .line 24
    const/4 p0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, p0, v1}, Lio/ktor/utils/io/q;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;)Lio/ktor/utils/io/v;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Lio/ktor/utils/io/v;->d()Lio/ktor/utils/io/g;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final b(Ljava/io/InputStream;Lkotlin/coroutines/g;Lt7/g;)Lio/ktor/utils/io/g;
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/g;",
            "Lt7/g<",
            "[B>;)",
            "Lio/ktor/utils/io/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "context"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "pool"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v0, Lkotlinx/coroutines/t1;->INSTANCE:Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    new-instance v1, Lio/ktor/utils/io/jvm/javaio/h$b;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p2, p0, v2}, Lio/ktor/utils/io/jvm/javaio/h$b;-><init>(Lt7/g;Ljava/io/InputStream;Lkotlin/coroutines/d;)V

    .line 24
    const/4 p0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, p0, v1}, Lio/ktor/utils/io/q;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;)Lio/ktor/utils/io/v;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Lio/ktor/utils/io/v;->d()Lio/ktor/utils/io/g;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static synthetic c(Ljava/io/InputStream;Lkotlin/coroutines/g;Lt7/g;ILjava/lang/Object;)Lio/ktor/utils/io/g;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlinx/coroutines/e1;->b()Lkotlinx/coroutines/k0;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lt7/a;->a()Lt7/g;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/h;->b(Ljava/io/InputStream;Lkotlin/coroutines/g;Lt7/g;)Lio/ktor/utils/io/g;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
