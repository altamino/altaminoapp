.class public final Lkotlinx/coroutines/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;
    .locals 1
    .param p0    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/x2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlinx/coroutines/x2;-><init>(Lkotlinx/coroutines/b2;)V

    .line 6
    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/y2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
