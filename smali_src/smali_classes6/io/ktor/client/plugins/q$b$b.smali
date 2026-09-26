.class final Lio/ktor/client/plugins/q$b$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/q$b;->f(Lio/ktor/client/plugins/q;Lio/ktor/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lio/ktor/client/plugins/e0;",
        "Li7/d;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lio/ktor/client/call/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpRedirect$Plugin$install$1"
    f = "HttpRedirect.kt"
    l = {
        0x40,
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/q;

.field final synthetic $scope:Lio/ktor/client/a;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/q;Lio/ktor/client/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/q;",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/q$b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/q$b$b;->$plugin:Lio/ktor/client/plugins/q;

    iput-object p2, p0, Lio/ktor/client/plugins/q$b$b;->$scope:Lio/ktor/client/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lio/ktor/client/plugins/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/d;
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
            "Lio/ktor/client/plugins/e0;",
            "Li7/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/q$b$b;

    iget-object v1, p0, Lio/ktor/client/plugins/q$b$b;->$plugin:Lio/ktor/client/plugins/q;

    iget-object v2, p0, Lio/ktor/client/plugins/q$b$b;->$scope:Lio/ktor/client/a;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/q$b$b;-><init>(Lio/ktor/client/plugins/q;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/q$b$b;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/q$b$b;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/q$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/client/plugins/e0;

    check-cast p2, Li7/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/q$b$b;->f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    iget v1, p0, Lio/ktor/client/plugins/q$b$b;->label:I

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
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/q$b$b;->L$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Li7/d;

    .line 31
    .line 32
    iget-object v3, p0, Lio/ktor/client/plugins/q$b$b;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lio/ktor/client/plugins/e0;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 38
    move-object v5, v1

    .line 39
    move-object v4, v3

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    iget-object p1, p0, Lio/ktor/client/plugins/q$b$b;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lio/ktor/client/plugins/e0;

    .line 48
    .line 49
    iget-object v1, p0, Lio/ktor/client/plugins/q$b$b;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Li7/d;

    .line 52
    .line 53
    iput-object p1, p0, Lio/ktor/client/plugins/q$b$b;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v1, p0, Lio/ktor/client/plugins/q$b$b;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    iput v3, p0, Lio/ktor/client/plugins/q$b$b;->label:I

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    if-ne v3, v0, :cond_3

    .line 64
    return-object v0

    .line 65
    :cond_3
    move-object v4, p1

    .line 66
    move-object v5, v1

    .line 67
    move-object p1, v3

    .line 68
    :goto_0
    move-object v6, p1

    .line 69
    .line 70
    check-cast v6, Lio/ktor/client/call/b;

    .line 71
    .line 72
    iget-object p1, p0, Lio/ktor/client/plugins/q$b$b;->$plugin:Lio/ktor/client/plugins/q;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lio/ktor/client/plugins/q;->b(Lio/ktor/client/plugins/q;)Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lio/ktor/client/plugins/r;->a()Ljava/util/Set;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Li7/c;->getMethod()Lio/ktor/http/t;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    return-object v6

    .line 98
    .line 99
    :cond_4
    sget-object v3, Lio/ktor/client/plugins/q;->Plugin:Lio/ktor/client/plugins/q$b;

    .line 100
    .line 101
    iget-object p1, p0, Lio/ktor/client/plugins/q$b$b;->$plugin:Lio/ktor/client/plugins/q;

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lio/ktor/client/plugins/q;->a(Lio/ktor/client/plugins/q;)Z

    .line 105
    move-result v7

    .line 106
    .line 107
    iget-object v8, p0, Lio/ktor/client/plugins/q$b$b;->$scope:Lio/ktor/client/a;

    .line 108
    const/4 p1, 0x0

    .line 109
    .line 110
    iput-object p1, p0, Lio/ktor/client/plugins/q$b$b;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object p1, p0, Lio/ktor/client/plugins/q$b$b;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    iput v2, p0, Lio/ktor/client/plugins/q$b$b;->label:I

    .line 115
    move-object v9, p0

    .line 116
    .line 117
    .line 118
    invoke-static/range {v3 .. v9}, Lio/ktor/client/plugins/q$b;->c(Lio/ktor/client/plugins/q$b;Lio/ktor/client/plugins/e0;Li7/d;Lio/ktor/client/call/b;ZLio/ktor/client/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    if-ne p1, v0, :cond_5

    .line 122
    return-object v0

    .line 123
    :cond_5
    :goto_1
    return-object p1
.end method
