.class public final Lkotlinx/serialization/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/c;Ljava/lang/String;)Lkotlinx/serialization/b;
    .locals 1
    .param p0    # Lkotlinx/serialization/internal/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/encoding/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/internal/b<",
            "TT;>;",
            "Lkotlinx/serialization/encoding/c;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/b<",
            "+TT;>;"
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
    const-string v0, "decoder"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/b;->c(Lkotlinx/serialization/encoding/c;Ljava/lang/String;)Lkotlinx/serialization/b;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/internal/b;->e()Lkotlin/reflect/KClass;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p0}, Lkotlinx/serialization/internal/c;->a(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Void;

    .line 25
    .line 26
    new-instance p0, Lw7/i;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 30
    throw p0
.end method

.method public static final b(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/k;
    .locals 1
    .param p0    # Lkotlinx/serialization/internal/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/internal/b<",
            "TT;>;",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)",
            "Lkotlinx/serialization/k<",
            "TT;>;"
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
    const-string v0, "encoder"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "value"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/b;->d(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/k;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lkotlinx/serialization/internal/b;->e()Lkotlin/reflect/KClass;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p0}, Lkotlinx/serialization/internal/c;->b(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Ljava/lang/Void;

    .line 38
    .line 39
    new-instance p0, Lw7/i;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 43
    throw p0
.end method
