.class final Lio/ktor/client/plugins/o$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/o$b;->c(Lio/ktor/client/plugins/o;Lio/ktor/client/a;)V
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
    c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$1"
    f = "HttpPlainText.kt"
    l = {
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/o;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/o;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/o;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/o$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/o$b$a;->$plugin:Lio/ktor/client/plugins/o;

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
    new-instance v0, Lio/ktor/client/plugins/o$b$a;

    iget-object v1, p0, Lio/ktor/client/plugins/o$b$a;->$plugin:Lio/ktor/client/plugins/o;

    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/o$b$a;-><init>(Lio/ktor/client/plugins/o;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/o$b$a;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/o$b$a;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/o$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/o$b$a;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Lio/ktor/client/plugins/o$b$a;->label:I

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
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p0, Lio/ktor/client/plugins/o$b$a;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 31
    .line 32
    iget-object v1, p0, Lio/ktor/client/plugins/o$b$a;->L$1:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v3, p0, Lio/ktor/client/plugins/o$b$a;->$plugin:Lio/ktor/client/plugins/o;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Li7/d;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lio/ktor/client/plugins/o;->c(Li7/d;)V

    .line 44
    .line 45
    instance-of v3, v1, Ljava/lang/String;

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    return-object p1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Lio/ktor/http/r;

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Lio/ktor/http/s;->d(Lio/ktor/http/r;)Lio/ktor/http/c;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lio/ktor/http/c;->e()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    sget-object v5, Lio/ktor/http/c$c;->INSTANCE:Lio/ktor/http/c$c;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lio/ktor/http/c$c;->a()Lio/ktor/http/c;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Lio/ktor/http/c;->e()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v4

    .line 81
    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 85
    return-object p1

    .line 86
    .line 87
    :cond_3
    iget-object v4, p0, Lio/ktor/client/plugins/o$b$a;->$plugin:Lio/ktor/client/plugins/o;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    check-cast v5, Li7/d;

    .line 94
    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5, v1, v3}, Lio/ktor/client/plugins/o;->b(Lio/ktor/client/plugins/o;Li7/d;Ljava/lang/String;Lio/ktor/http/c;)Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    const/4 v3, 0x0

    .line 101
    .line 102
    iput-object v3, p0, Lio/ktor/client/plugins/o$b$a;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    iput v2, p0, Lio/ktor/client/plugins/o$b$a;->label:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    if-ne p1, v0, :cond_4

    .line 111
    return-object v0

    .line 112
    .line 113
    :cond_4
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 114
    return-object p1
.end method
