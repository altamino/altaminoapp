.class public final Lkotlinx/serialization/encoding/Encoder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/encoding/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/d;
    .locals 0
    .param p0    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "descriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static b(Lkotlinx/serialization/encoding/Encoder;)V
    .locals 0
    .param p0    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public static c(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/k;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "serializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lkotlinx/serialization/k;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/encoding/Encoder;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Encoder;->B()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Encoder;->E()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/encoding/Encoder;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-void
.end method

.method public static d(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/k;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "serializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/k;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 9
    return-void
.end method
