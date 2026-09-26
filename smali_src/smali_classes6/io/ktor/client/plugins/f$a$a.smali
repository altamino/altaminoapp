.class final Lio/ktor/client/plugins/f$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/f$a;->a(Lio/ktor/client/plugins/k$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lio/ktor/client/statement/c;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.DefaultResponseValidationKt$addDefaultResponseValidation$1$1"
    f = "DefaultResponseValidation.kt"
    l = {
        0x2a,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/f$a$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
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

    new-instance v0, Lio/ktor/client/plugins/f$a$a;

    invoke-direct {v0, p2}, Lio/ktor/client/plugins/f$a$a;-><init>(Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/f$a$a;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/client/statement/c;
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
            "Lio/ktor/client/statement/c;",
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/f$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/ktor/client/plugins/f$a$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lio/ktor/client/plugins/f$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/client/statement/c;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/f$a$a;->f(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v1, p0, Lio/ktor/client/plugins/f$a$a;->label:I

    .line 7
    .line 8
    const/16 v2, 0x12c

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v4, :cond_1

    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lio/ktor/client/plugins/f$a$a;->I$0:I

    .line 19
    .line 20
    iget-object v1, p0, Lio/ktor/client/plugins/f$a$a;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lio/ktor/client/statement/c;

    .line 23
    .line 24
    iget-object v3, p0, Lio/ktor/client/plugins/f$a$a;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lio/ktor/client/statement/c;

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq7/c; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    .line 41
    :cond_1
    iget v1, p0, Lio/ktor/client/plugins/f$a$a;->I$0:I

    .line 42
    .line 43
    iget-object v5, p0, Lio/ktor/client/plugins/f$a$a;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Lio/ktor/client/statement/c;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    iget-object p1, p0, Lio/ktor/client/plugins/f$a$a;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lio/ktor/client/statement/c;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lio/ktor/client/call/b;->L()Lio/ktor/util/b;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lio/ktor/client/plugins/l;->e()Lio/ktor/util/a;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v5}, Lio/ktor/util/b;->f(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lio/ktor/client/plugins/f;->a()Lorg/slf4j/a;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v2, "Skipping default response validation for "

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, p1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 120
    return-object p1

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lio/ktor/http/v;->f0()I

    .line 128
    move-result v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    if-lt v1, v2, :cond_c

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Lio/ktor/client/call/b;->L()Lio/ktor/util/b;

    .line 138
    move-result-object v6

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lio/ktor/client/plugins/f;->b()Lio/ktor/util/a;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    .line 145
    invoke-interface {v6, v7}, Lio/ktor/util/b;->d(Lio/ktor/util/a;)Z

    .line 146
    move-result v6

    .line 147
    .line 148
    if-eqz v6, :cond_4

    .line 149
    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :cond_4
    iput-object p1, p0, Lio/ktor/client/plugins/f$a$a;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput v1, p0, Lio/ktor/client/plugins/f$a$a;->I$0:I

    .line 155
    .line 156
    iput v4, p0, Lio/ktor/client/plugins/f$a$a;->label:I

    .line 157
    .line 158
    .line 159
    invoke-static {v5, p0}, Lio/ktor/client/call/d;->a(Lio/ktor/client/call/b;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    if-ne v5, v0, :cond_5

    .line 163
    return-object v0

    .line 164
    :cond_5
    move-object v9, v5

    .line 165
    move-object v5, p1

    .line 166
    move-object p1, v9

    .line 167
    .line 168
    :goto_0
    check-cast p1, Lio/ktor/client/call/b;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lio/ktor/client/call/b;->L()Lio/ktor/util/b;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lio/ktor/client/plugins/f;->b()Lio/ktor/util/a;

    .line 176
    move-result-object v7

    .line 177
    .line 178
    sget-object v8, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 179
    .line 180
    .line 181
    invoke-interface {v6, v7, v8}, Lio/ktor/util/b;->a(Lio/ktor/util/a;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    :try_start_1
    iput-object v5, p0, Lio/ktor/client/plugins/f$a$a;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object p1, p0, Lio/ktor/client/plugins/f$a$a;->L$1:Ljava/lang/Object;

    .line 190
    .line 191
    iput v1, p0, Lio/ktor/client/plugins/f$a$a;->I$0:I

    .line 192
    .line 193
    iput v3, p0, Lio/ktor/client/plugins/f$a$a;->label:I

    .line 194
    const/4 v3, 0x0

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v3, p0, v4, v3}, Lio/ktor/client/statement/e;->c(Lio/ktor/client/statement/c;Ljava/nio/charset/Charset;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-result-object v3
    :try_end_1
    .catch Lq7/c; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .line 200
    if-ne v3, v0, :cond_6

    .line 201
    return-object v0

    .line 202
    :cond_6
    move v0, v1

    .line 203
    move-object v1, p1

    .line 204
    move-object p1, v3

    .line 205
    move-object v3, v5

    .line 206
    .line 207
    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Lq7/c; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    goto :goto_2

    .line 209
    :catch_0
    move v0, v1

    .line 210
    move-object v3, v5

    .line 211
    move-object v1, p1

    .line 212
    .line 213
    :catch_1
    const-string p1, "<body failed decoding>"

    .line 214
    .line 215
    :goto_2
    const/16 v4, 0x190

    .line 216
    .line 217
    if-gt v2, v0, :cond_8

    .line 218
    .line 219
    if-lt v0, v4, :cond_7

    .line 220
    goto :goto_3

    .line 221
    .line 222
    :cond_7
    new-instance v0, Lio/ktor/client/plugins/a0;

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v1, p1}, Lio/ktor/client/plugins/a0;-><init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V

    .line 226
    goto :goto_5

    .line 227
    .line 228
    :cond_8
    :goto_3
    const/16 v2, 0x1f4

    .line 229
    .line 230
    if-gt v4, v0, :cond_a

    .line 231
    .line 232
    if-lt v0, v2, :cond_9

    .line 233
    goto :goto_4

    .line 234
    .line 235
    :cond_9
    new-instance v0, Lio/ktor/client/plugins/c;

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1, p1}, Lio/ktor/client/plugins/c;-><init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V

    .line 239
    goto :goto_5

    .line 240
    .line 241
    :cond_a
    :goto_4
    if-gt v2, v0, :cond_b

    .line 242
    .line 243
    const/16 v2, 0x258

    .line 244
    .line 245
    if-ge v0, v2, :cond_b

    .line 246
    .line 247
    new-instance v0, Lio/ktor/client/plugins/f0;

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v1, p1}, Lio/ktor/client/plugins/f0;-><init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V

    .line 251
    goto :goto_5

    .line 252
    .line 253
    :cond_b
    new-instance v0, Lio/ktor/client/plugins/c0;

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v1, p1}, Lio/ktor/client/plugins/c0;-><init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_5
    invoke-static {}, Lio/ktor/client/plugins/f;->a()Lorg/slf4j/a;

    .line 260
    move-result-object p1

    .line 261
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    const-string v2, "Default response validation for "

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 274
    move-result-object v2

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 278
    move-result-object v2

    .line 279
    .line 280
    .line 281
    invoke-interface {v2}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 282
    move-result-object v2

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, " failed with "

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    .line 300
    invoke-interface {p1, v1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 301
    throw v0

    .line 302
    .line 303
    :cond_c
    :goto_6
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 304
    return-object p1
.end method
