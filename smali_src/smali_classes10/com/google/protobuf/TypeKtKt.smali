.class public final Lcom/google/protobuf/TypeKtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeKt.kt\ncom/google/protobuf/TypeKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,414:1\n1#2:415\n*E\n"
.end annotation


# direct methods
.method public static final -initializetype(Le8/l;)Lcom/google/protobuf/Type;
    .locals 3
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lcom/google/protobuf/TypeKt$Dsl;",
            "Lw7/l0;",
            ">;)",
            "Lcom/google/protobuf/Type;"
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
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/google/protobuf/TypeKt$Dsl;->Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/protobuf/Type;->newBuilder()Lcom/google/protobuf/Type$Builder;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "newBuilder()"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/protobuf/TypeKt$Dsl$Companion;->_create(Lcom/google/protobuf/Type$Builder;)Lcom/google/protobuf/TypeKt$Dsl;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/protobuf/TypeKt$Dsl;->_build()Lcom/google/protobuf/Type;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/Type;Le8/l;)Lcom/google/protobuf/Type;
    .locals 2
    .param p0    # Lcom/google/protobuf/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Type;",
            "Le8/l<",
            "-",
            "Lcom/google/protobuf/TypeKt$Dsl;",
            "Lw7/l0;",
            ">;)",
            "Lcom/google/protobuf/Type;"
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
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lcom/google/protobuf/TypeKt$Dsl;->Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    const-string v1, "this.toBuilder()"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p0, Lcom/google/protobuf/Type$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/google/protobuf/TypeKt$Dsl$Companion;->_create(Lcom/google/protobuf/Type$Builder;)Lcom/google/protobuf/TypeKt$Dsl;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/TypeKt$Dsl;->_build()Lcom/google/protobuf/Type;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final getSourceContextOrNull(Lcom/google/protobuf/TypeOrBuilder;)Lcom/google/protobuf/SourceContext;
    .locals 1
    .param p0    # Lcom/google/protobuf/TypeOrBuilder;
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
    invoke-interface {p0}, Lcom/google/protobuf/TypeOrBuilder;->hasSourceContext()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/google/protobuf/TypeOrBuilder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method
