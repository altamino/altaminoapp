.class final Lio/ktor/client/plugins/k$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/k$a;->c(Lio/ktor/client/plugins/k;Lio/ktor/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lio/ktor/util/pipeline/e<",
        "Ljava/lang/Object;",
        "Li7/d;",
        ">;",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$1"
    f = "HttpCallValidator.kt"
    l = {
        0x82,
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/k;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/k;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/k$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/k$a$a;->$plugin:Lio/ktor/client/plugins/k;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/ktor/util/pipeline/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/e<",
            "Ljava/lang/Object;",
            "Li7/d;",
            ">;",
            "Ljava/lang/Object;",
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
    new-instance v0, Lio/ktor/client/plugins/k$a$a;

    iget-object v1, p0, Lio/ktor/client/plugins/k$a$a;->$plugin:Lio/ktor/client/plugins/k;

    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/k$a$a;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/k$a$a;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/k$a$a;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/k$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/k$a$a;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    iget v1, p0, Lio/ktor/client/plugins/k$a$a;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lio/ktor/client/plugins/k$a$a;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 30
    goto :goto_2

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/k$a$a;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    iget-object p1, p0, Lio/ktor/client/plugins/k$a$a;->L$0:Ljava/lang/Object;

    .line 46
    move-object v1, p1

    .line 47
    .line 48
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 49
    .line 50
    iget-object p1, p0, Lio/ktor/client/plugins/k$a$a;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    check-cast v4, Li7/d;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Li7/d;->b()Lio/ktor/util/b;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lio/ktor/client/plugins/l;->e()Lio/ktor/util/a;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    new-instance v6, Lio/ktor/client/plugins/k$a$a$a;

    .line 67
    .line 68
    iget-object v7, p0, Lio/ktor/client/plugins/k$a$a;->$plugin:Lio/ktor/client/plugins/k;

    .line 69
    .line 70
    .line 71
    invoke-direct {v6, v7}, Lio/ktor/client/plugins/k$a$a$a;-><init>(Lio/ktor/client/plugins/k;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v4, v5, v6}, Lio/ktor/util/b;->g(Lio/ktor/util/a;Le8/a;)Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v1, p0, Lio/ktor/client/plugins/k$a$a;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput v3, p0, Lio/ktor/client/plugins/k$a$a;->label:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 82
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    if-ne p1, v0, :cond_3

    .line 85
    return-object v0

    .line 86
    .line 87
    :cond_3
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 88
    return-object p1

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-static {p1}, Lio/ktor/client/utils/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iget-object v3, p0, Lio/ktor/client/plugins/k$a$a;->$plugin:Lio/ktor/client/plugins/k;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    check-cast v1, Li7/d;

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lio/ktor/client/plugins/l;->c(Li7/d;)Lio/ktor/client/plugins/l$a;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    iput-object p1, p0, Lio/ktor/client/plugins/k$a$a;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput v2, p0, Lio/ktor/client/plugins/k$a$a;->label:I

    .line 109
    .line 110
    .line 111
    invoke-static {v3, p1, v1, p0}, Lio/ktor/client/plugins/k;->c(Lio/ktor/client/plugins/k;Ljava/lang/Throwable;Li7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    if-ne v1, v0, :cond_4

    .line 115
    return-object v0

    .line 116
    :cond_4
    move-object v0, p1

    .line 117
    :goto_2
    throw v0
.end method
