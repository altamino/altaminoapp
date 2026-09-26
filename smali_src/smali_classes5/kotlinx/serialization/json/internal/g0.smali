.class public final Lkotlinx/serialization/json/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonStreams.kt\nkotlinx/serialization/json/internal/JsonStreamsKt\n+ 2 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,61:1\n32#2:62\n80#3:63\n*S KotlinDebug\n*F\n+ 1 JsonStreams.kt\nkotlinx/serialization/json/internal/JsonStreamsKt\n*L\n60#1:62\n60#1:63\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/p0;Lkotlinx/serialization/k;Ljava/lang/Object;)V
    .locals 3
    .param p0    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/json/internal/p0;
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
            "Lkotlinx/serialization/json/internal/p0;",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)V"
        }
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
    const-string v0, "writer"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "serializer"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Lkotlinx/serialization/json/internal/t0;

    .line 18
    .line 19
    sget-object v1, Lkotlinx/serialization/json/internal/z0;->OBJ:Lkotlinx/serialization/json/internal/z0;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lkotlinx/serialization/json/internal/z0;->values()[Lkotlinx/serialization/json/internal/z0;

    .line 23
    move-result-object v2

    .line 24
    array-length v2, v2

    .line 25
    .line 26
    new-array v2, v2, [Lkotlinx/serialization/json/k;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, p0, v1, v2}, Lkotlinx/serialization/json/internal/t0;-><init>(Lkotlinx/serialization/json/internal/p0;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;[Lkotlinx/serialization/json/k;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, p3}, Lkotlinx/serialization/json/internal/t0;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 33
    return-void
.end method
