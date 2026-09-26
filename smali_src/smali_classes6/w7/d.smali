.class final Lw7/d;
.super Lw7/c;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lw7/c<",
        "TT;TR;>;",
        "Lkotlin/coroutines/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private cont:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private function:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "-",
            "Lw7/c<",
            "**>;",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/q;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Lw7/c<",
            "TT;TR;>;-TT;-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lw7/c;-><init>(Lkotlin/jvm/internal/k;)V

    .line 10
    .line 11
    iput-object p1, p0, Lw7/d;->function:Le8/q;

    .line 12
    .line 13
    iput-object p2, p0, Lw7/d;->value:Ljava/lang/Object;

    .line 14
    .line 15
    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    iput-object p0, p0, Lw7/d;->cont:Lkotlin/coroutines/d;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lw7/b;->a()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lw7/d;->result:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p2, p0, Lw7/d;->cont:Lkotlin/coroutines/d;

    .line 8
    .line 9
    iput-object p1, p0, Lw7/d;->value:Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 23
    :cond_0
    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lw7/d;->result:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lw7/d;->cont:Lkotlin/coroutines/d;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-static {}, Lw7/b;->a()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0}, Lw7/v;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lw7/d;->function:Le8/q;

    .line 23
    .line 24
    iget-object v2, p0, Lw7/d;->value:Ljava/lang/Object;

    .line 25
    .line 26
    instance-of v3, v0, Lkotlin/coroutines/jvm/internal/a;

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p0, v2, v1}, Lkotlin/coroutines/intrinsics/b;->d(Le8/q;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v3, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v3}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Le8/q;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p0, v2, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    if-eq v0, v2, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :goto_2
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-static {}, Lw7/b;->a()Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    iput-object v2, p0, Lw7/d;->result:Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 84
    goto :goto_0
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 3
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lw7/d;->cont:Lkotlin/coroutines/d;

    iput-object p1, p0, Lw7/d;->result:Ljava/lang/Object;

    return-void
.end method
