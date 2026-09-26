.class public final Lkotlinx/serialization/internal/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/x2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/serialization/internal/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/l1<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/x2;

    invoke-direct {v0}, Lkotlinx/serialization/internal/x2;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/x2;->INSTANCE:Lkotlinx/serialization/internal/x2;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lkotlinx/serialization/internal/l1;

    .line 6
    .line 7
    const-string v1, "kotlin.Unit"

    .line 8
    .line 9
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/l1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    iput-object v0, p0, Lkotlinx/serialization/internal/x2;->$$delegate_0:Lkotlinx/serialization/internal/l1;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/serialization/encoding/Decoder;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/x2;->$$delegate_0:Lkotlinx/serialization/internal/l1;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/l1;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lkotlinx/serialization/encoding/Encoder;Lw7/l0;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/x2;->$$delegate_0:Lkotlinx/serialization/internal/l1;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/internal/l1;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/x2;->a(Lkotlinx/serialization/encoding/Decoder;)V

    .line 4
    .line 5
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 6
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/internal/x2;->$$delegate_0:Lkotlinx/serialization/internal/l1;

    invoke-virtual {v0}, Lkotlinx/serialization/internal/l1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/x2;->b(Lkotlinx/serialization/encoding/Encoder;Lw7/l0;)V

    .line 6
    return-void
.end method
