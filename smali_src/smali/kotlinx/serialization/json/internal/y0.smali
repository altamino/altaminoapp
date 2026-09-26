.class public final Lkotlinx/serialization/json/internal/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIMITIVE_TAG:Ljava/lang/String; = "primitive"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final synthetic a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/serialization/json/internal/y0;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lkotlinx/serialization/descriptors/e;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    sget-object v0, Lkotlinx/serialization/descriptors/i$b;->INSTANCE:Lkotlinx/serialization/descriptors/i$b;

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static final c(Lkotlinx/serialization/json/a;Ljava/lang/Object;Lkotlinx/serialization/k;)Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .param p0    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/a;",
            "TT;",
            "Lkotlinx/serialization/k<",
            "-TT;>;)",
            "Lkotlinx/serialization/json/JsonElement;"
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
    const-string/jumbo v0, "serializer"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 16
    .line 17
    new-instance v1, Lkotlinx/serialization/json/internal/j0;

    .line 18
    .line 19
    new-instance v2, Lkotlinx/serialization/json/internal/y0$a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0}, Lkotlinx/serialization/json/internal/y0$a;-><init>(Lkotlin/jvm/internal/p0;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/j0;-><init>(Lkotlinx/serialization/json/a;Le8/l;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2, p1}, Lkotlinx/serialization/json/internal/d;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 29
    .line 30
    iget-object p0, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const-string p0, "result"

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    const/4 p0, 0x0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    .line 42
    :goto_0
    return-object p0
.end method
