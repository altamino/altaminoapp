.class final Lkotlinx/coroutines/flow/t$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/t;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Lkotlinx/coroutines/flow/h0;Ljava/lang/Object;)Lkotlinx/coroutines/b2;
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
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    l = {
        0xd6,
        0xda,
        0xdb,
        0xe1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $shared:Lkotlinx/coroutines/flow/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $started:Lkotlinx/coroutines/flow/h0;

.field final synthetic $upstream:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/h0;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/h0;",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/w<",
            "TT;>;TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/flow/t$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$started:Lkotlinx/coroutines/flow/h0;

    iput-object p2, p0, Lkotlinx/coroutines/flow/t$a;->$upstream:Lkotlinx/coroutines/flow/g;

    iput-object p3, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    iput-object p4, p0, Lkotlinx/coroutines/flow/t$a;->$initialValue:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 6
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

    new-instance p1, Lkotlinx/coroutines/flow/t$a;

    iget-object v1, p0, Lkotlinx/coroutines/flow/t$a;->$started:Lkotlinx/coroutines/flow/h0;

    iget-object v2, p0, Lkotlinx/coroutines/flow/t$a;->$upstream:Lkotlinx/coroutines/flow/g;

    iget-object v3, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    iget-object v4, p0, Lkotlinx/coroutines/flow/t$a;->$initialValue:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/t$a;-><init>(Lkotlinx/coroutines/flow/h0;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/t$a;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/t$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/t$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/t$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Lkotlinx/coroutines/flow/t$a;->label:I

    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$started:Lkotlinx/coroutines/flow/h0;

    .line 43
    .line 44
    sget-object v1, Lkotlinx/coroutines/flow/h0;->Companion:Lkotlinx/coroutines/flow/h0$a;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/h0$a;->c()Lkotlinx/coroutines/flow/h0;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    if-ne p1, v6, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$upstream:Lkotlinx/coroutines/flow/g;

    .line 53
    .line 54
    iget-object v1, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    .line 55
    .line 56
    iput v5, p0, Lkotlinx/coroutines/flow/t$a;->label:I

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-ne p1, v0, :cond_7

    .line 63
    return-object v0

    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$started:Lkotlinx/coroutines/flow/h0;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/h0$a;->d()Lkotlinx/coroutines/flow/h0;

    .line 69
    move-result-object v1

    .line 70
    const/4 v5, 0x0

    .line 71
    .line 72
    if-ne p1, v1, :cond_6

    .line 73
    .line 74
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Lkotlinx/coroutines/flow/w;->d()Lkotlinx/coroutines/flow/l0;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    new-instance v1, Lkotlinx/coroutines/flow/t$a$a;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v5}, Lkotlinx/coroutines/flow/t$a$a;-><init>(Lkotlin/coroutines/d;)V

    .line 84
    .line 85
    iput v4, p0, Lkotlinx/coroutines/flow/t$a;->label:I

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/i;->u(Lkotlinx/coroutines/flow/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-ne p1, v0, :cond_5

    .line 92
    return-object v0

    .line 93
    .line 94
    :cond_5
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$upstream:Lkotlinx/coroutines/flow/g;

    .line 95
    .line 96
    iget-object v1, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    .line 97
    .line 98
    iput v3, p0, Lkotlinx/coroutines/flow/t$a;->label:I

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    if-ne p1, v0, :cond_7

    .line 105
    return-object v0

    .line 106
    .line 107
    :cond_6
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a;->$started:Lkotlinx/coroutines/flow/h0;

    .line 108
    .line 109
    iget-object v1, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    .line 110
    .line 111
    .line 112
    invoke-interface {v1}, Lkotlinx/coroutines/flow/w;->d()Lkotlinx/coroutines/flow/l0;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/h0;->a(Lkotlinx/coroutines/flow/l0;)Lkotlinx/coroutines/flow/g;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lkotlinx/coroutines/flow/i;->o(Lkotlinx/coroutines/flow/g;)Lkotlinx/coroutines/flow/g;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    new-instance v1, Lkotlinx/coroutines/flow/t$a$b;

    .line 124
    .line 125
    iget-object v3, p0, Lkotlinx/coroutines/flow/t$a;->$upstream:Lkotlinx/coroutines/flow/g;

    .line 126
    .line 127
    iget-object v4, p0, Lkotlinx/coroutines/flow/t$a;->$shared:Lkotlinx/coroutines/flow/w;

    .line 128
    .line 129
    iget-object v6, p0, Lkotlinx/coroutines/flow/t$a;->$initialValue:Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v3, v4, v6, v5}, Lkotlinx/coroutines/flow/t$a$b;-><init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 133
    .line 134
    iput v2, p0, Lkotlinx/coroutines/flow/t$a;->label:I

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/i;->l(Lkotlinx/coroutines/flow/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    if-ne p1, v0, :cond_7

    .line 141
    return-object v0

    .line 142
    .line 143
    :cond_7
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 144
    return-object p1
.end method
