.class final Lio/ktor/client/plugins/g$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/g;->b(Lio/ktor/client/a;)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$1"
    f = "DefaultTransform.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/g$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
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
    new-instance v0, Lio/ktor/client/plugins/g$a;

    invoke-direct {v0, p3}, Lio/ktor/client/plugins/g$a;-><init>(Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/g$a;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/g$a;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/g$a;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v1, p0, Lio/ktor/client/plugins/g$a;->label:I

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
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    iget-object p1, p0, Lio/ktor/client/plugins/g$a;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 32
    .line 33
    iget-object v1, p0, Lio/ktor/client/plugins/g$a;->L$1:Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    check-cast v3, Li7/d;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    sget-object v4, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lio/ktor/http/o;->c()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5}, Lio/ktor/util/v;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Li7/d;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lio/ktor/http/o;->c()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    const-string v6, "*/*"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5, v6}, Lio/ktor/util/v;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    check-cast v3, Lio/ktor/http/r;

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lio/ktor/http/s;->d(Lio/ktor/http/r;)Lio/ktor/http/c;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    instance-of v5, v1, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    new-instance v5, Lk7/c;

    .line 91
    move-object v7, v1

    .line 92
    .line 93
    check-cast v7, Ljava/lang/String;

    .line 94
    .line 95
    if-nez v3, :cond_3

    .line 96
    .line 97
    sget-object v3, Lio/ktor/http/c$c;->INSTANCE:Lio/ktor/http/c$c;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lio/ktor/http/c$c;->a()Lio/ktor/http/c;

    .line 101
    move-result-object v3

    .line 102
    :cond_3
    move-object v8, v3

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x4

    .line 105
    const/4 v11, 0x0

    .line 106
    move-object v6, v5

    .line 107
    .line 108
    .line 109
    invoke-direct/range {v6 .. v11}, Lk7/c;-><init>(Ljava/lang/String;Lio/ktor/http/c;Lio/ktor/http/v;ILkotlin/jvm/internal/k;)V

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_4
    instance-of v5, v1, [B

    .line 113
    .line 114
    if-eqz v5, :cond_5

    .line 115
    .line 116
    new-instance v5, Lio/ktor/client/plugins/g$a$a;

    .line 117
    .line 118
    .line 119
    invoke-direct {v5, v3, v1}, Lio/ktor/client/plugins/g$a$a;-><init>(Lio/ktor/http/c;Ljava/lang/Object;)V

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_5
    instance-of v5, v1, Lio/ktor/utils/io/g;

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    new-instance v5, Lio/ktor/client/plugins/g$a$b;

    .line 127
    .line 128
    .line 129
    invoke-direct {v5, p1, v3, v1}, Lio/ktor/client/plugins/g$a$b;-><init>(Lio/ktor/util/pipeline/e;Lio/ktor/http/c;Ljava/lang/Object;)V

    .line 130
    goto :goto_0

    .line 131
    .line 132
    :cond_6
    instance-of v5, v1, Lk7/b;

    .line 133
    .line 134
    if-eqz v5, :cond_7

    .line 135
    move-object v5, v1

    .line 136
    .line 137
    check-cast v5, Lk7/b;

    .line 138
    goto :goto_0

    .line 139
    .line 140
    .line 141
    :cond_7
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    check-cast v5, Li7/d;

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v5, v1}, Lio/ktor/client/plugins/h;->a(Lio/ktor/http/c;Li7/d;Ljava/lang/Object;)Lk7/b;

    .line 148
    move-result-object v5

    .line 149
    :goto_0
    const/4 v3, 0x0

    .line 150
    .line 151
    if-eqz v5, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Lk7/b;->b()Lio/ktor/http/c;

    .line 155
    move-result-object v6

    .line 156
    goto :goto_1

    .line 157
    :cond_8
    move-object v6, v3

    .line 158
    .line 159
    :goto_1
    if-eqz v6, :cond_9

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 163
    move-result-object v6

    .line 164
    .line 165
    check-cast v6, Li7/d;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 169
    move-result-object v6

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 173
    move-result-object v4

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v4}, Lio/ktor/util/v;->j(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lio/ktor/client/plugins/g;->a()Lorg/slf4j/a;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    const-string v7, "Transformed with default transformers request body for "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 194
    move-result-object v7

    .line 195
    .line 196
    check-cast v7, Li7/d;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Li7/d;->h()Lio/ktor/http/f0;

    .line 200
    move-result-object v7

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v7, " from "

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    .line 226
    invoke-interface {v4, v1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 227
    .line 228
    iput-object v3, p0, Lio/ktor/client/plugins/g$a;->L$0:Ljava/lang/Object;

    .line 229
    .line 230
    iput v2, p0, Lio/ktor/client/plugins/g$a;->label:I

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v5, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    if-ne p1, v0, :cond_9

    .line 237
    return-object v0

    .line 238
    .line 239
    :cond_9
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 240
    return-object p1
.end method
