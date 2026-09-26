.class final Lkotlinx/serialization/json/internal/o0$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/o0;->g()Lkotlinx/serialization/json/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Le8/q<",
        "Lw7/c<",
        "Lw7/l0;",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;",
        "Lw7/l0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1"
    f = "JsonTreeReader.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlinx/serialization/json/internal/o0;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/o0;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/internal/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/serialization/json/internal/o0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lw7/c;Lw7/l0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lw7/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/c<",
            "Lw7/l0;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lw7/l0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance p2, Lkotlinx/serialization/json/internal/o0$a;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    invoke-direct {p2, v0, p3}, Lkotlinx/serialization/json/internal/o0$a;-><init>(Lkotlinx/serialization/json/internal/o0;Lkotlin/coroutines/d;)V

    iput-object p1, p2, Lkotlinx/serialization/json/internal/o0$a;->L$0:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/o0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw7/c;

    check-cast p2, Lw7/l0;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/o0$a;->f(Lw7/c;Lw7/l0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Lkotlinx/serialization/json/internal/o0$a;->label:I

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
    iget-object p1, p0, Lkotlinx/serialization/json/internal/o0$a;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lw7/c;

    .line 31
    .line 32
    iget-object v1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lkotlinx/serialization/json/internal/o0;->a(Lkotlinx/serialization/json/internal/o0;)Lkotlinx/serialization/json/internal/a;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 40
    move-result v1

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/o0;->d(Lkotlinx/serialization/json/internal/o0;Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/o0;->d(Lkotlinx/serialization/json/internal/o0;Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v3, 0x6

    .line 61
    .line 62
    if-ne v1, v3, :cond_5

    .line 63
    .line 64
    iget-object v1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    .line 65
    .line 66
    iput v2, p0, Lkotlinx/serialization/json/internal/o0$a;->label:I

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p1, p0}, Lkotlinx/serialization/json/internal/o0;->c(Lkotlinx/serialization/json/internal/o0;Lw7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    if-ne p1, v0, :cond_4

    .line 73
    return-object v0

    .line 74
    .line 75
    :cond_4
    :goto_0
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_5
    const/16 p1, 0x8

    .line 79
    .line 80
    if-ne v1, p1, :cond_6

    .line 81
    .line 82
    iget-object p1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lkotlinx/serialization/json/internal/o0;->b(Lkotlinx/serialization/json/internal/o0;)Lkotlinx/serialization/json/JsonElement;

    .line 86
    move-result-object p1

    .line 87
    :goto_1
    return-object p1

    .line 88
    .line 89
    :cond_6
    iget-object p1, p0, Lkotlinx/serialization/json/internal/o0$a;->this$0:Lkotlinx/serialization/json/internal/o0;

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lkotlinx/serialization/json/internal/o0;->a(Lkotlinx/serialization/json/internal/o0;)Lkotlinx/serialization/json/internal/a;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    const-string v1, "Can\'t begin reading element, unexpected token"

    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x6

    .line 99
    const/4 v5, 0x0

    .line 100
    .line 101
    .line 102
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 103
    .line 104
    new-instance p1, Lw7/i;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 108
    throw p1
.end method
