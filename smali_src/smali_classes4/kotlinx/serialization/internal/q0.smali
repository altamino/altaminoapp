.class public final Lkotlinx/serialization/internal/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "primitiveSerializer"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lkotlinx/serialization/internal/p0;

    .line 13
    .line 14
    new-instance v1, Lkotlinx/serialization/internal/q0$a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p1}, Lkotlinx/serialization/internal/q0$a;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/p0;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/k0;)V

    .line 21
    return-object v0
.end method
