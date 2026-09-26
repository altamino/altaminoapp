.class public final Lkotlinx/serialization/json/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 2 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,369:1\n32#2:370\n32#2:372\n80#3:371\n80#3:373\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n199#1:370\n210#1:372\n199#1:371\n210#1:373\n*E\n"
.end annotation


# static fields
.field private static final defaultDiscriminator:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultIndent:Ljava/lang/String; = "    "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Le8/l;)Lkotlinx/serialization/json/a;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/a;
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
            "Lkotlinx/serialization/json/a;",
            "Le8/l<",
            "-",
            "Lkotlinx/serialization/json/c;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/serialization/json/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "from"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "builderAction"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lkotlinx/serialization/json/c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/c;-><init>(Lkotlinx/serialization/json/a;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlinx/serialization/json/c;->a()Lkotlinx/serialization/json/e;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    new-instance p1, Lkotlinx/serialization/json/l;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/serialization/json/c;->b()Lkotlinx/serialization/modules/c;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/l;-><init>(Lkotlinx/serialization/json/e;Lkotlinx/serialization/modules/c;)V

    .line 32
    return-object p1
.end method

.method public static synthetic b(Lkotlinx/serialization/json/a;Le8/l;ILjava/lang/Object;)Lkotlinx/serialization/json/a;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/json/a;->Default:Lkotlinx/serialization/json/a$a;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/m;->a(Lkotlinx/serialization/json/a;Le8/l;)Lkotlinx/serialization/json/a;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
