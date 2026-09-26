.class final Lkotlinx/coroutines/flow/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final areEquivalent:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final keySelector:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final upstream:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Le8/l;Le8/p;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Le8/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/flow/f;->upstream:Lkotlinx/coroutines/flow/g;

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/flow/f;->keySelector:Le8/l;

    .line 8
    .line 9
    iput-object p3, p0, Lkotlinx/coroutines/flow/f;->areEquivalent:Le8/p;

    .line 10
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/flow/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 8
    .line 9
    iput-object v1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, p0, Lkotlinx/coroutines/flow/f;->upstream:Lkotlinx/coroutines/flow/g;

    .line 12
    .line 13
    new-instance v2, Lkotlinx/coroutines/flow/f$a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0, v0, p1}, Lkotlinx/coroutines/flow/f$a;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/internal/p0;Lkotlinx/coroutines/flow/h;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2, p2}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 30
    return-object p1
.end method
