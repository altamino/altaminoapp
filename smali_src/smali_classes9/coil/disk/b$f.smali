.class final Lcoil/disk/b$f;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/disk/b;->b0()V
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
    c = "coil.disk.DiskLruCache$launchCleanup$1"
    f = "DiskLruCache.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcoil/disk/b;


# direct methods
.method constructor <init>(Lcoil/disk/b;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/disk/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/disk/b$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/disk/b$f;->this$0:Lcoil/disk/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
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

    new-instance p1, Lcoil/disk/b$f;

    iget-object v0, p0, Lcoil/disk/b$f;->this$0:Lcoil/disk/b;

    invoke-direct {p1, v0, p2}, Lcoil/disk/b$f;-><init>(Lcoil/disk/b;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/disk/b$f;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcoil/disk/b$f;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/disk/b$f;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/disk/b$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 5
    iget v0, p0, Lcoil/disk/b$f;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcoil/disk/b$f;->this$0:Lcoil/disk/b;

    .line 13
    monitor-enter p1

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lcoil/disk/b;->f(Lcoil/disk/b;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcoil/disk/b;->b(Lcoil/disk/b;)Z

    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-static {p1}, Lcoil/disk/b;->n(Lcoil/disk/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_3

    .line 34
    .line 35
    .line 36
    :catch_0
    :try_start_2
    invoke-static {p1, v0}, Lcoil/disk/b;->m(Lcoil/disk/b;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcoil/disk/b;->h(Lcoil/disk/b;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcoil/disk/b;->o(Lcoil/disk/b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :catch_1
    :try_start_4
    invoke-static {p1, v0}, Lcoil/disk/b;->l(Lcoil/disk/b;Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lcoil/disk/b;->k(Lcoil/disk/b;Lokio/BufferedSink;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    :cond_1
    :goto_1
    monitor-exit p1

    .line 62
    .line 63
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_2
    :goto_2
    :try_start_5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    monitor-exit p1

    .line 68
    return-object v0

    .line 69
    :goto_3
    monitor-exit p1

    .line 70
    throw v0

    .line 71
    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p1
.end method
