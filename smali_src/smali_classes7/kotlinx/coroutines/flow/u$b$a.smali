.class public final Lkotlinx/coroutines/flow/u$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/u$b;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n79#2,2:223\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Le8/p;

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/h;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/h;Le8/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/u$b$a;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

    iput-object p2, p0, Lkotlinx/coroutines/flow/u$b$a;->$action$inlined:Le8/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/flow/u$b$a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/u$b$a$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/u$b$a$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lkotlinx/coroutines/flow/u$b$a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/u$b$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/u$b$a$a;-><init>(Lkotlinx/coroutines/flow/u$b$a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/u$b$a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/u$b$a$a;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/u$b$a$a;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkotlinx/coroutines/flow/h;

    .line 57
    .line 58
    iget-object v2, v0, Lkotlinx/coroutines/flow/u$b$a$a;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    iget-object p2, p0, Lkotlinx/coroutines/flow/u$b$a;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

    .line 68
    .line 69
    iget-object v2, p0, Lkotlinx/coroutines/flow/u$b$a;->$action$inlined:Le8/p;

    .line 70
    .line 71
    iput-object p1, v0, Lkotlinx/coroutines/flow/u$b$a$a;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object p2, v0, Lkotlinx/coroutines/flow/u$b$a$a;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    iput v4, v0, Lkotlinx/coroutines/flow/u$b$a$a;->label:I

    .line 76
    const/4 v4, 0x6

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v2, p1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    const/4 v4, 0x7

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(I)V

    .line 88
    .line 89
    if-ne v2, v1, :cond_4

    .line 90
    return-object v1

    .line 91
    :cond_4
    move-object v2, p1

    .line 92
    move-object p1, p2

    .line 93
    :goto_1
    const/4 p2, 0x0

    .line 94
    .line 95
    iput-object p2, v0, Lkotlinx/coroutines/flow/u$b$a$a;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object p2, v0, Lkotlinx/coroutines/flow/u$b$a$a;->L$1:Ljava/lang/Object;

    .line 98
    .line 99
    iput v3, v0, Lkotlinx/coroutines/flow/u$b$a$a;->label:I

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    if-ne p1, v1, :cond_5

    .line 106
    return-object v1

    .line 107
    .line 108
    :cond_5
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 109
    return-object p1
.end method
