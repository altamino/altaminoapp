.class public final Lkotlinx/serialization/json/internal/s;
.super Lkotlinx/serialization/json/internal/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composers.kt\nkotlinx/serialization/json/internal/ComposerWithPrettyPrint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation


# instance fields
.field private final json:Lkotlinx/serialization/json/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private level:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/p0;Lkotlinx/serialization/json/a;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/internal/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "writer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "json"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/k;-><init>(Lkotlinx/serialization/json/internal/p0;)V

    .line 14
    .line 15
    iput-object p2, p0, Lkotlinx/serialization/json/internal/s;->json:Lkotlinx/serialization/json/a;

    .line 16
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/k;->n(Z)V

    .line 5
    .line 6
    iget v1, p0, Lkotlinx/serialization/json/internal/s;->level:I

    .line 7
    add-int/2addr v1, v0

    .line 8
    .line 9
    iput v1, p0, Lkotlinx/serialization/json/internal/s;->level:I

    .line 10
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/k;->n(Z)V

    .line 5
    .line 6
    const-string v1, "\n"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/k;->j(Ljava/lang/String;)V

    .line 10
    .line 11
    iget v1, p0, Lkotlinx/serialization/json/internal/s;->level:I

    .line 12
    .line 13
    :goto_0
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s;->json:Lkotlinx/serialization/json/a;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lkotlinx/serialization/json/e;->i()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/k;->j(Ljava/lang/String;)V

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 6
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/s;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/s;->level:I

    return-void
.end method
