.class final Lio/ktor/client/plugins/y$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/y$b;->c(Lio/ktor/client/plugins/y;Lio/ktor/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lio/ktor/client/plugins/e0;",
        "Li7/d;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lio/ktor/client/call/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpTimeout$Plugin$install$1"
    f = "HttpTimeout.kt"
    l = {
        0x92,
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/y;

.field final synthetic $scope:Lio/ktor/client/a;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/y;Lio/ktor/client/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/y;",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/y$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/y$b$a;->$plugin:Lio/ktor/client/plugins/y;

    iput-object p2, p0, Lio/ktor/client/plugins/y$b$a;->$scope:Lio/ktor/client/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lio/ktor/client/plugins/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/d;
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
            "Lio/ktor/client/plugins/e0;",
            "Li7/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/y$b$a;

    iget-object v1, p0, Lio/ktor/client/plugins/y$b$a;->$plugin:Lio/ktor/client/plugins/y;

    iget-object v2, p0, Lio/ktor/client/plugins/y$b$a;->$scope:Lio/ktor/client/a;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/y$b$a;-><init>(Lio/ktor/client/plugins/y;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/y$b$a;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/y$b$a;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/y$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/client/plugins/e0;

    check-cast p2, Li7/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/y$b$a;->f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
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
    iget v1, p0, Lio/ktor/client/plugins/y$b$a;->label:I

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
    .line 30
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    iget-object p1, p0, Lio/ktor/client/plugins/y$b$a;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lio/ktor/client/plugins/e0;

    .line 40
    .line 41
    iget-object v1, p0, Lio/ktor/client/plugins/y$b$a;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Li7/d;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Li7/d;->h()Lio/ktor/http/f0;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lio/ktor/http/f0;->o()Lio/ktor/http/l0;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Lio/ktor/http/m0;->b(Lio/ktor/http/l0;)Z

    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x0

    .line 57
    .line 58
    if-nez v4, :cond_c

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Li7/d;->c()Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    instance-of v4, v4, Li7/a;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_3
    sget-object v3, Lio/ktor/client/plugins/y;->Plugin:Lio/ktor/client/plugins/y$b;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Li7/d;->e(Lio/ktor/client/engine/e;)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    check-cast v4, Lio/ktor/client/plugins/y$a;

    .line 77
    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    iget-object v6, p0, Lio/ktor/client/plugins/y$b$a;->$plugin:Lio/ktor/client/plugins/y;

    .line 81
    .line 82
    .line 83
    invoke-static {v6}, Lio/ktor/client/plugins/y;->e(Lio/ktor/client/plugins/y;)Z

    .line 84
    move-result v6

    .line 85
    .line 86
    if-eqz v6, :cond_4

    .line 87
    .line 88
    new-instance v4, Lio/ktor/client/plugins/y$a;

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x7

    .line 93
    const/4 v12, 0x0

    .line 94
    move-object v7, v4

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v7 .. v12}, Lio/ktor/client/plugins/y$a;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/k;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3, v4}, Li7/d;->k(Lio/ktor/client/engine/e;Ljava/lang/Object;)V

    .line 101
    .line 102
    :cond_4
    if-eqz v4, :cond_a

    .line 103
    .line 104
    iget-object v3, p0, Lio/ktor/client/plugins/y$b$a;->$plugin:Lio/ktor/client/plugins/y;

    .line 105
    .line 106
    iget-object v6, p0, Lio/ktor/client/plugins/y$b$a;->$scope:Lio/ktor/client/a;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lio/ktor/client/plugins/y$a;->c()Ljava/lang/Long;

    .line 110
    move-result-object v7

    .line 111
    .line 112
    if-nez v7, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Lio/ktor/client/plugins/y;->a(Lio/ktor/client/plugins/y;)Ljava/lang/Long;

    .line 116
    move-result-object v7

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {v4, v7}, Lio/ktor/client/plugins/y$a;->f(Ljava/lang/Long;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Lio/ktor/client/plugins/y$a;->e()Ljava/lang/Long;

    .line 123
    move-result-object v7

    .line 124
    .line 125
    if-nez v7, :cond_6

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lio/ktor/client/plugins/y;->d(Lio/ktor/client/plugins/y;)Ljava/lang/Long;

    .line 129
    move-result-object v7

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {v4, v7}, Lio/ktor/client/plugins/y$a;->h(Ljava/lang/Long;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lio/ktor/client/plugins/y$a;->d()Ljava/lang/Long;

    .line 136
    move-result-object v7

    .line 137
    .line 138
    if-nez v7, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-static {v3}, Lio/ktor/client/plugins/y;->c(Lio/ktor/client/plugins/y;)Ljava/lang/Long;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    .line 145
    :cond_7
    invoke-virtual {v4, v7}, Lio/ktor/client/plugins/y$a;->g(Ljava/lang/Long;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lio/ktor/client/plugins/y$a;->d()Ljava/lang/Long;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    if-nez v4, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-static {v3}, Lio/ktor/client/plugins/y;->c(Lio/ktor/client/plugins/y;)Ljava/lang/Long;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    :cond_8
    if-eqz v4, :cond_a

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    const-wide v7, 0x7fffffffffffffffL

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 166
    move-result-wide v9

    .line 167
    .line 168
    cmp-long v3, v9, v7

    .line 169
    .line 170
    if-nez v3, :cond_9

    .line 171
    goto :goto_0

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-virtual {v1}, Li7/d;->f()Lkotlinx/coroutines/b2;

    .line 175
    move-result-object v3

    .line 176
    const/4 v7, 0x0

    .line 177
    const/4 v8, 0x0

    .line 178
    .line 179
    new-instance v9, Lio/ktor/client/plugins/y$b$a$b;

    .line 180
    .line 181
    .line 182
    invoke-direct {v9, v4, v1, v3, v5}, Lio/ktor/client/plugins/y$b$a$b;-><init>(Ljava/lang/Long;Li7/d;Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)V

    .line 183
    const/4 v10, 0x3

    .line 184
    const/4 v11, 0x0

    .line 185
    .line 186
    .line 187
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 188
    move-result-object v3

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Li7/d;->f()Lkotlinx/coroutines/b2;

    .line 192
    move-result-object v4

    .line 193
    .line 194
    new-instance v6, Lio/ktor/client/plugins/y$b$a$a;

    .line 195
    .line 196
    .line 197
    invoke-direct {v6, v3}, Lio/ktor/client/plugins/y$b$a$a;-><init>(Lkotlinx/coroutines/b2;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v4, v6}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 201
    .line 202
    :cond_a
    :goto_0
    iput-object v5, p0, Lio/ktor/client/plugins/y$b$a;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    iput v2, p0, Lio/ktor/client/plugins/y$b$a;->label:I

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    if-ne p1, v0, :cond_b

    .line 211
    return-object v0

    .line 212
    :cond_b
    :goto_1
    return-object p1

    .line 213
    .line 214
    :cond_c
    :goto_2
    iput-object v5, p0, Lio/ktor/client/plugins/y$b$a;->L$0:Ljava/lang/Object;

    .line 215
    .line 216
    iput v3, p0, Lio/ktor/client/plugins/y$b$a;->label:I

    .line 217
    .line 218
    .line 219
    invoke-interface {p1, v1, p0}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    if-ne p1, v0, :cond_d

    .line 223
    return-object v0

    .line 224
    :cond_d
    :goto_3
    return-object p1
.end method
