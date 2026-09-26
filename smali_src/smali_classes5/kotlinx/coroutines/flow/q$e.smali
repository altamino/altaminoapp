.class final Lkotlinx/coroutines/flow/q$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/q;->d(Lkotlinx/coroutines/flow/g;I)Lkotlinx/coroutines/flow/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# instance fields
.field final synthetic $consumed:Lkotlin/jvm/internal/n0;

.field final synthetic $count:I

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/n0;ILkotlinx/coroutines/flow/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/n0;",
            "I",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/q$e;->$consumed:Lkotlin/jvm/internal/n0;

    iput p2, p0, Lkotlinx/coroutines/flow/q$e;->$count:I

    iput-object p3, p0, Lkotlinx/coroutines/flow/q$e;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

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
    instance-of v0, p2, Lkotlinx/coroutines/flow/q$e$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/q$e$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/q$e$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/q$e$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/q$e$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/q$e$a;-><init>(Lkotlinx/coroutines/flow/q$e;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/q$e$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/q$e$a;->label:I

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
    .line 55
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    iget-object p2, p0, Lkotlinx/coroutines/flow/q$e;->$consumed:Lkotlin/jvm/internal/n0;

    .line 62
    .line 63
    iget v2, p2, Lkotlin/jvm/internal/n0;->element:I

    .line 64
    add-int/2addr v2, v4

    .line 65
    .line 66
    iput v2, p2, Lkotlin/jvm/internal/n0;->element:I

    .line 67
    .line 68
    iget p2, p0, Lkotlinx/coroutines/flow/q$e;->$count:I

    .line 69
    .line 70
    if-ge v2, p2, :cond_5

    .line 71
    .line 72
    iget-object p2, p0, Lkotlinx/coroutines/flow/q$e;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

    .line 73
    .line 74
    iput v4, v0, Lkotlinx/coroutines/flow/q$e$a;->label:I

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    if-ne p1, v1, :cond_4

    .line 81
    return-object v1

    .line 82
    .line 83
    :cond_4
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 84
    return-object p1

    .line 85
    .line 86
    :cond_5
    iget-object p2, p0, Lkotlinx/coroutines/flow/q$e;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

    .line 87
    .line 88
    iput v3, v0, Lkotlinx/coroutines/flow/q$e$a;->label:I

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/flow/q;->a(Lkotlinx/coroutines/flow/h;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-ne p1, v1, :cond_6

    .line 95
    return-object v1

    .line 96
    .line 97
    :cond_6
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 98
    return-object p1
.end method
