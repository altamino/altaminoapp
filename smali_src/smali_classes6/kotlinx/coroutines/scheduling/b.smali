.class public final Lkotlinx/coroutines/scheduling/b;
.super Lkotlinx/coroutines/q1;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final default:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/scheduling/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/scheduling/b;->INSTANCE:Lkotlinx/coroutines/scheduling/b;

    .line 8
    .line 9
    sget-object v0, Lkotlinx/coroutines/scheduling/m;->INSTANCE:Lkotlinx/coroutines/scheduling/m;

    .line 10
    .line 11
    const-string v1, "kotlinx.coroutines.io.parallelism"

    .line 12
    .line 13
    const/16 v2, 0x40

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/internal/j0;->a()I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3}, Lj8/m;->e(II)I

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    const/16 v5, 0xc

    .line 26
    const/4 v6, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/j0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/m;->limitedParallelism(I)Lkotlinx/coroutines/k0;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lkotlinx/coroutines/scheduling/b;->default:Lkotlinx/coroutines/k0;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/q1;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public L()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public close()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "Cannot be invoked on Dispatchers.IO"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method

.method public dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->default:Lkotlinx/coroutines/k0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/k0;->dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->default:Lkotlinx/coroutines/k0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/k0;->dispatchYield(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/scheduling/b;->dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/m;->INSTANCE:Lkotlinx/coroutines/scheduling/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/m;->limitedParallelism(I)Lkotlinx/coroutines/k0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
