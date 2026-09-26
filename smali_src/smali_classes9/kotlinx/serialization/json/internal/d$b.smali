.class public final Lkotlinx/serialization/json/internal/d$b;
.super Lkotlinx/serialization/encoding/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/d;->o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $tag:Ljava/lang/String;

.field private final serializersModule:Lkotlinx/serialization/modules/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/serialization/json/internal/d;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/d$b;->this$0:Lkotlinx/serialization/json/internal/d;

    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/serialization/json/internal/d$b;->$tag:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lkotlinx/serialization/encoding/b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/d;->d()Lkotlinx/serialization/json/a;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lkotlinx/serialization/modules/c;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lkotlinx/serialization/json/internal/d$b;->serializersModule:Lkotlinx/serialization/modules/c;

    .line 18
    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lw7/f0;->b(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/f;->a(J)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/d$b;->K(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "s"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/d$b;->this$0:Lkotlinx/serialization/json/internal/d;

    .line 8
    .line 9
    iget-object v1, p0, Lkotlinx/serialization/json/internal/d$b;->$tag:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Lkotlinx/serialization/json/n;

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p1, v3}, Lkotlinx/serialization/json/n;-><init>(Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/d;->w0(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 19
    return-void
.end method

.method public a()Lkotlinx/serialization/modules/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/d$b;->serializersModule:Lkotlinx/serialization/modules/c;

    return-object v0
.end method

.method public f(B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lw7/b0;->b(B)B

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lw7/b0;->e(B)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/d$b;->K(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public k(S)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lw7/i0;->b(S)S

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lw7/i0;->e(S)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/d$b;->K(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lw7/d0;->b(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lkotlinx/serialization/json/internal/e;->a(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/d$b;->K(Ljava/lang/String;)V

    .line 12
    return-void
.end method
