.class final Lcom/google/firebase/sessions/c0$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/c0;->a(Lcom/google/firebase/sessions/y;)V
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
    c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1"
    f = "SessionFirelogPublisher.kt"
    l = {
        0x40,
        0x48,
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sessionDetails:Lcom/google/firebase/sessions/y;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/c0;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/c0;Lcom/google/firebase/sessions/y;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/c0;",
            "Lcom/google/firebase/sessions/y;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/google/firebase/sessions/c0$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    iput-object p2, p0, Lcom/google/firebase/sessions/c0$c;->$sessionDetails:Lcom/google/firebase/sessions/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/google/firebase/sessions/c0$c;

    iget-object v0, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    iget-object v1, p0, Lcom/google/firebase/sessions/c0$c;->$sessionDetails:Lcom/google/firebase/sessions/y;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/c0$c;-><init>(Lcom/google/firebase/sessions/c0;Lcom/google/firebase/sessions/y;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c0$c;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c0$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/c0$c;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/c0$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
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
    iget v1, p0, Lcom/google/firebase/sessions/c0$c;->label:I

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/firebase/sessions/c0$c;->L$7:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Map;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/firebase/sessions/c0$c;->L$6:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/util/List;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/firebase/sessions/c0$c;->L$5:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lcom/google/firebase/sessions/t;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/firebase/sessions/c0$c;->L$4:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lcom/google/firebase/sessions/settings/f;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/firebase/sessions/c0$c;->L$3:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Lcom/google/firebase/sessions/y;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/google/firebase/sessions/c0$c;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v5, Lcom/google/firebase/f;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/google/firebase/sessions/c0$c;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v6, Lcom/google/firebase/sessions/a0;

    .line 46
    .line 47
    iget-object v7, p0, Lcom/google/firebase/sessions/c0$c;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v7, Lcom/google/firebase/sessions/c0;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    move-object v8, v7

    .line 54
    move-object v11, v6

    .line 55
    move-object v6, v0

    .line 56
    move-object v0, v11

    .line 57
    move-object v12, v5

    .line 58
    move-object v5, v1

    .line 59
    move-object v1, v12

    .line 60
    move-object v13, v4

    .line 61
    move-object v4, v2

    .line 62
    move-object v2, v13

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/sessions/c0$c;->L$6:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Ljava/util/List;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/google/firebase/sessions/c0$c;->L$5:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Lcom/google/firebase/sessions/t;

    .line 81
    .line 82
    iget-object v4, p0, Lcom/google/firebase/sessions/c0$c;->L$4:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Lcom/google/firebase/sessions/settings/f;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/google/firebase/sessions/c0$c;->L$3:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v5, Lcom/google/firebase/sessions/y;

    .line 89
    .line 90
    iget-object v6, p0, Lcom/google/firebase/sessions/c0$c;->L$2:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v6, Lcom/google/firebase/f;

    .line 93
    .line 94
    iget-object v7, p0, Lcom/google/firebase/sessions/c0$c;->L$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Lcom/google/firebase/sessions/a0;

    .line 97
    .line 98
    iget-object v8, p0, Lcom/google/firebase/sessions/c0$c;->L$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v8, Lcom/google/firebase/sessions/c0;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    .line 115
    .line 116
    iput v4, p0, Lcom/google/firebase/sessions/c0$c;->label:I

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p0}, Lcom/google/firebase/sessions/c0;->f(Lcom/google/firebase/sessions/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    if-ne p1, v0, :cond_4

    .line 123
    return-object v0

    .line 124
    .line 125
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    move-result p1

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    iget-object p1, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    .line 134
    .line 135
    sget-object v1, Lcom/google/firebase/sessions/a0;->INSTANCE:Lcom/google/firebase/sessions/a0;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/google/firebase/sessions/c0;->c(Lcom/google/firebase/sessions/c0;)Lcom/google/firebase/f;

    .line 139
    move-result-object v4

    .line 140
    .line 141
    iget-object v5, p0, Lcom/google/firebase/sessions/c0$c;->$sessionDetails:Lcom/google/firebase/sessions/y;

    .line 142
    .line 143
    iget-object v6, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    .line 144
    .line 145
    .line 146
    invoke-static {v6}, Lcom/google/firebase/sessions/c0;->e(Lcom/google/firebase/sessions/c0;)Lcom/google/firebase/sessions/settings/f;

    .line 147
    move-result-object v6

    .line 148
    .line 149
    sget-object v7, Lcom/google/firebase/sessions/u;->INSTANCE:Lcom/google/firebase/sessions/u;

    .line 150
    .line 151
    iget-object v8, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    .line 152
    .line 153
    .line 154
    invoke-static {v8}, Lcom/google/firebase/sessions/c0;->c(Lcom/google/firebase/sessions/c0;)Lcom/google/firebase/f;

    .line 155
    move-result-object v8

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 159
    move-result-object v8

    .line 160
    .line 161
    const-string v9, "firebaseApp.applicationContext"

    .line 162
    .line 163
    .line 164
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v8}, Lcom/google/firebase/sessions/u;->d(Landroid/content/Context;)Lcom/google/firebase/sessions/t;

    .line 168
    move-result-object v8

    .line 169
    .line 170
    iget-object v10, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    .line 171
    .line 172
    .line 173
    invoke-static {v10}, Lcom/google/firebase/sessions/c0;->c(Lcom/google/firebase/sessions/c0;)Lcom/google/firebase/f;

    .line 174
    move-result-object v10

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 178
    move-result-object v10

    .line 179
    .line 180
    .line 181
    invoke-static {v10, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v10}, Lcom/google/firebase/sessions/u;->c(Landroid/content/Context;)Ljava/util/List;

    .line 185
    move-result-object v7

    .line 186
    .line 187
    sget-object v9, Lcom/google/firebase/sessions/api/a;->INSTANCE:Lcom/google/firebase/sessions/api/a;

    .line 188
    .line 189
    iput-object p1, p0, Lcom/google/firebase/sessions/c0$c;->L$0:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v1, p0, Lcom/google/firebase/sessions/c0$c;->L$1:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object v4, p0, Lcom/google/firebase/sessions/c0$c;->L$2:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v5, p0, Lcom/google/firebase/sessions/c0$c;->L$3:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v6, p0, Lcom/google/firebase/sessions/c0$c;->L$4:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v8, p0, Lcom/google/firebase/sessions/c0$c;->L$5:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v7, p0, Lcom/google/firebase/sessions/c0$c;->L$6:Ljava/lang/Object;

    .line 202
    .line 203
    iput v3, p0, Lcom/google/firebase/sessions/c0$c;->label:I

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, p0}, Lcom/google/firebase/sessions/api/a;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    if-ne v3, v0, :cond_5

    .line 210
    return-object v0

    .line 211
    :cond_5
    move-object v11, v8

    .line 212
    move-object v8, p1

    .line 213
    move-object p1, v3

    .line 214
    move-object v3, v11

    .line 215
    move-object v12, v7

    .line 216
    move-object v7, v1

    .line 217
    move-object v1, v12

    .line 218
    move-object v13, v6

    .line 219
    move-object v6, v4

    .line 220
    move-object v4, v13

    .line 221
    .line 222
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 223
    .line 224
    iget-object v9, p0, Lcom/google/firebase/sessions/c0$c;->this$0:Lcom/google/firebase/sessions/c0;

    .line 225
    .line 226
    iput-object v8, p0, Lcom/google/firebase/sessions/c0$c;->L$0:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v7, p0, Lcom/google/firebase/sessions/c0$c;->L$1:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v6, p0, Lcom/google/firebase/sessions/c0$c;->L$2:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v5, p0, Lcom/google/firebase/sessions/c0$c;->L$3:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v4, p0, Lcom/google/firebase/sessions/c0$c;->L$4:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v3, p0, Lcom/google/firebase/sessions/c0$c;->L$5:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v1, p0, Lcom/google/firebase/sessions/c0$c;->L$6:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object p1, p0, Lcom/google/firebase/sessions/c0$c;->L$7:Ljava/lang/Object;

    .line 241
    .line 242
    iput v2, p0, Lcom/google/firebase/sessions/c0$c;->label:I

    .line 243
    .line 244
    .line 245
    invoke-static {v9, p0}, Lcom/google/firebase/sessions/c0;->d(Lcom/google/firebase/sessions/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    if-ne v2, v0, :cond_6

    .line 249
    return-object v0

    .line 250
    :cond_6
    move-object v0, v7

    .line 251
    move-object v11, v6

    .line 252
    move-object v6, p1

    .line 253
    move-object p1, v2

    .line 254
    move-object v2, v5

    .line 255
    move-object v5, v1

    .line 256
    move-object v1, v11

    .line 257
    move-object v12, v4

    .line 258
    move-object v4, v3

    .line 259
    move-object v3, v12

    .line 260
    .line 261
    :goto_2
    const-string v7, "getFirebaseInstallationId()"

    .line 262
    .line 263
    .line 264
    invoke-static {p1, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    move-object v7, p1

    .line 266
    .line 267
    check-cast v7, Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/sessions/a0;->a(Lcom/google/firebase/f;Lcom/google/firebase/sessions/y;Lcom/google/firebase/sessions/settings/f;Lcom/google/firebase/sessions/t;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/google/firebase/sessions/z;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    .line 274
    invoke-static {v8, p1}, Lcom/google/firebase/sessions/c0;->b(Lcom/google/firebase/sessions/c0;Lcom/google/firebase/sessions/z;)V

    .line 275
    .line 276
    :cond_7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 277
    return-object p1
.end method
