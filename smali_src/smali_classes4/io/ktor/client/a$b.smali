.class final Lio/ktor/client/a$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/a;-><init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;)V
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
        "Ljava/lang/Object;",
        "Li7/d;",
        ">;",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,239:1\n1#2:240\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.HttpClient$2"
    f = "HttpClient.kt"
    l = {
        0x90,
        0x92
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/client/a;


# direct methods
.method constructor <init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/a$b;->this$0:Lio/ktor/client/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/ktor/util/pipeline/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Li7/d;",
            ">;",
            "Ljava/lang/Object;",
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
    new-instance v0, Lio/ktor/client/a$b;

    iget-object v1, p0, Lio/ktor/client/a$b;->this$0:Lio/ktor/client/a;

    invoke-direct {v0, v1, p3}, Lio/ktor/client/a$b;-><init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/a$b;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/a$b;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/a$b;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    iget v1, p0, Lio/ktor/client/a$b;->label:I

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
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lio/ktor/client/a$b;->L$1:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v3, p0, Lio/ktor/client/a$b;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lio/ktor/util/pipeline/e;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    iget-object p1, p0, Lio/ktor/client/a$b;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 44
    .line 45
    iget-object v1, p0, Lio/ktor/client/a$b;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    instance-of v4, v1, Lio/ktor/client/call/b;

    .line 48
    .line 49
    if-eqz v4, :cond_5

    .line 50
    .line 51
    iget-object v4, p0, Lio/ktor/client/a$b;->this$0:Lio/ktor/client/a;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lio/ktor/client/a;->m()Lio/ktor/client/statement/b;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    sget-object v5, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 58
    move-object v6, v1

    .line 59
    .line 60
    check-cast v6, Lio/ktor/client/call/b;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    iput-object p1, p0, Lio/ktor/client/a$b;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v1, p0, Lio/ktor/client/a$b;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, p0, Lio/ktor/client/a$b;->label:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5, v6, p0}, Lio/ktor/util/pipeline/d;->d(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    if-ne v3, v0, :cond_3

    .line 77
    return-object v0

    .line 78
    :cond_3
    move-object v7, v3

    .line 79
    move-object v3, p1

    .line 80
    move-object p1, v7

    .line 81
    .line 82
    :goto_0
    check-cast p1, Lio/ktor/client/statement/c;

    .line 83
    move-object v4, v1

    .line 84
    .line 85
    check-cast v4, Lio/ktor/client/call/b;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p1}, Lio/ktor/client/call/b;->k(Lio/ktor/client/statement/c;)V

    .line 89
    const/4 p1, 0x0

    .line 90
    .line 91
    iput-object p1, p0, Lio/ktor/client/a$b;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object p1, p0, Lio/ktor/client/a$b;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v2, p0, Lio/ktor/client/a$b;->label:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    if-ne p1, v0, :cond_4

    .line 102
    return-object v0

    .line 103
    .line 104
    :cond_4
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 105
    return-object p1

    .line 106
    .line 107
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v0, "Error: HttpClientCall expected, but found "

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const/16 v0, 0x28

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v0, ")."

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v0
.end method
