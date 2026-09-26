.class public final Lkotlinx/serialization/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/KClass;Ljava/util/List;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/n;->d(Lkotlin/reflect/KClass;Ljava/util/List;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lkotlinx/serialization/modules/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .param p0    # Lkotlinx/serialization/modules/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/c;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/serialization/n;->e(Lkotlinx/serialization/modules/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/serialization/n;->g(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lkotlinx/serialization/modules/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;
    .locals 0
    .param p0    # Lkotlinx/serialization/modules/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/c;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/serialization/n;->h(Lkotlinx/serialization/modules/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lkotlinx/serialization/modules/c;Ljava/util/List;Z)Ljava/util/List;
    .locals 0
    .param p0    # Lkotlinx/serialization/modules/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/c;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;Z)",
            "Ljava/util/List<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/n;->i(Lkotlinx/serialization/modules/c;Ljava/util/List;Z)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
