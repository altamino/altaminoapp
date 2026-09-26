.class final Lcoil/intercept/a$e;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/a;->i(Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lcoil/intercept/a$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "coil.intercept.EngineInterceptor$execute$executeResult$1"
    f = "EngineInterceptor.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $components:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Lcoil/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $eventListener:Lcoil/c;

.field final synthetic $fetchResult:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Lcoil/fetch/h;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mappedData:Ljava/lang/Object;

.field final synthetic $options:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Lcoil/request/m;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcoil/request/h;

.field label:I

.field final synthetic this$0:Lcoil/intercept/a;


# direct methods
.method constructor <init>(Lcoil/intercept/a;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lcoil/request/h;Ljava/lang/Object;Lkotlin/jvm/internal/p0;Lcoil/c;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/a;",
            "Lkotlin/jvm/internal/p0<",
            "Lcoil/fetch/h;",
            ">;",
            "Lkotlin/jvm/internal/p0<",
            "Lcoil/b;",
            ">;",
            "Lcoil/request/h;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/p0<",
            "Lcoil/request/m;",
            ">;",
            "Lcoil/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/intercept/a$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/intercept/a$e;->this$0:Lcoil/intercept/a;

    iput-object p2, p0, Lcoil/intercept/a$e;->$fetchResult:Lkotlin/jvm/internal/p0;

    iput-object p3, p0, Lcoil/intercept/a$e;->$components:Lkotlin/jvm/internal/p0;

    iput-object p4, p0, Lcoil/intercept/a$e;->$request:Lcoil/request/h;

    iput-object p5, p0, Lcoil/intercept/a$e;->$mappedData:Ljava/lang/Object;

    iput-object p6, p0, Lcoil/intercept/a$e;->$options:Lkotlin/jvm/internal/p0;

    iput-object p7, p0, Lcoil/intercept/a$e;->$eventListener:Lcoil/c;

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

    new-instance p1, Lcoil/intercept/a$e;

    iget-object v1, p0, Lcoil/intercept/a$e;->this$0:Lcoil/intercept/a;

    iget-object v2, p0, Lcoil/intercept/a$e;->$fetchResult:Lkotlin/jvm/internal/p0;

    iget-object v3, p0, Lcoil/intercept/a$e;->$components:Lkotlin/jvm/internal/p0;

    iget-object v4, p0, Lcoil/intercept/a$e;->$request:Lcoil/request/h;

    iget-object v5, p0, Lcoil/intercept/a$e;->$mappedData:Ljava/lang/Object;

    iget-object v6, p0, Lcoil/intercept/a$e;->$options:Lkotlin/jvm/internal/p0;

    iget-object v7, p0, Lcoil/intercept/a$e;->$eventListener:Lcoil/c;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcoil/intercept/a$e;-><init>(Lcoil/intercept/a;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lcoil/request/h;Ljava/lang/Object;Lkotlin/jvm/internal/p0;Lcoil/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/a$e;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
            "Lcoil/intercept/a$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcoil/intercept/a$e;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/intercept/a$e;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/intercept/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcoil/intercept/a$e;->label:I

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
    iget-object v1, p0, Lcoil/intercept/a$e;->this$0:Lcoil/intercept/a;

    .line 29
    .line 30
    iget-object p1, p0, Lcoil/intercept/a$e;->$fetchResult:Lkotlin/jvm/internal/p0;

    .line 31
    .line 32
    iget-object p1, p1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lcoil/fetch/m;

    .line 35
    .line 36
    iget-object v3, p0, Lcoil/intercept/a$e;->$components:Lkotlin/jvm/internal/p0;

    .line 37
    .line 38
    iget-object v3, v3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lcoil/b;

    .line 41
    .line 42
    iget-object v4, p0, Lcoil/intercept/a$e;->$request:Lcoil/request/h;

    .line 43
    .line 44
    iget-object v5, p0, Lcoil/intercept/a$e;->$mappedData:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v6, p0, Lcoil/intercept/a$e;->$options:Lkotlin/jvm/internal/p0;

    .line 47
    .line 48
    iget-object v6, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, Lcoil/request/m;

    .line 51
    .line 52
    iget-object v7, p0, Lcoil/intercept/a$e;->$eventListener:Lcoil/c;

    .line 53
    .line 54
    iput v2, p0, Lcoil/intercept/a$e;->label:I

    .line 55
    move-object v2, p1

    .line 56
    move-object v8, p0

    .line 57
    .line 58
    .line 59
    invoke-static/range {v1 .. v8}, Lcoil/intercept/a;->c(Lcoil/intercept/a;Lcoil/fetch/m;Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    return-object v0

    .line 64
    :cond_2
    :goto_0
    return-object p1
.end method
