.class final synthetic Lkotlinx/coroutines/flow/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultAreEquivalent:Le8/p;
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

.field private static final defaultKeySelector:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/n$b;->INSTANCE:Lkotlinx/coroutines/flow/n$b;

    sput-object v0, Lkotlinx/coroutines/flow/n;->defaultKeySelector:Le8/l;

    sget-object v0, Lkotlinx/coroutines/flow/n$a;->INSTANCE:Lkotlinx/coroutines/flow/n$a;

    sput-object v0, Lkotlinx/coroutines/flow/n;->defaultAreEquivalent:Le8/p;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/g;)Lkotlinx/coroutines/flow/g;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/flow/l0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/n;->defaultKeySelector:Le8/l;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/flow/n;->defaultAreEquivalent:Le8/p;

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/flow/n;->b(Lkotlinx/coroutines/flow/g;Le8/l;Le8/p;)Lkotlinx/coroutines/flow/g;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
.end method

.method private static final b(Lkotlinx/coroutines/flow/g;Le8/l;Le8/p;)Lkotlinx/coroutines/flow/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
            ">;)",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/flow/f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/f;

    .line 8
    .line 9
    iget-object v1, v0, Lkotlinx/coroutines/flow/f;->keySelector:Le8/l;

    .line 10
    .line 11
    if-ne v1, p1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lkotlinx/coroutines/flow/f;->areEquivalent:Le8/p;

    .line 14
    .line 15
    if-ne v0, p2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/f;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/f;-><init>(Lkotlinx/coroutines/flow/g;Le8/l;Le8/p;)V

    .line 22
    move-object p0, v0

    .line 23
    :goto_0
    return-object p0
.end method
