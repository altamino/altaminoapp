.class public final Lio/ktor/utils/io/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Z)Lio/ktor/utils/io/c;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lio/ktor/utils/io/a;

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x6

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move v1, p0

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/a;-><init>(ZLt7/g;IILkotlin/jvm/internal/k;)V

    .line 12
    return-object v6
.end method

.method public static final b(ZLe8/l;)Lio/ktor/utils/io/c;
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/ktor/utils/io/c;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "exceptionMapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/utils/io/e$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/e$a;-><init>(ZLe8/l;)V

    .line 11
    return-object v0
.end method

.method public static synthetic c(ZILjava/lang/Object;)Lio/ktor/utils/io/c;
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
    invoke-static {p0}, Lio/ktor/utils/io/e;->a(Z)Lio/ktor/utils/io/c;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic d(ZLe8/l;ILjava/lang/Object;)Lio/ktor/utils/io/c;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/e;->b(ZLe8/l;)Lio/ktor/utils/io/c;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final e([BII)Lio/ktor/utils/io/g;
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/utils/io/a;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string p1, "wrap(content, offset, length)"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lio/ktor/utils/io/a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 20
    return-object v0
.end method
