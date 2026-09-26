.class final Lkotlinx/coroutines/internal/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final context:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final elements:[Lkotlinx/coroutines/z2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/z2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:I

.field private final values:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;I)V
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/internal/s0;->context:Lkotlin/coroutines/g;

    .line 6
    .line 7
    new-array p1, p2, [Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Lkotlinx/coroutines/internal/s0;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    new-array p1, p2, [Lkotlinx/coroutines/z2;

    .line 12
    .line 13
    iput-object p1, p0, Lkotlinx/coroutines/internal/s0;->elements:[Lkotlinx/coroutines/z2;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/z2;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/z2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/z2<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/s0;->values:[Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lkotlinx/coroutines/internal/s0;->i:I

    .line 5
    .line 6
    aput-object p2, v0, v1

    .line 7
    .line 8
    iget-object p2, p0, Lkotlinx/coroutines/internal/s0;->elements:[Lkotlinx/coroutines/z2;

    .line 9
    .line 10
    add-int/lit8 v0, v1, 0x1

    .line 11
    .line 12
    iput v0, p0, Lkotlinx/coroutines/internal/s0;->i:I

    .line 13
    .line 14
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    aput-object p1, p2, v1

    .line 20
    return-void
.end method

.method public final b(Lkotlin/coroutines/g;)V
    .locals 4
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/s0;->elements:[Lkotlinx/coroutines/z2;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 10
    .line 11
    iget-object v2, p0, Lkotlinx/coroutines/internal/s0;->elements:[Lkotlinx/coroutines/z2;

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    iget-object v3, p0, Lkotlinx/coroutines/internal/s0;->values:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v0, v3, v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/z2;->n(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 24
    .line 25
    if-gez v1, :cond_0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-void
.end method
