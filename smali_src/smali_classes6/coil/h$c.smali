.class final Lcoil/h$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/h;->c(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lcoil/request/i;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "coil.RealImageLoader$execute$2"
    f = "RealImageLoader.kt"
    l = {
        0x92
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $request:Lcoil/request/h;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcoil/h;


# direct methods
.method constructor <init>(Lcoil/request/h;Lcoil/h;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/h;",
            "Lcoil/h;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/h$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/h$c;->$request:Lcoil/request/h;

    iput-object p2, p0, Lcoil/h$c;->this$0:Lcoil/h;

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

    new-instance v0, Lcoil/h$c;

    iget-object v1, p0, Lcoil/h$c;->$request:Lcoil/request/h;

    iget-object v2, p0, Lcoil/h$c;->this$0:Lcoil/h;

    invoke-direct {v0, v1, v2, p2}, Lcoil/h$c;-><init>(Lcoil/request/h;Lcoil/h;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcoil/h$c;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/h$c;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
            "Lcoil/request/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcoil/h$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/h$c;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcoil/h$c;->label:I

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
    iget-object p1, p0, Lcoil/h$c;->L$0:Ljava/lang/Object;

    .line 29
    move-object v3, p1

    .line 30
    .line 31
    check-cast v3, Lkotlinx/coroutines/o0;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lkotlinx/coroutines/n2;->getImmediate()Lkotlinx/coroutines/n2;

    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    new-instance v6, Lcoil/h$c$a;

    .line 43
    .line 44
    iget-object p1, p0, Lcoil/h$c;->this$0:Lcoil/h;

    .line 45
    .line 46
    iget-object v1, p0, Lcoil/h$c;->$request:Lcoil/request/h;

    .line 47
    const/4 v7, 0x0

    .line 48
    .line 49
    .line 50
    invoke-direct {v6, p1, v1, v7}, Lcoil/h$c$a;-><init>(Lcoil/h;Lcoil/request/h;Lkotlin/coroutines/d;)V

    .line 51
    const/4 v7, 0x2

    .line 52
    const/4 v8, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iget-object v1, p0, Lcoil/h$c;->$request:Lcoil/request/h;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcoil/request/h;->M()Lf0/a;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    instance-of v1, v1, Lf0/b;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcoil/h$c;->$request:Lcoil/request/h;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcoil/request/h;->M()Lf0/a;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Lf0/b;

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Lf0/b;->getView()Landroid/view/View;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lcoil/util/i;->n(Landroid/view/View;)Lcoil/request/s;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lcoil/request/s;->b(Lkotlinx/coroutines/v0;)Lcoil/request/r;

    .line 86
    .line 87
    :cond_2
    iput v2, p0, Lcoil/h$c;->label:I

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p0}, Lkotlinx/coroutines/v0;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    if-ne p1, v0, :cond_3

    .line 94
    return-object v0

    .line 95
    :cond_3
    :goto_0
    return-object p1
.end method
