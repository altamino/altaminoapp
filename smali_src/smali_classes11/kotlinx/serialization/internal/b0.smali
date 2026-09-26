.class public final Lkotlinx/serialization/internal/b0;
.super Lkotlinx/serialization/internal/w1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/w1<",
        "Ljava/lang/Double;",
        "[D",
        "Lkotlinx/serialization/internal/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/b0;

    invoke-direct {v0}, Lkotlinx/serialization/internal/b0;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/b0;->INSTANCE:Lkotlinx/serialization/internal/b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/l;->INSTANCE:Lkotlin/jvm/internal/l;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lm8/a;->x(Lkotlin/jvm/internal/l;)Lkotlinx/serialization/KSerializer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/w1;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, [D

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/b0;->v([D)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic h(Lkotlinx/serialization/encoding/c;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    .line 2
    check-cast p3, Lkotlinx/serialization/internal/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/b0;->x(Lkotlinx/serialization/encoding/c;ILkotlinx/serialization/internal/a0;Z)V

    .line 6
    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, [D

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/b0;->y([D)Lkotlinx/serialization/internal/a0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/b0;->w()[D

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic u(Lkotlinx/serialization/encoding/d;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, [D

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/b0;->z(Lkotlinx/serialization/encoding/d;[DI)V

    .line 6
    return-void
.end method

.method protected v([D)I
    .locals 1
    .param p1    # [D
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length p1, p1

    .line 7
    return p1
.end method

.method protected w()[D
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [D

    return-object v0
.end method

.method protected x(Lkotlinx/serialization/encoding/c;ILkotlinx/serialization/internal/a0;Z)V
    .locals 0
    .param p1    # Lkotlinx/serialization/encoding/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p4, "decoder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p4, "builder"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/serialization/internal/w1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 14
    move-result-object p4

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p4, p2}, Lkotlinx/serialization/encoding/c;->F(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    .line 18
    move-result-wide p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1, p2}, Lkotlinx/serialization/internal/a0;->e(D)V

    .line 22
    return-void
.end method

.method protected y([D)Lkotlinx/serialization/internal/a0;
    .locals 1
    .param p1    # [D
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlinx/serialization/internal/a0;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/a0;-><init>([D)V

    .line 11
    return-object v0
.end method

.method protected z(Lkotlinx/serialization/encoding/d;[DI)V
    .locals 4
    .param p1    # Lkotlinx/serialization/encoding/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [D
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
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v0, p3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlinx/serialization/internal/w1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    aget-wide v2, p2, v0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1, v0, v2, v3}, Lkotlinx/serialization/encoding/d;->G(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
