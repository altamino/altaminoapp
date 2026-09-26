.class public final Lkotlinx/serialization/json/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lkotlinx/serialization/json/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/serialization/json/i;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/serialization/json/i;->INSTANCE:Lkotlinx/serialization/json/i;

    .line 8
    .line 9
    sget-object v0, Lkotlinx/serialization/descriptors/d$b;->INSTANCE:Lkotlinx/serialization/descriptors/d$b;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    sget-object v2, Lkotlinx/serialization/json/i$a;->INSTANCE:Lkotlinx/serialization/json/i$a;

    .line 15
    .line 16
    const-string v3, "kotlinx.serialization.json.JsonElement"

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/h;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lkotlinx/serialization/json/i;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "decoder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlinx/serialization/json/j;->d(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/f;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lkotlinx/serialization/json/f;->t()Lkotlinx/serialization/json/JsonElement;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/json/JsonElement;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "encoder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlinx/serialization/json/j;->c(Lkotlinx/serialization/encoding/Encoder;)V

    .line 14
    .line 15
    instance-of v0, p2, Lkotlinx/serialization/json/JsonPrimitive;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lkotlinx/serialization/json/t;->INSTANCE:Lkotlinx/serialization/json/t;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    instance-of v0, p2, Lkotlinx/serialization/json/JsonObject;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lkotlinx/serialization/json/s;->INSTANCE:Lkotlinx/serialization/json/s;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    instance-of v0, p2, Lkotlinx/serialization/json/JsonArray;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lkotlinx/serialization/json/b;->INSTANCE:Lkotlinx/serialization/json/b;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonElement;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/serialization/json/i;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/json/JsonElement;)V

    .line 6
    return-void
.end method
