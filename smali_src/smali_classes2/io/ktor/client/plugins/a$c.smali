.class final Lio/ktor/client/plugins/a$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/a;->c(Lio/ktor/client/a;)V
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
        "Lio/ktor/client/statement/c;",
        "Lw7/l0;",
        ">;",
        "Lio/ktor/client/statement/c;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.BodyProgress$handle$2"
    f = "BodyProgress.kt"
    l = {
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/a$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/ktor/util/pipeline/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/statement/c;
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
            "Lio/ktor/client/statement/c;",
            "Lw7/l0;",
            ">;",
            "Lio/ktor/client/statement/c;",
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
    new-instance v0, Lio/ktor/client/plugins/a$c;

    invoke-direct {v0, p3}, Lio/ktor/client/plugins/a$c;-><init>(Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/a$c;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/a$c;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p2, Lio/ktor/client/statement/c;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/a$c;->f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v1, p0, Lio/ktor/client/plugins/a$c;->label:I

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
    iget-object p1, p0, Lio/ktor/client/plugins/a$c;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 31
    .line 32
    iget-object v1, p0, Lio/ktor/client/plugins/a$c;->L$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lio/ktor/client/statement/c;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-interface {v3}, Li7/c;->L()Lio/ktor/util/b;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lio/ktor/client/plugins/b;->a()Lio/ktor/util/a;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v4}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Le8/q;

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {v1, v3}, Lio/ktor/client/plugins/b;->c(Lio/ktor/client/statement/c;Le8/q;)Lio/ktor/client/statement/c;

    .line 65
    move-result-object v1

    .line 66
    const/4 v3, 0x0

    .line 67
    .line 68
    iput-object v3, p0, Lio/ktor/client/plugins/a$c;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput v2, p0, Lio/ktor/client/plugins/a$c;->label:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    return-object v0

    .line 78
    .line 79
    :cond_3
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 80
    return-object p1
.end method
