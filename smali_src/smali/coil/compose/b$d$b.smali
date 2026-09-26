.class final Lcoil/compose/b$d$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lcoil/request/h;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lcoil/compose/b$c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "coil.compose.AsyncImagePainter$onRemembered$1$2"
    f = "AsyncImagePainter.kt"
    l = {
        0xf5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lcoil/compose/b$d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/compose/b$d$b;->this$0:Lcoil/compose/b;

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

    new-instance p1, Lcoil/compose/b$d$b;

    iget-object v0, p0, Lcoil/compose/b$d$b;->this$0:Lcoil/compose/b;

    invoke-direct {p1, v0, p2}, Lcoil/compose/b$d$b;-><init>(Lcoil/compose/b;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final f(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcoil/request/h;
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
            "Lcoil/request/h;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/compose/b$c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcoil/compose/b$d$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/compose/b$d$b;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/compose/b$d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcoil/request/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/compose/b$d$b;->f(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v1, p0, Lcoil/compose/b$d$b;->label:I

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
    iget-object v0, p0, Lcoil/compose/b$d$b;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcoil/compose/b;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 19
    goto :goto_0

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
    iget-object p1, p0, Lcoil/compose/b$d$b;->this$0:Lcoil/compose/b;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcoil/compose/b;->w()Lcoil/e;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v3, p0, Lcoil/compose/b$d$b;->this$0:Lcoil/compose/b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcoil/compose/b;->y()Lcoil/request/h;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4}, Lcoil/compose/b;->r(Lcoil/compose/b;Lcoil/request/h;)Lcoil/request/h;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    iput-object p1, p0, Lcoil/compose/b$d$b;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    iput v2, p0, Lcoil/compose/b$d$b;->label:I

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v3, p0}, Lcoil/e;->c(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    if-ne v1, v0, :cond_2

    .line 57
    return-object v0

    .line 58
    :cond_2
    move-object v0, p1

    .line 59
    move-object p1, v1

    .line 60
    .line 61
    :goto_0
    check-cast p1, Lcoil/request/i;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1}, Lcoil/compose/b;->q(Lcoil/compose/b;Lcoil/request/i;)Lcoil/compose/b$c;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method
