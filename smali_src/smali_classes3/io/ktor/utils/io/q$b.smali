.class final Lio/ktor/utils/io/q$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/q;->a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;ZLe8/p;)Lio/ktor/utils/io/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.utils.io.CoroutinesKt$launchChannel$job$1"
    f = "Coroutines.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $attachJob:Z

.field final synthetic $block:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "TS;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $channel:Lio/ktor/utils/io/c;

.field final synthetic $dispatcher:Lkotlinx/coroutines/k0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLio/ktor/utils/io/c;Le8/p;Lkotlinx/coroutines/k0;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/ktor/utils/io/c;",
            "Le8/p<",
            "-TS;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/q$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/ktor/utils/io/q$b;->$attachJob:Z

    iput-object p2, p0, Lio/ktor/utils/io/q$b;->$channel:Lio/ktor/utils/io/c;

    iput-object p3, p0, Lio/ktor/utils/io/q$b;->$block:Le8/p;

    iput-object p4, p0, Lio/ktor/utils/io/q$b;->$dispatcher:Lkotlinx/coroutines/k0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lio/ktor/utils/io/q$b;

    iget-boolean v1, p0, Lio/ktor/utils/io/q$b;->$attachJob:Z

    iget-object v2, p0, Lio/ktor/utils/io/q$b;->$channel:Lio/ktor/utils/io/c;

    iget-object v3, p0, Lio/ktor/utils/io/q$b;->$block:Le8/p;

    iget-object v4, p0, Lio/ktor/utils/io/q$b;->$dispatcher:Lkotlinx/coroutines/k0;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/q$b;-><init>(ZLio/ktor/utils/io/c;Le8/p;Lkotlinx/coroutines/k0;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Lio/ktor/utils/io/q$b;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/q$b;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/q$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/q$b;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/q$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lio/ktor/utils/io/q$b;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_2

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    iget-object p1, p0, Lio/ktor/utils/io/q$b;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 33
    .line 34
    iget-boolean v1, p0, Lio/ktor/utils/io/q$b;->$attachJob:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lio/ktor/utils/io/q$b;->$channel:Lio/ktor/utils/io/c;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    sget-object v4, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v4}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    check-cast v3, Lkotlinx/coroutines/b2;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v3}, Lio/ktor/utils/io/c;->a(Lkotlinx/coroutines/b2;)V

    .line 57
    .line 58
    :cond_2
    new-instance v1, Lio/ktor/utils/io/m;

    .line 59
    .line 60
    iget-object v3, p0, Lio/ktor/utils/io/q$b;->$channel:Lio/ktor/utils/io/c;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p1, v3}, Lio/ktor/utils/io/m;-><init>(Lkotlinx/coroutines/o0;Lio/ktor/utils/io/c;)V

    .line 64
    .line 65
    :try_start_1
    iget-object p1, p0, Lio/ktor/utils/io/q$b;->$block:Le8/p;

    .line 66
    .line 67
    iput v2, p0, Lio/ktor/utils/io/q$b;->label:I

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v1, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    if-ne p1, v0, :cond_5

    .line 74
    return-object v0

    .line 75
    .line 76
    :goto_0
    iget-object v0, p0, Lio/ktor/utils/io/q$b;->$dispatcher:Lkotlinx/coroutines/k0;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lkotlinx/coroutines/e1;->d()Lkotlinx/coroutines/k0;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lio/ktor/utils/io/q$b;->$dispatcher:Lkotlinx/coroutines/k0;

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    throw p1

    .line 93
    .line 94
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/ktor/utils/io/q$b;->$channel:Lio/ktor/utils/io/c;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, p1}, Lio/ktor/utils/io/g;->e(Ljava/lang/Throwable;)Z

    .line 98
    .line 99
    :cond_5
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 100
    return-object p1
.end method
