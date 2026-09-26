.class final Lio/ktor/client/plugins/k$a$c;
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
    c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$3"
    f = "HttpCallValidator.kt"
    l = {
        0x97,
        0x98
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
            "Lio/ktor/client/plugins/k$a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/k$a$c;->$plugin:Lio/ktor/client/plugins/k;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
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
    new-instance v0, Lio/ktor/client/plugins/k$a$c;

    iget-object v1, p0, Lio/ktor/client/plugins/k$a$c;->$plugin:Lio/ktor/client/plugins/k;

    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/k$a$c;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/k$a$c;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/k$a$c;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/k$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/client/plugins/e0;

    check-cast p2, Li7/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/k$a$c;->f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v1, p0, Lio/ktor/client/plugins/k$a$c;->label:I

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
    iget-object v0, p0, Lio/ktor/client/plugins/k$a$c;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lio/ktor/client/call/b;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    iget-object p1, p0, Lio/ktor/client/plugins/k$a$c;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lio/ktor/client/plugins/e0;

    .line 42
    .line 43
    iget-object v1, p0, Lio/ktor/client/plugins/k$a$c;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Li7/d;

    .line 46
    const/4 v4, 0x0

    .line 47
    .line 48
    iput-object v4, p0, Lio/ktor/client/plugins/k$a$c;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    iput v3, p0, Lio/ktor/client/plugins/k$a$c;->label:I

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    return-object v0

    .line 58
    .line 59
    :cond_3
    :goto_0
    check-cast p1, Lio/ktor/client/call/b;

    .line 60
    .line 61
    iget-object v1, p0, Lio/ktor/client/plugins/k$a$c;->$plugin:Lio/ktor/client/plugins/k;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    iput-object p1, p0, Lio/ktor/client/plugins/k$a$c;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v2, p0, Lio/ktor/client/plugins/k$a$c;->label:I

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v3, p0}, Lio/ktor/client/plugins/k;->d(Lio/ktor/client/plugins/k;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-ne v1, v0, :cond_4

    .line 76
    return-object v0

    .line 77
    :cond_4
    move-object v0, p1

    .line 78
    :goto_1
    return-object v0
.end method
