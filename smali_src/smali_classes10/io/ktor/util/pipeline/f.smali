.class public final Lio/ktor/util/pipeline/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/g;Z)Lio/ktor/util/pipeline/e;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TSubject:",
            "Ljava/lang/Object;",
            "TContext:",
            "Ljava/lang/Object;",
            ">(TTContext;",
            "Ljava/util/List<",
            "+",
            "Le8/q<",
            "-",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;TTSubject;",
            "Lkotlin/coroutines/g;",
            "Z)",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "interceptors"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "subject"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "coroutineContext"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lio/ktor/util/pipeline/g;->a()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p3, Lio/ktor/util/pipeline/n;

    .line 32
    .line 33
    .line 34
    invoke-direct {p3, p2, p0, p1}, Lio/ktor/util/pipeline/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    new-instance p4, Lio/ktor/util/pipeline/a;

    .line 38
    .line 39
    .line 40
    invoke-direct {p4, p0, p1, p2, p3}, Lio/ktor/util/pipeline/a;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    .line 41
    move-object p3, p4

    .line 42
    :goto_1
    return-object p3
.end method
