.class final Lcom/google/firebase/sessions/settings/c$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/c;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lorg/json/JSONObject;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,164:1\n1#2:165\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1"
    f = "RemoteSettings.kt"
    l = {
        0x7d,
        0x80,
        0x83,
        0x85,
        0x86,
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/settings/c;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/settings/c;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/google/firebase/sessions/settings/c$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
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

    new-instance v0, Lcom/google/firebase/sessions/settings/c$c;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/sessions/settings/c$c;-><init>(Lcom/google/firebase/sessions/settings/c;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lorg/json/JSONObject;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
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
            "Lorg/json/JSONObject;",
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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/c$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/settings/c$c;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/settings/c$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/c$c;->f(Lorg/json/JSONObject;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    const-string v0, "cache_duration"

    .line 3
    .line 4
    const-string v1, "session_timeout_seconds"

    .line 5
    .line 6
    const-string v2, "sampling_rate"

    .line 7
    .line 8
    const-string v3, "sessions_enabled"

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    iget v5, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 15
    const/4 v6, 0x0

    .line 16
    .line 17
    .line 18
    packed-switch v5, :pswitch_data_0

    .line 19
    .line 20
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
    .line 29
    :pswitch_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    goto/16 :goto_b

    .line 32
    .line 33
    .line 34
    :pswitch_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    goto/16 :goto_a

    .line 37
    .line 38
    .line 39
    :pswitch_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/p0;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lkotlin/jvm/internal/p0;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lkotlin/jvm/internal/p0;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :pswitch_5
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lkotlin/jvm/internal/p0;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lkotlin/jvm/internal/p0;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    .line 83
    :pswitch_6
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lorg/json/JSONObject;

    .line 88
    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v7, "Fetched settings: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    const-string v7, "SessionConfigFetcher"

    .line 107
    .line 108
    .line 109
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    new-instance v5, Lkotlin/jvm/internal/p0;

    .line 112
    .line 113
    .line 114
    invoke-direct {v5}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 115
    .line 116
    new-instance v8, Lkotlin/jvm/internal/p0;

    .line 117
    .line 118
    .line 119
    invoke-direct {v8}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 120
    .line 121
    new-instance v9, Lkotlin/jvm/internal/p0;

    .line 122
    .line 123
    .line 124
    invoke-direct {v9}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 125
    .line 126
    const-string v10, "app_quality"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 130
    move-result v11

    .line 131
    .line 132
    if-eqz v11, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    const-string v10, "null cannot be cast to non-null type org.json.JSONObject"

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v10}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    check-cast p1, Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 147
    move-result v10

    .line 148
    .line 149
    if-eqz v10, :cond_0

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    move-object v3, v6

    .line 159
    goto :goto_2

    .line 160
    :cond_0
    move-object v3, v6

    .line 161
    .line 162
    .line 163
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 164
    move-result v10

    .line 165
    .line 166
    if-eqz v10, :cond_1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    check-cast v2, Ljava/lang/Double;

    .line 173
    .line 174
    iput-object v2, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 175
    goto :goto_1

    .line 176
    :catch_1
    move-exception p1

    .line 177
    goto :goto_2

    .line 178
    .line 179
    .line 180
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 181
    move-result v2

    .line 182
    .line 183
    if-eqz v2, :cond_2

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    check-cast v1, Ljava/lang/Integer;

    .line 190
    .line 191
    iput-object v1, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 195
    move-result v1

    .line 196
    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    check-cast p1, Ljava/lang/Integer;

    .line 204
    .line 205
    iput-object p1, v9, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    goto :goto_3

    .line 207
    .line 208
    :goto_2
    const-string v0, "Error parsing the configs remotely fetched: "

    .line 209
    .line 210
    .line 211
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    goto :goto_3

    .line 213
    :cond_3
    move-object v3, v6

    .line 214
    .line 215
    :cond_4
    :goto_3
    if-eqz v3, :cond_6

    .line 216
    .line 217
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/c;->e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    iput-object v5, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v8, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v9, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    .line 232
    .line 233
    iput v0, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v3, p0}, Lcom/google/firebase/sessions/settings/g;->n(Ljava/lang/Boolean;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    if-ne p1, v4, :cond_5

    .line 240
    return-object v4

    .line 241
    :cond_5
    move-object v2, v5

    .line 242
    move-object v1, v8

    .line 243
    move-object v0, v9

    .line 244
    :goto_4
    move-object v8, v1

    .line 245
    move-object v1, v2

    .line 246
    goto :goto_5

    .line 247
    :cond_6
    move-object v1, v5

    .line 248
    move-object v0, v9

    .line 249
    .line 250
    :goto_5
    iget-object p1, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p1, Ljava/lang/Integer;

    .line 253
    .line 254
    if-eqz p1, :cond_7

    .line 255
    .line 256
    iget-object v2, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Lcom/google/firebase/sessions/settings/c;->e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    iget-object v2, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v2, Ljava/lang/Integer;

    .line 268
    .line 269
    iput-object v1, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v0, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 274
    const/4 v3, 0x2

    .line 275
    .line 276
    iput v3, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v2, p0}, Lcom/google/firebase/sessions/settings/g;->m(Ljava/lang/Integer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    if-ne p1, v4, :cond_7

    .line 283
    return-object v4

    .line 284
    .line 285
    :cond_7
    :goto_6
    iget-object p1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p1, Ljava/lang/Double;

    .line 288
    .line 289
    if-eqz p1, :cond_8

    .line 290
    .line 291
    iget-object v2, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 295
    .line 296
    .line 297
    invoke-static {v2}, Lcom/google/firebase/sessions/settings/c;->e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;

    .line 298
    move-result-object p1

    .line 299
    .line 300
    iget-object v1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v1, Ljava/lang/Double;

    .line 303
    .line 304
    iput-object v0, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 305
    .line 306
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 307
    .line 308
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 309
    const/4 v2, 0x3

    .line 310
    .line 311
    iput v2, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v1, p0}, Lcom/google/firebase/sessions/settings/g;->i(Ljava/lang/Double;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 315
    move-result-object p1

    .line 316
    .line 317
    if-ne p1, v4, :cond_8

    .line 318
    return-object v4

    .line 319
    .line 320
    :cond_8
    :goto_7
    iget-object p1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast p1, Ljava/lang/Integer;

    .line 323
    .line 324
    if-eqz p1, :cond_a

    .line 325
    .line 326
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 330
    .line 331
    .line 332
    invoke-static {v1}, Lcom/google/firebase/sessions/settings/c;->e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;

    .line 333
    move-result-object p1

    .line 334
    .line 335
    iget-object v0, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v0, Ljava/lang/Integer;

    .line 338
    .line 339
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 340
    .line 341
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 342
    .line 343
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 344
    const/4 v1, 0x4

    .line 345
    .line 346
    iput v1, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/sessions/settings/g;->j(Ljava/lang/Integer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 350
    move-result-object p1

    .line 351
    .line 352
    if-ne p1, v4, :cond_9

    .line 353
    return-object v4

    .line 354
    .line 355
    :cond_9
    :goto_8
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 356
    goto :goto_9

    .line 357
    :cond_a
    move-object p1, v6

    .line 358
    .line 359
    :goto_9
    if-nez p1, :cond_b

    .line 360
    .line 361
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    .line 362
    .line 363
    .line 364
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/c;->e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;

    .line 365
    move-result-object p1

    .line 366
    .line 367
    .line 368
    const v0, 0x15180

    .line 369
    .line 370
    .line 371
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 372
    move-result-object v0

    .line 373
    .line 374
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 379
    const/4 v1, 0x5

    .line 380
    .line 381
    iput v1, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/sessions/settings/g;->j(Ljava/lang/Integer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 385
    move-result-object p1

    .line 386
    .line 387
    if-ne p1, v4, :cond_b

    .line 388
    return-object v4

    .line 389
    .line 390
    :cond_b
    :goto_a
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/c$c;->this$0:Lcom/google/firebase/sessions/settings/c;

    .line 391
    .line 392
    .line 393
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/c;->e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;

    .line 394
    move-result-object p1

    .line 395
    .line 396
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 398
    move-result-wide v0

    .line 399
    .line 400
    .line 401
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 402
    move-result-object v0

    .line 403
    .line 404
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$0:Ljava/lang/Object;

    .line 405
    .line 406
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$1:Ljava/lang/Object;

    .line 407
    .line 408
    iput-object v6, p0, Lcom/google/firebase/sessions/settings/c$c;->L$2:Ljava/lang/Object;

    .line 409
    const/4 v1, 0x6

    .line 410
    .line 411
    iput v1, p0, Lcom/google/firebase/sessions/settings/c$c;->label:I

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/sessions/settings/g;->k(Ljava/lang/Long;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 415
    move-result-object p1

    .line 416
    .line 417
    if-ne p1, v4, :cond_c

    .line 418
    return-object v4

    .line 419
    .line 420
    :cond_c
    :goto_b
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 421
    return-object p1

    .line 422
    nop

    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
