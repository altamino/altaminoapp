.class final Lio/ktor/client/plugins/d$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/d$b;->e(Lio/ktor/client/plugins/d;Lio/ktor/client/a;)V
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
    value = "SMAP\nDefaultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin$install$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1855#2,2:213\n*S KotlinDebug\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin$install$1\n*L\n77#1:213,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.DefaultRequest$Plugin$install$1"
    f = "DefaultRequest.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/d;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/d;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/d$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/d$b$a;->$plugin:Lio/ktor/client/plugins/d;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

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
    new-instance p2, Lio/ktor/client/plugins/d$b$a;

    iget-object v0, p0, Lio/ktor/client/plugins/d$b$a;->$plugin:Lio/ktor/client/plugins/d;

    invoke-direct {p2, v0, p3}, Lio/ktor/client/plugins/d$b$a;-><init>(Lio/ktor/client/plugins/d;Lkotlin/coroutines/d;)V

    iput-object p1, p2, Lio/ktor/client/plugins/d$b$a;->L$0:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p2, p1}, Lio/ktor/client/plugins/d$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/d$b$a;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    .line 5
    iget v0, p0, Lio/ktor/client/plugins/d$b$a;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Lio/ktor/client/plugins/d$b$a;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Li7/d;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Li7/d;->h()Lio/ktor/http/f0;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lio/ktor/http/f0;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Lio/ktor/client/plugins/d$a;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lio/ktor/client/plugins/d$a;-><init>()V

    .line 34
    .line 35
    iget-object v2, p0, Lio/ktor/client/plugins/d$b$a;->$plugin:Lio/ktor/client/plugins/d;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lio/ktor/client/plugins/d$a;->getHeaders()Lio/ktor/http/l;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Li7/d;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Lio/ktor/util/x;->c(Lio/ktor/util/u;Lio/ktor/util/u;)Lio/ktor/util/u;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lio/ktor/client/plugins/d;->a(Lio/ktor/client/plugins/d;)Le8/l;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-interface {v2, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lio/ktor/client/plugins/d$a;->b()Lio/ktor/http/f0;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lio/ktor/http/f0;->b()Lio/ktor/http/p0;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    sget-object v3, Lio/ktor/client/plugins/d;->Plugin:Lio/ktor/client/plugins/d$b;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    check-cast v4, Li7/d;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Li7/d;->h()Lio/ktor/http/f0;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v2, v4}, Lio/ktor/client/plugins/d$b;->c(Lio/ktor/client/plugins/d$b;Lio/ktor/http/p0;Lio/ktor/http/f0;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lio/ktor/client/plugins/d$a;->a()Lio/ktor/util/b;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-interface {v2}, Lio/ktor/util/b;->b()Ljava/util/List;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    check-cast v2, Ljava/lang/Iterable;

    .line 93
    .line 94
    .line 95
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v3

    .line 101
    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    check-cast v3, Lio/ktor/util/a;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    check-cast v4, Li7/d;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Li7/d;->b()Lio/ktor/util/b;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    .line 121
    invoke-interface {v4, v3}, Lio/ktor/util/b;->d(Lio/ktor/util/a;)Z

    .line 122
    move-result v4

    .line 123
    .line 124
    if-nez v4, :cond_0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    check-cast v4, Li7/d;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Li7/d;->b()Lio/ktor/util/b;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    const-string v5, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lio/ktor/client/plugins/d$a;->a()Lio/ktor/util/b;

    .line 143
    move-result-object v5

    .line 144
    .line 145
    .line 146
    invoke-interface {v5, v3}, Lio/ktor/util/b;->f(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 147
    move-result-object v5

    .line 148
    .line 149
    .line 150
    invoke-interface {v4, v3, v5}, Lio/ktor/util/b;->a(Lio/ktor/util/a;Ljava/lang/Object;)V

    .line 151
    goto :goto_0

    .line 152
    .line 153
    .line 154
    :cond_1
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    check-cast v2, Li7/d;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Lio/ktor/util/v;->clear()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    check-cast v2, Li7/d;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lio/ktor/client/plugins/d$a;->getHeaders()Lio/ktor/http/l;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lio/ktor/http/l;->n()Lio/ktor/http/k;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v1}, Lio/ktor/util/v;->e(Lio/ktor/util/t;)V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lio/ktor/client/plugins/e;->a()Lorg/slf4j/a;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    const-string v3, "Applied DefaultRequest to "

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v0, ". New url: "

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    check-cast p1, Li7/d;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Li7/d;->h()Lio/ktor/http/f0;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, p1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 228
    .line 229
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 230
    return-object p1

    .line 231
    .line 232
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 235
    .line 236
    .line 237
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    throw p1
.end method
