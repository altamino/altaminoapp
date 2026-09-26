.class final Lkotlinx/coroutines/flow/internal/v$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/v;->a(Lkotlinx/coroutines/flow/internal/t;Lkotlin/coroutines/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Integer;",
        "Lkotlin/coroutines/g$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_checkContext:Lkotlinx/coroutines/flow/internal/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/internal/t<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/internal/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/internal/t<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/v$a;->$this_checkContext:Lkotlinx/coroutines/flow/internal/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILkotlin/coroutines/g$b;)Ljava/lang/Integer;
    .locals 3
    .param p2    # Lkotlin/coroutines/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lkotlin/coroutines/g$b;->getKey()Lkotlin/coroutines/g$c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/v$a;->$this_checkContext:Lkotlinx/coroutines/flow/internal/t;

    .line 7
    .line 8
    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/t;->collectContext:Lkotlin/coroutines/g;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sget-object v2, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    if-eq p2, v1, :cond_0

    .line 19
    .line 20
    const/high16 p1, -0x80000000

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_1
    check-cast v1, Lkotlinx/coroutines/b2;

    .line 31
    .line 32
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Job"

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    check-cast p2, Lkotlinx/coroutines/b2;

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v1}, Lkotlinx/coroutines/flow/internal/v;->b(Lkotlinx/coroutines/b2;Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/b2;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    if-ne p2, v1, :cond_3

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p2, ", expected child of "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Lkotlin/coroutines/g$b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/v$a;->a(ILkotlin/coroutines/g$b;)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
