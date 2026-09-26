.class public final Lkotlinx/serialization/json/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 2
    .param p0    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/n;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/json/n;-><init>(Ljava/lang/Object;Z)V

    .line 12
    return-object v0
.end method

.method public static final b(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 2
    .param p0    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/n;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/json/n;-><init>(Ljava/lang/Object;Z)V

    .line 12
    return-object v0
.end method

.method public static final c(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/n;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/json/n;-><init>(Ljava/lang/Object;Z)V

    .line 12
    return-object v0
.end method

.method private static final d(Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Element "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p0, " is not a "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public static final e(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Boolean;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lkotlinx/serialization/json/internal/w0;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final f(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    instance-of v0, p0, Lkotlinx/serialization/json/JsonNull;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    :goto_0
    return-object p0
.end method

.method public static final g(Lkotlinx/serialization/json/JsonPrimitive;)D
    .locals 2
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public static final h(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Double;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/text/k;->j(Ljava/lang/String;)Ljava/lang/Double;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final i(Lkotlinx/serialization/json/JsonPrimitive;)F
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final j(Lkotlinx/serialization/json/JsonPrimitive;)I
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final k(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    .line 11
    .line 12
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_1
    const-string v0, "JsonObject"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlinx/serialization/json/h;->d(Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)Ljava/lang/Void;

    .line 23
    .line 24
    new-instance p0, Lw7/i;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 28
    throw p0
.end method

.method public static final l(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    instance-of v0, p0, Lkotlinx/serialization/json/JsonPrimitive;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    .line 11
    .line 12
    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_1
    const-string v0, "JsonPrimitive"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlinx/serialization/json/h;->d(Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;)Ljava/lang/Void;

    .line 23
    .line 24
    new-instance p0, Lw7/i;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 28
    throw p0
.end method

.method public static final m(Lkotlinx/serialization/json/JsonPrimitive;)J
    .locals 2
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public static final n(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Long;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/JsonPrimitive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->e()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/text/k;->o(Ljava/lang/String;)Ljava/lang/Long;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
