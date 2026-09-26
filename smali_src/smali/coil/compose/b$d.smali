.class final Lcoil/compose/b$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b;->b()V
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
    c = "coil.compose.AsyncImagePainter$onRemembered$1"
    f = "AsyncImagePainter.kt"
    l = {
        0xf6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcoil/compose/b;


# direct methods
.method constructor <init>(Lcoil/compose/b;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/compose/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/compose/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/compose/b$d;->this$0:Lcoil/compose/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static final synthetic f(Lcoil/compose/b;Lcoil/compose/b$c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcoil/compose/b$d;->g(Lcoil/compose/b;Lcoil/compose/b$c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic g(Lcoil/compose/b;Lcoil/compose/b$c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil/compose/b;->s(Lcoil/compose/b;Lcoil/compose/b$c;)V

    .line 4
    .line 5
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 6
    return-object p0
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

    new-instance p1, Lcoil/compose/b$d;

    iget-object v0, p0, Lcoil/compose/b$d;->this$0:Lcoil/compose/b;

    invoke-direct {p1, v0, p2}, Lcoil/compose/b$d;-><init>(Lcoil/compose/b;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/compose/b$d;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcoil/compose/b$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/compose/b$d;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/compose/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcoil/compose/b$d;->label:I

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
    new-instance p1, Lcoil/compose/b$d$a;

    .line 29
    .line 30
    iget-object v1, p0, Lcoil/compose/b$d;->this$0:Lcoil/compose/b;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v1}, Lcoil/compose/b$d$a;-><init>(Lcoil/compose/b;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->o(Le8/a;)Lkotlinx/coroutines/flow/g;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    new-instance v1, Lcoil/compose/b$d$b;

    .line 40
    .line 41
    iget-object v3, p0, Lcoil/compose/b$d;->this$0:Lcoil/compose/b;

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3, v4}, Lcoil/compose/b$d$b;-><init>(Lcoil/compose/b;Lkotlin/coroutines/d;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/i;->D(Lkotlinx/coroutines/flow/g;Le8/p;)Lkotlinx/coroutines/flow/g;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object v1, p0, Lcoil/compose/b$d;->this$0:Lcoil/compose/b;

    .line 52
    .line 53
    new-instance v3, Lcoil/compose/b$d$c;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v1}, Lcoil/compose/b$d$c;-><init>(Lcoil/compose/b;)V

    .line 57
    .line 58
    iput v2, p0, Lcoil/compose/b$d;->label:I

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    return-object v0

    .line 66
    .line 67
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 68
    return-object p1
.end method
