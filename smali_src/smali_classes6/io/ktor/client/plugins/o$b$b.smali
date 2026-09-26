.class final Lio/ktor/client/plugins/o$b$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/o$b;->c(Lio/ktor/client/plugins/o;Lio/ktor/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lio/ktor/util/pipeline/e<",
        "Lio/ktor/client/statement/d;",
        "Lio/ktor/client/call/b;",
        ">;",
        "Lio/ktor/client/statement/d;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$2"
    f = "HttpPlainText.kt"
    l = {
        0x88,
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/o;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/o;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/o;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/o$b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/o$b$b;->$plugin:Lio/ktor/client/plugins/o;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/ktor/util/pipeline/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/statement/d;
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
            "Lio/ktor/util/pipeline/e<",
            "Lio/ktor/client/statement/d;",
            "Lio/ktor/client/call/b;",
            ">;",
            "Lio/ktor/client/statement/d;",
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
    new-instance v0, Lio/ktor/client/plugins/o$b$b;

    iget-object v1, p0, Lio/ktor/client/plugins/o$b$b;->$plugin:Lio/ktor/client/plugins/o;

    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/o$b$b;-><init>(Lio/ktor/client/plugins/o;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/o$b$b;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/o$b$b;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/o$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p2, Lio/ktor/client/statement/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/o$b$b;->f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    iget v1, p0, Lio/ktor/client/plugins/o$b$b;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    goto/16 :goto_1

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
    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/o$b$b;->L$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lo7/a;

    .line 32
    .line 33
    iget-object v3, p0, Lio/ktor/client/plugins/o$b$b;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Lio/ktor/util/pipeline/e;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    iget-object p1, p0, Lio/ktor/client/plugins/o$b$b;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 47
    .line 48
    iget-object v1, p0, Lio/ktor/client/plugins/o$b$b;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lio/ktor/client/statement/d;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lio/ktor/client/statement/d;->a()Lo7/a;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lio/ktor/client/statement/d;->b()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lo7/a;->a()Lkotlin/reflect/KClass;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    const-class v6, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v5

    .line 73
    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    instance-of v5, v1, Lio/ktor/utils/io/g;

    .line 77
    .line 78
    if-nez v5, :cond_3

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v6, v1

    .line 81
    .line 82
    check-cast v6, Lio/ktor/utils/io/g;

    .line 83
    .line 84
    const-wide/16 v7, 0x0

    .line 85
    const/4 v10, 0x1

    .line 86
    const/4 v11, 0x0

    .line 87
    .line 88
    iput-object p1, p0, Lio/ktor/client/plugins/o$b$b;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v4, p0, Lio/ktor/client/plugins/o$b$b;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput v3, p0, Lio/ktor/client/plugins/o$b$b;->label:I

    .line 93
    move-object v9, p0

    .line 94
    .line 95
    .line 96
    invoke-static/range {v6 .. v11}, Lio/ktor/utils/io/g$b;->a(Lio/ktor/utils/io/g;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    if-ne v1, v0, :cond_4

    .line 100
    return-object v0

    .line 101
    :cond_4
    move-object v3, p1

    .line 102
    move-object p1, v1

    .line 103
    move-object v1, v4

    .line 104
    .line 105
    :goto_0
    check-cast p1, Lr7/j;

    .line 106
    .line 107
    iget-object v4, p0, Lio/ktor/client/plugins/o$b$b;->$plugin:Lio/ktor/client/plugins/o;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    check-cast v5, Lio/ktor/client/call/b;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5, p1}, Lio/ktor/client/plugins/o;->d(Lio/ktor/client/call/b;Lr7/m;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    new-instance v4, Lio/ktor/client/statement/d;

    .line 120
    .line 121
    .line 122
    invoke-direct {v4, v1, p1}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 123
    const/4 p1, 0x0

    .line 124
    .line 125
    iput-object p1, p0, Lio/ktor/client/plugins/o$b$b;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object p1, p0, Lio/ktor/client/plugins/o$b$b;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    iput v2, p0, Lio/ktor/client/plugins/o$b$b;->label:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    if-ne p1, v0, :cond_5

    .line 136
    return-object v0

    .line 137
    .line 138
    :cond_5
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 139
    return-object p1

    .line 140
    .line 141
    :cond_6
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 142
    return-object p1
.end method
