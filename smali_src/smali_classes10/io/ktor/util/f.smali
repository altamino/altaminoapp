.class public final Lio/ktor/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHUNK_BUFFER_SIZE:J = 0x1000L


# direct methods
.method public static final a(Lio/ktor/utils/io/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .param p0    # Lio/ktor/utils/io/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/g;",
            "Lkotlin/coroutines/d<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lio/ktor/util/f$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lio/ktor/util/f$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/util/f$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/util/f$a;->label:I

    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Lio/ktor/util/f$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lio/ktor/util/f$a;-><init>(Lkotlin/coroutines/d;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    iget-object p1, v4, Lio/ktor/util/f$a;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget v1, v4, Lio/ktor/util/f$a;->label:I

    .line 35
    const/4 v7, 0x1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-ne v1, v7, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    const/4 v5, 0x1

    .line 58
    const/4 v6, 0x0

    .line 59
    .line 60
    iput v7, v4, Lio/ktor/util/f$a;->label:I

    .line 61
    move-object v1, p0

    .line 62
    .line 63
    .line 64
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/g$b;->a(Lio/ktor/utils/io/g;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    return-object v0

    .line 69
    .line 70
    :cond_3
    :goto_2
    check-cast p1, Lr7/j;

    .line 71
    const/4 p0, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p0, v7, v0}, Lr7/s;->c(Lr7/j;IILjava/lang/Object;)[B

    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
