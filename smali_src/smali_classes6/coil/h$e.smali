.class final Lcoil/h$e;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/h;->g(Lcoil/request/h;ILkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "coil.RealImageLoader$executeMain$result$1"
    f = "RealImageLoader.kt"
    l = {
        0xc1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $eventListener:Lcoil/c;

.field final synthetic $placeholderBitmap:Landroid/graphics/Bitmap;

.field final synthetic $request:Lcoil/request/h;

.field final synthetic $size:Lcoil/size/i;

.field label:I

.field final synthetic this$0:Lcoil/h;


# direct methods
.method constructor <init>(Lcoil/request/h;Lcoil/h;Lcoil/size/i;Lcoil/c;Landroid/graphics/Bitmap;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/h;",
            "Lcoil/h;",
            "Lcoil/size/i;",
            "Lcoil/c;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/h$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/h$e;->$request:Lcoil/request/h;

    iput-object p2, p0, Lcoil/h$e;->this$0:Lcoil/h;

    iput-object p3, p0, Lcoil/h$e;->$size:Lcoil/size/i;

    iput-object p4, p0, Lcoil/h$e;->$eventListener:Lcoil/c;

    iput-object p5, p0, Lcoil/h$e;->$placeholderBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
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

    new-instance p1, Lcoil/h$e;

    iget-object v1, p0, Lcoil/h$e;->$request:Lcoil/request/h;

    iget-object v2, p0, Lcoil/h$e;->this$0:Lcoil/h;

    iget-object v3, p0, Lcoil/h$e;->$size:Lcoil/size/i;

    iget-object v4, p0, Lcoil/h$e;->$eventListener:Lcoil/c;

    iget-object v5, p0, Lcoil/h$e;->$placeholderBitmap:Landroid/graphics/Bitmap;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcoil/h$e;-><init>(Lcoil/request/h;Lcoil/h;Lcoil/size/i;Lcoil/c;Landroid/graphics/Bitmap;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcoil/h$e;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcoil/h$e;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcoil/h$e;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcoil/h$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    iget v1, p0, Lcoil/h$e;->label:I

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
    goto :goto_1

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
    new-instance p1, Lcoil/intercept/c;

    .line 29
    .line 30
    iget-object v4, p0, Lcoil/h$e;->$request:Lcoil/request/h;

    .line 31
    .line 32
    iget-object v1, p0, Lcoil/h$e;->this$0:Lcoil/h;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcoil/h;->f(Lcoil/h;)Ljava/util/List;

    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x0

    .line 38
    .line 39
    iget-object v7, p0, Lcoil/h$e;->$request:Lcoil/request/h;

    .line 40
    .line 41
    iget-object v8, p0, Lcoil/h$e;->$size:Lcoil/size/i;

    .line 42
    .line 43
    iget-object v9, p0, Lcoil/h$e;->$eventListener:Lcoil/c;

    .line 44
    .line 45
    iget-object v1, p0, Lcoil/h$e;->$placeholderBitmap:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    move v10, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    move v10, v1

    .line 52
    :goto_0
    move-object v3, p1

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v3 .. v10}, Lcoil/intercept/c;-><init>(Lcoil/request/h;Ljava/util/List;ILcoil/request/h;Lcoil/size/i;Lcoil/c;Z)V

    .line 56
    .line 57
    iget-object v1, p0, Lcoil/h$e;->$request:Lcoil/request/h;

    .line 58
    .line 59
    iput v2, p0, Lcoil/h$e;->label:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1, p0}, Lcoil/intercept/c;->g(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    return-object v0

    .line 67
    :cond_3
    :goto_1
    return-object p1
.end method
