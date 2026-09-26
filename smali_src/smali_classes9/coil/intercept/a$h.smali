.class final Lcoil/intercept/a$h;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/a;->a(Lcoil/intercept/b$a;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lcoil/request/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$intercept$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "coil.intercept.EngineInterceptor$intercept$2"
    f = "EngineInterceptor.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cacheKey:Lcoil/memory/MemoryCache$Key;

.field final synthetic $chain:Lcoil/intercept/b$a;

.field final synthetic $eventListener:Lcoil/c;

.field final synthetic $mappedData:Ljava/lang/Object;

.field final synthetic $options:Lcoil/request/m;

.field final synthetic $request:Lcoil/request/h;

.field label:I

.field final synthetic this$0:Lcoil/intercept/a;


# direct methods
.method constructor <init>(Lcoil/intercept/a;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lcoil/memory/MemoryCache$Key;Lcoil/intercept/b$a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/a;",
            "Lcoil/request/h;",
            "Ljava/lang/Object;",
            "Lcoil/request/m;",
            "Lcoil/c;",
            "Lcoil/memory/MemoryCache$Key;",
            "Lcoil/intercept/b$a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/intercept/a$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/intercept/a$h;->this$0:Lcoil/intercept/a;

    iput-object p2, p0, Lcoil/intercept/a$h;->$request:Lcoil/request/h;

    iput-object p3, p0, Lcoil/intercept/a$h;->$mappedData:Ljava/lang/Object;

    iput-object p4, p0, Lcoil/intercept/a$h;->$options:Lcoil/request/m;

    iput-object p5, p0, Lcoil/intercept/a$h;->$eventListener:Lcoil/c;

    iput-object p6, p0, Lcoil/intercept/a$h;->$cacheKey:Lcoil/memory/MemoryCache$Key;

    iput-object p7, p0, Lcoil/intercept/a$h;->$chain:Lcoil/intercept/b$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 9
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

    new-instance p1, Lcoil/intercept/a$h;

    iget-object v1, p0, Lcoil/intercept/a$h;->this$0:Lcoil/intercept/a;

    iget-object v2, p0, Lcoil/intercept/a$h;->$request:Lcoil/request/h;

    iget-object v3, p0, Lcoil/intercept/a$h;->$mappedData:Ljava/lang/Object;

    iget-object v4, p0, Lcoil/intercept/a$h;->$options:Lcoil/request/m;

    iget-object v5, p0, Lcoil/intercept/a$h;->$eventListener:Lcoil/c;

    iget-object v6, p0, Lcoil/intercept/a$h;->$cacheKey:Lcoil/memory/MemoryCache$Key;

    iget-object v7, p0, Lcoil/intercept/a$h;->$chain:Lcoil/intercept/b$a;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcoil/intercept/a$h;-><init>(Lcoil/intercept/a;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lcoil/memory/MemoryCache$Key;Lcoil/intercept/b$a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/a$h;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
            "Lcoil/request/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcoil/intercept/a$h;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/intercept/a$h;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/intercept/a$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Lcoil/intercept/a$h;->label:I

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
    iget-object v1, p0, Lcoil/intercept/a$h;->this$0:Lcoil/intercept/a;

    .line 29
    .line 30
    iget-object p1, p0, Lcoil/intercept/a$h;->$request:Lcoil/request/h;

    .line 31
    .line 32
    iget-object v3, p0, Lcoil/intercept/a$h;->$mappedData:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v4, p0, Lcoil/intercept/a$h;->$options:Lcoil/request/m;

    .line 35
    .line 36
    iget-object v5, p0, Lcoil/intercept/a$h;->$eventListener:Lcoil/c;

    .line 37
    .line 38
    iput v2, p0, Lcoil/intercept/a$h;->label:I

    .line 39
    move-object v2, p1

    .line 40
    move-object v6, p0

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v6}, Lcoil/intercept/a;->d(Lcoil/intercept/a;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_2
    :goto_0
    check-cast p1, Lcoil/intercept/a$b;

    .line 50
    .line 51
    iget-object v0, p0, Lcoil/intercept/a$h;->this$0:Lcoil/intercept/a;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcoil/intercept/a;->f(Lcoil/intercept/a;)Lcoil/memory/c;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcoil/intercept/a$h;->$cacheKey:Lcoil/memory/MemoryCache$Key;

    .line 58
    .line 59
    iget-object v2, p0, Lcoil/intercept/a$h;->$request:Lcoil/request/h;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, p1}, Lcoil/memory/c;->h(Lcoil/memory/MemoryCache$Key;Lcoil/request/h;Lcoil/intercept/a$b;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcoil/intercept/a$b;->e()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    iget-object v3, p0, Lcoil/intercept/a$h;->$request:Lcoil/request/h;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcoil/intercept/a$b;->c()Lcoil/decode/f;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    iget-object v1, p0, Lcoil/intercept/a$h;->$cacheKey:Lcoil/memory/MemoryCache$Key;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    move-object v5, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const/4 v0, 0x0

    .line 81
    move-object v5, v0

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p1}, Lcoil/intercept/a$b;->d()Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcoil/intercept/a$b;->f()Z

    .line 89
    move-result v7

    .line 90
    .line 91
    iget-object p1, p0, Lcoil/intercept/a$h;->$chain:Lcoil/intercept/b$a;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcoil/util/i;->v(Lcoil/intercept/b$a;)Z

    .line 95
    move-result v8

    .line 96
    .line 97
    new-instance p1, Lcoil/request/p;

    .line 98
    move-object v1, p1

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v1 .. v8}, Lcoil/request/p;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/h;Lcoil/decode/f;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 102
    return-object p1
.end method
