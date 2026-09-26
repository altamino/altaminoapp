.class final Lkotlinx/coroutines/flow/internal/k$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/k;->a(Lkotlinx/coroutines/flow/h;[Lkotlinx/coroutines/flow/g;Le8/a;Le8/q;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x36,
        0x4c,
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $arrayFactory:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic $flows:[Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lkotlinx/coroutines/flow/h<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/g;Le8/a;Le8/q;Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Le8/a<",
            "[TT;>;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/h<",
            "-TR;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/flow/internal/k$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/k$a;->$flows:[Lkotlinx/coroutines/flow/g;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/k$a;->$arrayFactory:Le8/a;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/k$a;->$transform:Le8/q;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/k$a;->$this_combineInternal:Lkotlinx/coroutines/flow/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
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

    new-instance v6, Lkotlinx/coroutines/flow/internal/k$a;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/k$a;->$flows:[Lkotlinx/coroutines/flow/g;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/k$a;->$arrayFactory:Le8/a;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/k$a;->$transform:Le8/q;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/k$a;->$this_combineInternal:Lkotlinx/coroutines/flow/h;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/k$a;-><init>([Lkotlinx/coroutines/flow/g;Le8/a;Le8/q;Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/k$a;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/k$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/k$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget v2, v0, Lkotlinx/coroutines/flow/internal/k$a;->label:I

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eq v2, v5, :cond_2

    .line 16
    .line 17
    if-eq v2, v4, :cond_1

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    iget v2, v0, Lkotlinx/coroutines/flow/internal/k$a;->I$1:I

    .line 22
    .line 23
    iget v6, v0, Lkotlinx/coroutines/flow/internal/k$a;->I$0:I

    .line 24
    .line 25
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v7, [B

    .line 28
    .line 29
    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v8, Lkotlinx/coroutines/channels/d;

    .line 32
    .line 33
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v9, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    move/from16 v21, v2

    .line 41
    move-object v2, v7

    .line 42
    move-object v7, v8

    .line 43
    move-object v13, v9

    .line 44
    move-object v8, v0

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v1

    .line 55
    .line 56
    :cond_1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/k$a;->I$1:I

    .line 57
    .line 58
    iget v6, v0, Lkotlinx/coroutines/flow/internal/k$a;->I$0:I

    .line 59
    .line 60
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, [B

    .line 63
    .line 64
    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlinx/coroutines/channels/d;

    .line 67
    .line 68
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    move/from16 v21, v2

    .line 76
    move-object v2, v7

    .line 77
    move-object v7, v8

    .line 78
    move-object v13, v9

    .line 79
    move-object v8, v0

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/k$a;->I$1:I

    .line 84
    .line 85
    iget v6, v0, Lkotlinx/coroutines/flow/internal/k$a;->I$0:I

    .line 86
    .line 87
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, [B

    .line 90
    .line 91
    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v8, Lkotlinx/coroutines/channels/d;

    .line 94
    .line 95
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    move-object/from16 v10, p1

    .line 103
    .line 104
    check-cast v10, Lkotlinx/coroutines/channels/h;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10}, Lkotlinx/coroutines/channels/h;->k()Ljava/lang/Object;

    .line 108
    move-result-object v10

    .line 109
    move v15, v2

    .line 110
    move-object v2, v7

    .line 111
    move-object v7, v8

    .line 112
    move-object v8, v0

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v2, Lkotlinx/coroutines/o0;

    .line 122
    .line 123
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/k$a;->$flows:[Lkotlinx/coroutines/flow/g;

    .line 124
    array-length v12, v6

    .line 125
    .line 126
    if-nez v12, :cond_4

    .line 127
    .line 128
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 129
    return-object v1

    .line 130
    .line 131
    :cond_4
    new-array v13, v12, [Ljava/lang/Object;

    .line 132
    .line 133
    sget-object v7, Lkotlinx/coroutines/flow/internal/s;->UNINITIALIZED:Lkotlinx/coroutines/internal/i0;

    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v10, 0x6

    .line 137
    const/4 v11, 0x0

    .line 138
    move-object v6, v13

    .line 139
    .line 140
    .line 141
    invoke-static/range {v6 .. v11}, Lkotlin/collections/l;->t([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 142
    const/4 v6, 0x6

    .line 143
    const/4 v7, 0x0

    .line 144
    .line 145
    .line 146
    invoke-static {v12, v7, v7, v6, v7}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 147
    move-result-object v20

    .line 148
    .line 149
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    .line 151
    .line 152
    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    move/from16 v10, v21

    .line 157
    .line 158
    :goto_0
    if-ge v10, v12, :cond_5

    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    .line 162
    new-instance v9, Lkotlinx/coroutines/flow/internal/k$a$a;

    .line 163
    .line 164
    iget-object v15, v0, Lkotlinx/coroutines/flow/internal/k$a;->$flows:[Lkotlinx/coroutines/flow/g;

    .line 165
    .line 166
    const/16 v19, 0x0

    .line 167
    move-object v14, v9

    .line 168
    .line 169
    move/from16 v16, v10

    .line 170
    .line 171
    move-object/from16 v17, v11

    .line 172
    .line 173
    move-object/from16 v18, v20

    .line 174
    .line 175
    .line 176
    invoke-direct/range {v14 .. v19}, Lkotlinx/coroutines/flow/internal/k$a$a;-><init>([Lkotlinx/coroutines/flow/g;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V

    .line 177
    const/4 v14, 0x3

    .line 178
    const/4 v15, 0x0

    .line 179
    move-object v6, v2

    .line 180
    move v10, v14

    .line 181
    move-object v14, v11

    .line 182
    move-object v11, v15

    .line 183
    .line 184
    .line 185
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 186
    .line 187
    add-int/lit8 v10, v16, 0x1

    .line 188
    move-object v11, v14

    .line 189
    goto :goto_0

    .line 190
    .line 191
    :cond_5
    new-array v2, v12, [B

    .line 192
    move-object v8, v0

    .line 193
    move v6, v12

    .line 194
    .line 195
    move-object/from16 v7, v20

    .line 196
    .line 197
    :goto_1
    add-int/lit8 v9, v21, 0x1

    .line 198
    int-to-byte v9, v9

    .line 199
    .line 200
    iput-object v13, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$1:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$2:Ljava/lang/Object;

    .line 205
    .line 206
    iput v6, v8, Lkotlinx/coroutines/flow/internal/k$a;->I$0:I

    .line 207
    .line 208
    iput v9, v8, Lkotlinx/coroutines/flow/internal/k$a;->I$1:I

    .line 209
    .line 210
    iput v5, v8, Lkotlinx/coroutines/flow/internal/k$a;->label:I

    .line 211
    .line 212
    .line 213
    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/t;->s(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 214
    move-result-object v10

    .line 215
    .line 216
    if-ne v10, v1, :cond_6

    .line 217
    return-object v1

    .line 218
    :cond_6
    move v15, v9

    .line 219
    move-object v9, v13

    .line 220
    .line 221
    .line 222
    :goto_2
    invoke-static {v10}, Lkotlinx/coroutines/channels/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object v10

    .line 224
    .line 225
    check-cast v10, Lkotlin/collections/j0;

    .line 226
    .line 227
    if-nez v10, :cond_7

    .line 228
    .line 229
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 230
    return-object v1

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {v10}, Lkotlin/collections/j0;->a()I

    .line 234
    move-result v11

    .line 235
    .line 236
    aget-object v12, v9, v11

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10}, Lkotlin/collections/j0;->b()Ljava/lang/Object;

    .line 240
    move-result-object v10

    .line 241
    .line 242
    aput-object v10, v9, v11

    .line 243
    .line 244
    sget-object v10, Lkotlinx/coroutines/flow/internal/s;->UNINITIALIZED:Lkotlinx/coroutines/internal/i0;

    .line 245
    .line 246
    if-ne v12, v10, :cond_8

    .line 247
    .line 248
    add-int/lit8 v6, v6, -0x1

    .line 249
    .line 250
    :cond_8
    aget-byte v10, v2, v11

    .line 251
    .line 252
    if-eq v10, v15, :cond_9

    .line 253
    int-to-byte v10, v15

    .line 254
    .line 255
    aput-byte v10, v2, v11

    .line 256
    .line 257
    .line 258
    invoke-interface {v7}, Lkotlinx/coroutines/channels/t;->q()Ljava/lang/Object;

    .line 259
    move-result-object v10

    .line 260
    .line 261
    .line 262
    invoke-static {v10}, Lkotlinx/coroutines/channels/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-result-object v10

    .line 264
    .line 265
    check-cast v10, Lkotlin/collections/j0;

    .line 266
    .line 267
    if-nez v10, :cond_7

    .line 268
    .line 269
    :cond_9
    if-nez v6, :cond_c

    .line 270
    .line 271
    iget-object v10, v8, Lkotlinx/coroutines/flow/internal/k$a;->$arrayFactory:Le8/a;

    .line 272
    .line 273
    .line 274
    invoke-interface {v10}, Le8/a;->invoke()Ljava/lang/Object;

    .line 275
    move-result-object v10

    .line 276
    .line 277
    check-cast v10, [Ljava/lang/Object;

    .line 278
    .line 279
    if-nez v10, :cond_b

    .line 280
    .line 281
    iget-object v10, v8, Lkotlinx/coroutines/flow/internal/k$a;->$transform:Le8/q;

    .line 282
    .line 283
    iget-object v11, v8, Lkotlinx/coroutines/flow/internal/k$a;->$this_combineInternal:Lkotlinx/coroutines/flow/h;

    .line 284
    .line 285
    iput-object v9, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 286
    .line 287
    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$1:Ljava/lang/Object;

    .line 288
    .line 289
    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$2:Ljava/lang/Object;

    .line 290
    .line 291
    iput v6, v8, Lkotlinx/coroutines/flow/internal/k$a;->I$0:I

    .line 292
    .line 293
    iput v15, v8, Lkotlinx/coroutines/flow/internal/k$a;->I$1:I

    .line 294
    .line 295
    iput v4, v8, Lkotlinx/coroutines/flow/internal/k$a;->label:I

    .line 296
    .line 297
    .line 298
    invoke-interface {v10, v11, v9, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object v10

    .line 300
    .line 301
    if-ne v10, v1, :cond_a

    .line 302
    return-object v1

    .line 303
    :cond_a
    move-object v13, v9

    .line 304
    .line 305
    move/from16 v21, v15

    .line 306
    goto :goto_1

    .line 307
    :cond_b
    const/4 v13, 0x0

    .line 308
    const/4 v14, 0x0

    .line 309
    .line 310
    const/16 v16, 0x0

    .line 311
    .line 312
    const/16 v17, 0xe

    .line 313
    .line 314
    const/16 v18, 0x0

    .line 315
    move-object v11, v9

    .line 316
    move-object v12, v10

    .line 317
    move v4, v15

    .line 318
    .line 319
    move/from16 v15, v16

    .line 320
    .line 321
    move/from16 v16, v17

    .line 322
    .line 323
    move-object/from16 v17, v18

    .line 324
    .line 325
    .line 326
    invoke-static/range {v11 .. v17}, Lkotlin/collections/l;->m([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 327
    .line 328
    iget-object v11, v8, Lkotlinx/coroutines/flow/internal/k$a;->$transform:Le8/q;

    .line 329
    .line 330
    iget-object v12, v8, Lkotlinx/coroutines/flow/internal/k$a;->$this_combineInternal:Lkotlinx/coroutines/flow/h;

    .line 331
    .line 332
    iput-object v9, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$0:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$1:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/k$a;->L$2:Ljava/lang/Object;

    .line 337
    .line 338
    iput v6, v8, Lkotlinx/coroutines/flow/internal/k$a;->I$0:I

    .line 339
    .line 340
    iput v4, v8, Lkotlinx/coroutines/flow/internal/k$a;->I$1:I

    .line 341
    .line 342
    iput v3, v8, Lkotlinx/coroutines/flow/internal/k$a;->label:I

    .line 343
    .line 344
    .line 345
    invoke-interface {v11, v12, v10, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-result-object v10

    .line 347
    .line 348
    if-ne v10, v1, :cond_d

    .line 349
    return-object v1

    .line 350
    :goto_3
    const/4 v4, 0x2

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    :cond_c
    move v4, v15

    .line 354
    .line 355
    :cond_d
    move/from16 v21, v4

    .line 356
    move-object v13, v9

    .line 357
    goto :goto_3
.end method
