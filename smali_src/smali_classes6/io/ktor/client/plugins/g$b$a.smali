.class final Lio/ktor/client/plugins/g$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/g$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lio/ktor/utils/io/w;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2$result$channel$1"
    f = "DefaultTransform.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $body:Ljava/lang/Object;

.field final synthetic $response:Lio/ktor/client/statement/c;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/ktor/client/statement/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/g$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/g$b$a;->$body:Ljava/lang/Object;

    iput-object p2, p0, Lio/ktor/client/plugins/g$b$a;->$response:Lio/ktor/client/statement/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
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

    new-instance v0, Lio/ktor/client/plugins/g$b$a;

    iget-object v1, p0, Lio/ktor/client/plugins/g$b$a;->$body:Ljava/lang/Object;

    iget-object v2, p0, Lio/ktor/client/plugins/g$b$a;->$response:Lio/ktor/client/statement/c;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/client/plugins/g$b$a;-><init>(Ljava/lang/Object;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/g$b$a;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lio/ktor/utils/io/w;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/w;
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
            "Lio/ktor/utils/io/w;",
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/g$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/ktor/client/plugins/g$b$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lio/ktor/client/plugins/g$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/w;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/g$b$a;->f(Lio/ktor/utils/io/w;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Lio/ktor/client/plugins/g$b$a;->label:I

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
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    iget-object p1, p0, Lio/ktor/client/plugins/g$b$a;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lio/ktor/utils/io/w;

    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lio/ktor/client/plugins/g$b$a;->$body:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lio/ktor/utils/io/g;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Lio/ktor/utils/io/w;->d()Lio/ktor/utils/io/j;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput v2, p0, Lio/ktor/client/plugins/g$b$a;->label:I

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v2, 0x7fffffffffffffffL

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p1, v2, v3, p0}, Lio/ktor/utils/io/h;->b(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 53
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    return-object v0

    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/ktor/client/plugins/g$b$a;->$response:Lio/ktor/client/statement/c;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lio/ktor/client/statement/e;->d(Lio/ktor/client/statement/c;)V

    .line 62
    .line 63
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 64
    return-object p1

    .line 65
    .line 66
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/ktor/client/plugins/g$b$a;->$response:Lio/ktor/client/statement/c;

    .line 67
    .line 68
    const-string v1, "Receive failed"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/p0;->c(Lkotlinx/coroutines/o0;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    throw p1

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    .line 76
    :goto_2
    iget-object v0, p0, Lio/ktor/client/plugins/g$b$a;->$response:Lio/ktor/client/statement/c;

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p1}, Lkotlinx/coroutines/p0;->d(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;)V

    .line 80
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .line 82
    :goto_3
    iget-object v0, p0, Lio/ktor/client/plugins/g$b$a;->$response:Lio/ktor/client/statement/c;

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lio/ktor/client/statement/e;->d(Lio/ktor/client/statement/c;)V

    .line 86
    throw p1
.end method
