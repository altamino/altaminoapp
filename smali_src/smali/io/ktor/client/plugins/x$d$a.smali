.class final Lio/ktor/client/plugins/x$d$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/x$d;->c(Lio/ktor/client/plugins/x;Lio/ktor/client/a;)V
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
    value = "SMAP\nHttpSend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpSend.kt\nio/ktor/client/plugins/HttpSend$Plugin$install$1\n+ 2 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n16#2,4:159\n21#2,10:166\n17#3,3:163\n1855#4,2:176\n*S KotlinDebug\n*F\n+ 1 HttpSend.kt\nio/ktor/client/plugins/HttpSend$Plugin$install$1\n*L\n96#1:159,4\n96#1:166,10\n96#1:163,3\n100#1:176,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpSend$Plugin$install$1"
    f = "HttpSend.kt"
    l = {
        0x68,
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/x;

.field final synthetic $scope:Lio/ktor/client/a;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/x;Lio/ktor/client/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/x;",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/x$d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/x$d$a;->$plugin:Lio/ktor/client/plugins/x;

    iput-object p2, p0, Lio/ktor/client/plugins/x$d$a;->$scope:Lio/ktor/client/a;

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
    new-instance v0, Lio/ktor/client/plugins/x$d$a;

    iget-object v1, p0, Lio/ktor/client/plugins/x$d$a;->$plugin:Lio/ktor/client/plugins/x;

    iget-object v2, p0, Lio/ktor/client/plugins/x$d$a;->$scope:Lio/ktor/client/a;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/x$d$a;-><init>(Lio/ktor/client/plugins/x;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/x$d$a;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/x$d$a;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/x$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/x$d$a;->f(Lio/ktor/util/pipeline/e;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    iget v1, p0, Lio/ktor/client/plugins/x$d$a;->label:I

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
    goto/16 :goto_3

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
    iget-object v1, p0, Lio/ktor/client/plugins/x$d$a;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    iget-object p1, p0, Lio/ktor/client/plugins/x$d$a;->L$0:Ljava/lang/Object;

    .line 43
    move-object v1, p1

    .line 44
    .line 45
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 46
    .line 47
    iget-object p1, p0, Lio/ktor/client/plugins/x$d$a;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    instance-of v5, p1, Lk7/b;

    .line 50
    .line 51
    if-eqz v5, :cond_8

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    check-cast v5, Li7/d;

    .line 58
    .line 59
    const-class v6, Lk7/b;

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    sget-object p1, Lk7/a;->INSTANCE:Lk7/a;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, p1}, Li7/d;->i(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->k(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    .line 77
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-static {v7, v6, p1}, Lo7/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lo7/a;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, p1}, Li7/d;->j(Lo7/a;)V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_3
    instance-of v7, p1, Lk7/b;

    .line 89
    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, p1}, Li7/d;->i(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v4}, Li7/d;->j(Lo7/a;)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v5, p1}, Li7/d;->i(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->k(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    .line 111
    invoke-static {v6}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    .line 115
    invoke-static {v7, v6, p1}, Lo7/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lo7/a;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, p1}, Li7/d;->j(Lo7/a;)V

    .line 120
    .line 121
    :goto_0
    new-instance p1, Lio/ktor/client/plugins/x$b;

    .line 122
    .line 123
    iget-object v5, p0, Lio/ktor/client/plugins/x$d$a;->$plugin:Lio/ktor/client/plugins/x;

    .line 124
    .line 125
    .line 126
    invoke-static {v5}, Lio/ktor/client/plugins/x;->c(Lio/ktor/client/plugins/x;)I

    .line 127
    move-result v5

    .line 128
    .line 129
    iget-object v6, p0, Lio/ktor/client/plugins/x$d$a;->$scope:Lio/ktor/client/a;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, v5, v6}, Lio/ktor/client/plugins/x$b;-><init>(ILio/ktor/client/a;)V

    .line 133
    .line 134
    new-instance v5, Lkotlin/jvm/internal/p0;

    .line 135
    .line 136
    .line 137
    invoke-direct {v5}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 138
    .line 139
    iput-object p1, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 140
    .line 141
    iget-object p1, p0, Lio/ktor/client/plugins/x$d$a;->$plugin:Lio/ktor/client/plugins/x;

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lio/ktor/client/plugins/x;->a(Lio/ktor/client/plugins/x;)Ljava/util/List;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 149
    move-result p1

    .line 150
    const/4 v6, 0x0

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v6}, Lj8/m;->r(II)Lj8/g;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    iget-object v6, p0, Lio/ktor/client/plugins/x$d$a;->$plugin:Lio/ktor/client/plugins/x;

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v7

    .line 165
    .line 166
    if-eqz v7, :cond_5

    .line 167
    move-object v7, p1

    .line 168
    .line 169
    check-cast v7, Lkotlin/collections/m0;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Lkotlin/collections/m0;->nextInt()I

    .line 173
    move-result v7

    .line 174
    .line 175
    .line 176
    invoke-static {v6}, Lio/ktor/client/plugins/x;->a(Lio/ktor/client/plugins/x;)Ljava/util/List;

    .line 177
    move-result-object v8

    .line 178
    .line 179
    .line 180
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    check-cast v7, Le8/q;

    .line 184
    .line 185
    new-instance v8, Lio/ktor/client/plugins/x$c;

    .line 186
    .line 187
    iget-object v9, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v9, Lio/ktor/client/plugins/e0;

    .line 190
    .line 191
    .line 192
    invoke-direct {v8, v7, v9}, Lio/ktor/client/plugins/x$c;-><init>(Le8/q;Lio/ktor/client/plugins/e0;)V

    .line 193
    .line 194
    iput-object v8, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 195
    goto :goto_1

    .line 196
    .line 197
    :cond_5
    iget-object p1, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Lio/ktor/client/plugins/e0;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 203
    move-result-object v5

    .line 204
    .line 205
    check-cast v5, Li7/d;

    .line 206
    .line 207
    iput-object v1, p0, Lio/ktor/client/plugins/x$d$a;->L$0:Ljava/lang/Object;

    .line 208
    .line 209
    iput v3, p0, Lio/ktor/client/plugins/x$d$a;->label:I

    .line 210
    .line 211
    .line 212
    invoke-interface {p1, v5, p0}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    if-ne p1, v0, :cond_6

    .line 216
    return-object v0

    .line 217
    .line 218
    :cond_6
    :goto_2
    check-cast p1, Lio/ktor/client/call/b;

    .line 219
    .line 220
    iput-object v4, p0, Lio/ktor/client/plugins/x$d$a;->L$0:Ljava/lang/Object;

    .line 221
    .line 222
    iput v2, p0, Lio/ktor/client/plugins/x$d$a;->label:I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1, p0}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 226
    move-result-object p1

    .line 227
    .line 228
    if-ne p1, v0, :cond_7

    .line 229
    return-object v0

    .line 230
    .line 231
    :cond_7
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 232
    return-object p1

    .line 233
    .line 234
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    const-string v2, "\n|Fail to prepare request body for sending. \n|The body type is: "

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    move-result-object p1

    .line 247
    .line 248
    .line 249
    invoke-static {p1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string p1, ", with Content-Type: "

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    check-cast p1, Lio/ktor/http/r;

    .line 265
    .line 266
    .line 267
    invoke-static {p1}, Lio/ktor/http/s;->d(Lio/ktor/http/r;)Lio/ktor/http/c;

    .line 268
    move-result-object p1

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string p1, ".\n|\n|If you expect serialized body, please check that you have installed the corresponding plugin(like `ContentNegotiation`) and set `Content-Type` header."

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v4, v3, v4}, Lkotlin/text/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    move-result-object p1

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 294
    throw v0
.end method
