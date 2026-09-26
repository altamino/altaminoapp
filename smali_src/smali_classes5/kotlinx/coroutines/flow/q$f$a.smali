.class public final Lkotlinx/coroutines/flow/q$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/q$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1\n*L\n1#1,141:1\n120#2:142\n*E\n"
.end annotation


# instance fields
.field final synthetic $$this$flow$inlined:Lkotlinx/coroutines/flow/h;

.field final synthetic $transform$inlined:Le8/q;


# direct methods
.method public constructor <init>(Le8/q;Lkotlinx/coroutines/flow/h;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/q$f$a;->$transform$inlined:Le8/q;

    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/q$f$a;->$$this$flow$inlined:Lkotlinx/coroutines/flow/h;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/q$f$a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/q$f$a$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/q$f$a$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/q$f$a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/q$f$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/q$f$a$a;-><init>(Lkotlinx/coroutines/flow/q$f$a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/q$f$a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/q$f$a$a;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lkotlinx/coroutines/flow/q$f$a$a;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lkotlinx/coroutines/flow/q$f$a;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    iget-object p2, p0, Lkotlinx/coroutines/flow/q$f$a;->$transform$inlined:Le8/q;

    .line 59
    .line 60
    iget-object v2, p0, Lkotlinx/coroutines/flow/q$f$a;->$$this$flow$inlined:Lkotlinx/coroutines/flow/h;

    .line 61
    .line 62
    iput-object p0, v0, Lkotlinx/coroutines/flow/q$f$a$a;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput v3, v0, Lkotlinx/coroutines/flow/q$f$a$a;->label:I

    .line 65
    const/4 v3, 0x6

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, v2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object p2

    .line 73
    const/4 p1, 0x7

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(I)V

    .line 77
    .line 78
    if-ne p2, v1, :cond_3

    .line 79
    return-object v1

    .line 80
    :cond_3
    move-object p1, p0

    .line 81
    .line 82
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    move-result p2

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 91
    return-object p1

    .line 92
    .line 93
    :cond_4
    new-instance p2, Lkotlinx/coroutines/flow/internal/a;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/internal/a;-><init>(Lkotlinx/coroutines/flow/h;)V

    .line 97
    throw p2
.end method
