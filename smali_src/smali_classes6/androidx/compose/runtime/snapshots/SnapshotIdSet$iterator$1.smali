.class final Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/snapshots/SnapshotIdSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Le8/p<",
        "Lkotlin/sequences/i<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1"
    f = "SnapshotIdSet.kt"
    l = {
        0x127,
        0x12c,
        0x133
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-direct {v0, v1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->invoke(Lkotlin/sequences/i;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/i;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/sequences/i;
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
            "Lkotlin/sequences/i<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
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
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    const-wide/16 v4, 0x1

    .line 12
    const/4 v6, 0x3

    .line 13
    const/4 v7, 0x2

    .line 14
    .line 15
    const/16 v8, 0x40

    .line 16
    .line 17
    const-wide/16 v10, 0x0

    .line 18
    const/4 v12, 0x1

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    if-eq v2, v12, :cond_2

    .line 23
    .line 24
    if-eq v2, v7, :cond_1

    .line 25
    .line 26
    if-ne v2, v6, :cond_0

    .line 27
    .line 28
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 29
    .line 30
    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, Lkotlin/sequences/i;

    .line 33
    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 36
    move v9, v2

    .line 37
    move v13, v6

    .line 38
    move-object v2, v0

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v1

    .line 49
    .line 50
    :cond_1
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 51
    .line 52
    iget-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v13, Lkotlin/sequences/i;

    .line 55
    .line 56
    .line 57
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 58
    move-object v9, v0

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$1:I

    .line 63
    .line 64
    iget v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 65
    .line 66
    iget-object v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v14, [I

    .line 69
    .line 70
    iget-object v15, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v15, Lkotlin/sequences/i;

    .line 73
    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 76
    move-object v9, v0

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lkotlin/sequences/i;

    .line 85
    .line 86
    iget-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 87
    .line 88
    .line 89
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    .line 90
    move-result-object v13

    .line 91
    .line 92
    if-eqz v13, :cond_6

    .line 93
    array-length v14, v13

    .line 94
    move-object v9, v0

    .line 95
    move-object v15, v2

    .line 96
    move v2, v14

    .line 97
    move-object v14, v13

    .line 98
    const/4 v13, 0x0

    .line 99
    .line 100
    :goto_0
    if-ge v13, v2, :cond_5

    .line 101
    .line 102
    aget v17, v14, v13

    .line 103
    .line 104
    .line 105
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 106
    move-result-object v6

    .line 107
    .line 108
    iput-object v15, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v14, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:Ljava/lang/Object;

    .line 111
    .line 112
    iput v13, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 113
    .line 114
    iput v2, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$1:I

    .line 115
    .line 116
    iput v12, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v15, v6, v9}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 120
    move-result-object v6

    .line 121
    .line 122
    if-ne v6, v1, :cond_4

    .line 123
    return-object v1

    .line 124
    :cond_4
    :goto_1
    add-int/2addr v13, v12

    .line 125
    const/4 v6, 0x3

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    move-object v2, v15

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move-object v9, v0

    .line 130
    .line 131
    :goto_2
    iget-object v6, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 132
    .line 133
    .line 134
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    .line 135
    move-result-wide v13

    .line 136
    .line 137
    cmp-long v6, v13, v10

    .line 138
    .line 139
    if-eqz v6, :cond_9

    .line 140
    move-object v13, v2

    .line 141
    const/4 v2, 0x0

    .line 142
    .line 143
    :goto_3
    if-ge v2, v8, :cond_8

    .line 144
    .line 145
    iget-object v6, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 146
    .line 147
    .line 148
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    .line 149
    move-result-wide v14

    .line 150
    .line 151
    shl-long v18, v4, v2

    .line 152
    .line 153
    and-long v14, v14, v18

    .line 154
    .line 155
    cmp-long v6, v14, v10

    .line 156
    .line 157
    if-eqz v6, :cond_7

    .line 158
    .line 159
    iget-object v6, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 160
    .line 161
    .line 162
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    .line 163
    move-result v6

    .line 164
    add-int/2addr v6, v2

    .line 165
    .line 166
    .line 167
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 168
    move-result-object v6

    .line 169
    .line 170
    iput-object v13, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v3, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:Ljava/lang/Object;

    .line 173
    .line 174
    iput v2, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 175
    .line 176
    iput v7, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v6, v9}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 180
    move-result-object v6

    .line 181
    .line 182
    if-ne v6, v1, :cond_7

    .line 183
    return-object v1

    .line 184
    :cond_7
    :goto_4
    add-int/2addr v2, v12

    .line 185
    goto :goto_3

    .line 186
    :cond_8
    move-object v2, v13

    .line 187
    .line 188
    :cond_9
    iget-object v6, v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 189
    .line 190
    .line 191
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->g(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    .line 192
    move-result-wide v6

    .line 193
    .line 194
    cmp-long v6, v6, v10

    .line 195
    .line 196
    if-eqz v6, :cond_c

    .line 197
    move-object v7, v2

    .line 198
    move-object v2, v9

    .line 199
    const/4 v9, 0x0

    .line 200
    .line 201
    :goto_5
    if-ge v9, v8, :cond_c

    .line 202
    .line 203
    iget-object v6, v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->g(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    .line 207
    move-result-wide v13

    .line 208
    .line 209
    shl-long v15, v4, v9

    .line 210
    and-long/2addr v13, v15

    .line 211
    .line 212
    cmp-long v6, v13, v10

    .line 213
    .line 214
    if-eqz v6, :cond_a

    .line 215
    .line 216
    add-int/lit8 v6, v9, 0x40

    .line 217
    .line 218
    iget-object v13, v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 219
    .line 220
    .line 221
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    .line 222
    move-result v13

    .line 223
    add-int/2addr v6, v13

    .line 224
    .line 225
    .line 226
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 227
    move-result-object v6

    .line 228
    .line 229
    iput-object v7, v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:Ljava/lang/Object;

    .line 232
    .line 233
    iput v9, v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 234
    const/4 v13, 0x3

    .line 235
    .line 236
    iput v13, v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v6, v2}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 240
    move-result-object v6

    .line 241
    .line 242
    if-ne v6, v1, :cond_b

    .line 243
    return-object v1

    .line 244
    :cond_a
    const/4 v13, 0x3

    .line 245
    :cond_b
    :goto_6
    add-int/2addr v9, v12

    .line 246
    goto :goto_5

    .line 247
    .line 248
    :cond_c
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 249
    return-object v1
.end method
