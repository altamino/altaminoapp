.class final Lio/ktor/client/engine/b$a$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/b$a;->h(Lio/ktor/client/engine/b;Lio/ktor/client/a;)V
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
    value = "SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$install$1\n+ 2 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,163:1\n16#2,4:164\n21#2,10:171\n17#3,3:168\n*S KotlinDebug\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$install$1\n*L\n58#1:164,4\n58#1:171,10\n58#1:168,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.engine.HttpClientEngine$install$1"
    f = "HttpClientEngine.kt"
    l = {
        0x46,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $client:Lio/ktor/client/a;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/client/engine/b;


# direct methods
.method constructor <init>(Lio/ktor/client/a;Lio/ktor/client/engine/b;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/a;",
            "Lio/ktor/client/engine/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/engine/b$a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    iput-object p2, p0, Lio/ktor/client/engine/b$a$c;->this$0:Lio/ktor/client/engine/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
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
    new-instance v0, Lio/ktor/client/engine/b$a$c;

    iget-object v1, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    iget-object v2, p0, Lio/ktor/client/engine/b$a$c;->this$0:Lio/ktor/client/engine/b;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/engine/b$a$c;-><init>(Lio/ktor/client/a;Lio/ktor/client/engine/b;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/engine/b$a$c;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/engine/b$a$c;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/engine/b$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/engine/b$a$c;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Lio/ktor/client/engine/b$a$c;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lio/ktor/client/engine/b$a$c;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Li7/e;

    .line 33
    .line 34
    iget-object v3, p0, Lio/ktor/client/engine/b$a$c;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lio/ktor/util/pipeline/e;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    iget-object p1, p0, Lio/ktor/client/engine/b$a$c;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lio/ktor/util/pipeline/e;

    .line 49
    .line 50
    iget-object v1, p0, Lio/ktor/client/engine/b$a$c;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    new-instance v5, Li7/d;

    .line 53
    .line 54
    .line 55
    invoke-direct {v5}, Li7/d;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    check-cast v6, Li7/d;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v6}, Li7/d;->o(Li7/d;)Li7/d;

    .line 65
    .line 66
    const-class v6, Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    sget-object v1, Lk7/a;->INSTANCE:Lk7/a;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Li7/d;->i(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->k(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-static {v7, v6, v1}, Lo7/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lo7/a;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1}, Li7/d;->j(Lo7/a;)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_3
    instance-of v7, v1, Lk7/b;

    .line 96
    .line 97
    if-eqz v7, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Li7/d;->i(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v4}, Li7/d;->j(Lo7/a;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {v5, v1}, Li7/d;->i(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->k(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 119
    move-result-object v6

    .line 120
    .line 121
    .line 122
    invoke-static {v7, v6, v1}, Lo7/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lo7/a;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v1}, Li7/d;->j(Lo7/a;)V

    .line 127
    .line 128
    :goto_0
    iget-object v1, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lio/ktor/client/a;->l()Lj7/b;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lio/ktor/client/utils/b;->b()Lj7/a;

    .line 136
    move-result-object v6

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v6, v5}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Li7/d;->a()Li7/e;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    iget-object v5, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Li7/e;->a()Lio/ktor/util/b;

    .line 149
    move-result-object v6

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lio/ktor/client/engine/i;->c()Lio/ktor/util/a;

    .line 153
    move-result-object v7

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lio/ktor/client/a;->h()Lio/ktor/client/b;

    .line 157
    move-result-object v5

    .line 158
    .line 159
    .line 160
    invoke-interface {v6, v7, v5}, Lio/ktor/util/b;->a(Lio/ktor/util/a;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Lio/ktor/client/engine/i;->a(Li7/e;)V

    .line 164
    .line 165
    iget-object v5, p0, Lio/ktor/client/engine/b$a$c;->this$0:Lio/ktor/client/engine/b;

    .line 166
    .line 167
    .line 168
    invoke-static {v5, v1}, Lio/ktor/client/engine/b$a;->a(Lio/ktor/client/engine/b;Li7/e;)V

    .line 169
    .line 170
    iget-object v5, p0, Lio/ktor/client/engine/b$a$c;->this$0:Lio/ktor/client/engine/b;

    .line 171
    .line 172
    iput-object p1, p0, Lio/ktor/client/engine/b$a$c;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v1, p0, Lio/ktor/client/engine/b$a$c;->L$1:Ljava/lang/Object;

    .line 175
    .line 176
    iput v3, p0, Lio/ktor/client/engine/b$a$c;->label:I

    .line 177
    .line 178
    .line 179
    invoke-static {v5, v1, p0}, Lio/ktor/client/engine/b$a;->b(Lio/ktor/client/engine/b;Li7/e;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    if-ne v3, v0, :cond_5

    .line 183
    return-object v0

    .line 184
    :cond_5
    move-object v8, v3

    .line 185
    move-object v3, p1

    .line 186
    move-object p1, v8

    .line 187
    .line 188
    :goto_1
    check-cast p1, Li7/h;

    .line 189
    .line 190
    new-instance v5, Lio/ktor/client/call/b;

    .line 191
    .line 192
    iget-object v6, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    .line 193
    .line 194
    .line 195
    invoke-direct {v5, v6, v1, p1}, Lio/ktor/client/call/b;-><init>(Lio/ktor/client/a;Li7/e;Li7/h;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    iget-object v1, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Lio/ktor/client/a;->l()Lj7/b;

    .line 205
    move-result-object v1

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lio/ktor/client/utils/b;->e()Lj7/a;

    .line 209
    move-result-object v6

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v6, p1}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    .line 219
    invoke-static {v1}, Lkotlinx/coroutines/f2;->l(Lkotlin/coroutines/g;)Lkotlinx/coroutines/b2;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    new-instance v6, Lio/ktor/client/engine/b$a$c$a;

    .line 223
    .line 224
    iget-object v7, p0, Lio/ktor/client/engine/b$a$c;->$client:Lio/ktor/client/a;

    .line 225
    .line 226
    .line 227
    invoke-direct {v6, v7, p1}, Lio/ktor/client/engine/b$a$c$a;-><init>(Lio/ktor/client/a;Lio/ktor/client/statement/c;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v6}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 231
    .line 232
    iput-object v4, p0, Lio/ktor/client/engine/b$a$c;->L$0:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v4, p0, Lio/ktor/client/engine/b$a$c;->L$1:Ljava/lang/Object;

    .line 235
    .line 236
    iput v2, p0, Lio/ktor/client/engine/b$a$c;->label:I

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v5, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    if-ne p1, v0, :cond_6

    .line 243
    return-object v0

    .line 244
    .line 245
    :cond_6
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 246
    return-object p1
.end method
