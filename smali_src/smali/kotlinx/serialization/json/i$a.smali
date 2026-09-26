.class final Lkotlinx/serialization/json/i$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lkotlinx/serialization/descriptors/a;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/i$a;

    invoke-direct {v0}, Lkotlinx/serialization/json/i$a;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/i$a;->INSTANCE:Lkotlinx/serialization/json/i$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/descriptors/a;)V
    .locals 8
    .param p1    # Lkotlinx/serialization/descriptors/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$buildSerialDescriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v2, "JsonPrimitive"

    .line 8
    .line 9
    sget-object v0, Lkotlinx/serialization/json/i$a$a;->INSTANCE:Lkotlinx/serialization/json/i$a$a;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlinx/serialization/json/j;->a(Le8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    const/16 v6, 0xc

    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v1, p1

    .line 20
    .line 21
    .line 22
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 23
    .line 24
    const-string v2, "JsonNull"

    .line 25
    .line 26
    sget-object v0, Lkotlinx/serialization/json/i$a$b;->INSTANCE:Lkotlinx/serialization/json/i$a$b;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlinx/serialization/json/j;->a(Le8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 34
    .line 35
    const-string v2, "JsonLiteral"

    .line 36
    .line 37
    sget-object v0, Lkotlinx/serialization/json/i$a$c;->INSTANCE:Lkotlinx/serialization/json/i$a$c;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlinx/serialization/json/j;->a(Le8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 45
    .line 46
    const-string v2, "JsonObject"

    .line 47
    .line 48
    sget-object v0, Lkotlinx/serialization/json/i$a$d;->INSTANCE:Lkotlinx/serialization/json/i$a$d;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlinx/serialization/json/j;->a(Le8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 56
    .line 57
    const-string v2, "JsonArray"

    .line 58
    .line 59
    sget-object v0, Lkotlinx/serialization/json/i$a$e;->INSTANCE:Lkotlinx/serialization/json/i$a$e;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlinx/serialization/json/j;->a(Le8/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/i$a;->a(Lkotlinx/serialization/descriptors/a;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
