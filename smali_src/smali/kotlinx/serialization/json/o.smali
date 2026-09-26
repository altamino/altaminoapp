.class final Lkotlinx/serialization/json/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/n;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonElementSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonElementSerializers.kt\nkotlinx/serialization/json/JsonLiteralSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/serialization/json/o;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/serialization/json/o;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/serialization/json/o;->INSTANCE:Lkotlinx/serialization/json/o;

    .line 8
    .line 9
    const-string v0, "kotlinx.serialization.json.JsonLiteral"

    .line 10
    .line 11
    sget-object v1, Lkotlinx/serialization/descriptors/e$i;->INSTANCE:Lkotlinx/serialization/descriptors/e$i;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/h;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lkotlinx/serialization/json/o;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
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
.method public a(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/n;
    .locals 2
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
    .line 15
    instance-of v0, p1, Lkotlinx/serialization/json/n;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Lkotlinx/serialization/json/n;

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v1, "Unexpected JSON element, expected JsonLiteral, had "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const/4 v1, -0x1

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0, p1}, Lkotlinx/serialization/json/internal/b0;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/x;

    .line 54
    move-result-object p1

    .line 55
    throw p1
.end method

.method public b(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/json/n;)V
    .locals 2
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/n;
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
    .line 16
    invoke-virtual {p2}, Lkotlinx/serialization/json/n;->f()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lkotlinx/serialization/json/n;->e()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Ljava/lang/String;)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p2}, Lkotlinx/serialization/json/h;->n(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Long;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->A(J)V

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2}, Lkotlinx/serialization/json/n;->e()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/text/a0;->h(Ljava/lang/String;)Lw7/f0;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lw7/f0;->f()J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    sget-object p2, Lw7/f0;->Companion:Lw7/f0$a;

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lm8/a;->F(Lw7/f0$a;)Lkotlinx/serialization/KSerializer;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->A(J)V

    .line 73
    return-void

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-static {p2}, Lkotlinx/serialization/json/h;->h(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Double;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->x(D)V

    .line 87
    return-void

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-static {p2}, Lkotlinx/serialization/json/h;->e(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Boolean;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result p2

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->l(Z)V

    .line 101
    return-void

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p2}, Lkotlinx/serialization/json/n;->e()Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->v(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/o;->a(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/n;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/serialization/json/o;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lkotlinx/serialization/json/n;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/o;->b(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/json/n;)V

    .line 6
    return-void
.end method
