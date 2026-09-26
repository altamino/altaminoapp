.class final Lkotlinx/coroutines/scheduling/m;
.super Lkotlinx/coroutines/k0;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/m;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/m;->INSTANCE:Lkotlinx/coroutines/scheduling/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/k0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 2
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
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->INSTANCE:Lkotlinx/coroutines/scheduling/c;

    .line 3
    .line 4
    sget-object v0, Lkotlinx/coroutines/scheduling/l;->BlockingContext:Lkotlinx/coroutines/scheduling/i;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/f;->F0(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    .line 9
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 2
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
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->INSTANCE:Lkotlinx/coroutines/scheduling/c;

    .line 3
    .line 4
    sget-object v0, Lkotlinx/coroutines/scheduling/l;->BlockingContext:Lkotlinx/coroutines/scheduling/i;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/f;->F0(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    .line 9
    return-void
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/internal/q;->a(I)V

    .line 4
    .line 5
    sget v0, Lkotlinx/coroutines/scheduling/l;->MAX_POOL_SIZE:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/k0;->limitedParallelism(I)Lkotlinx/coroutines/k0;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
