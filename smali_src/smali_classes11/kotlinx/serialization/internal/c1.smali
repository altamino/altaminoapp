.class public final Lkotlinx/serialization/internal/c1;
.super Lkotlinx/serialization/internal/w1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/w1<",
        "Ljava/lang/Long;",
        "[J",
        "Lkotlinx/serialization/internal/b1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/c1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/c1;

    invoke-direct {v0}, Lkotlinx/serialization/internal/c1;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/c1;->INSTANCE:Lkotlinx/serialization/internal/c1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/w;->INSTANCE:Lkotlin/jvm/internal/w;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lm8/a;->A(Lkotlin/jvm/internal/w;)Lkotlinx/serialization/KSerializer;

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
    check-cast p1, [J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/c1;->v([J)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic h(Lkotlinx/serialization/encoding/c;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    .line 2
    check-cast p3, Lkotlinx/serialization/internal/b1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/c1;->x(Lkotlinx/serialization/encoding/c;ILkotlinx/serialization/internal/b1;Z)V

    .line 6
    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, [J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/c1;->y([J)Lkotlinx/serialization/internal/b1;

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
    invoke-virtual {p0}, Lkotlinx/serialization/internal/c1;->w()[J

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic u(Lkotlinx/serialization/encoding/d;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, [J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/c1;->z(Lkotlinx/serialization/encoding/d;[JI)V

    .line 6
    return-void
.end method

.method protected v([J)I
    .locals 1
    .param p1    # [J
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

.method protected w()[J
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method protected x(Lkotlinx/serialization/encoding/c;ILkotlinx/serialization/internal/b1;Z)V
    .locals 0
    .param p1    # Lkotlinx/serialization/encoding/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/internal/b1;
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
    invoke-interface {p1, p4, p2}, Lkotlinx/serialization/encoding/c;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 18
    move-result-wide p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1, p2}, Lkotlinx/serialization/internal/b1;->e(J)V

    .line 22
    return-void
.end method

.method protected y([J)Lkotlinx/serialization/internal/b1;
    .locals 1
    .param p1    # [J
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
    new-instance v0, Lkotlinx/serialization/internal/b1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/b1;-><init>([J)V

    .line 11
    return-object v0
.end method

.method protected z(Lkotlinx/serialization/encoding/d;[JI)V
    .locals 4
    .param p1    # Lkotlinx/serialization/encoding/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [J
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
    invoke-interface {p1, v1, v0, v2, v3}, Lkotlinx/serialization/encoding/d;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
