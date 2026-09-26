.class final Lio/ktor/client/a$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/a;-><init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;)V
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
        "Lio/ktor/client/statement/d;",
        "Lio/ktor/client/call/b;",
        ">;",
        "Lio/ktor/client/statement/d;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.HttpClient$4"
    f = "HttpClient.kt"
    l = {
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/client/a;


# direct methods
.method constructor <init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/a$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/a$d;->this$0:Lio/ktor/client/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/ktor/util/pipeline/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/statement/d;
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
            "Lio/ktor/client/statement/d;",
            "Lio/ktor/client/call/b;",
            ">;",
            "Lio/ktor/client/statement/d;",
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
    new-instance p2, Lio/ktor/client/a$d;

    iget-object v0, p0, Lio/ktor/client/a$d;->this$0:Lio/ktor/client/a;

    invoke-direct {p2, v0, p3}, Lio/ktor/client/a$d;-><init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    iput-object p1, p2, Lio/ktor/client/a$d;->L$0:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p2, p1}, Lio/ktor/client/a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p2, Lio/ktor/client/statement/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/a$d;->f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v1, p0, Lio/ktor/client/a$d;->label:I

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
    iget-object v0, p0, Lio/ktor/client/a$d;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lio/ktor/util/pipeline/e;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    iget-object p1, p0, Lio/ktor/client/a$d;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 37
    .line 38
    :try_start_1
    iput-object p1, p0, Lio/ktor/client/a$d;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    iput v2, p0, Lio/ktor/client/a$d;->label:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lio/ktor/util/pipeline/e;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 44
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    return-object p1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object v4, v0

    .line 53
    move-object v0, p1

    .line 54
    move-object p1, v4

    .line 55
    .line 56
    :goto_1
    iget-object v1, p0, Lio/ktor/client/a$d;->this$0:Lio/ktor/client/a;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lio/ktor/client/a;->l()Lj7/b;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lio/ktor/client/utils/b;->d()Lj7/a;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    new-instance v3, Lio/ktor/client/utils/f;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Lio/ktor/client/call/b;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v0, p1}, Lio/ktor/client/utils/f;-><init>(Lio/ktor/client/statement/c;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    .line 83
    throw p1
.end method
