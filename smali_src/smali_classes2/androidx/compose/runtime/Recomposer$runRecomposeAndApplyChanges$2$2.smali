.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Long;",
        "Lkotlinx/coroutines/o<",
        "-",
        "Lw7/l0;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1200:1\n46#2,5:1201\n46#2,3:1206\n50#2:1240\n49#2:1241\n66#3:1209\n66#3:1222\n66#3:1239\n32#4,6:1210\n32#4,6:1216\n32#4,6:1223\n32#4,6:1229\n1849#5,2:1235\n1849#5,2:1237\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2\n*L\n458#1:1201,5\n468#1:1206,3\n468#1:1240\n468#1:1241\n471#1:1209\n498#1:1222\n556#1:1239\n474#1:1210,6\n483#1:1216,6\n499#1:1223,6\n525#1:1229,6\n536#1:1235,2\n546#1:1237,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toRecompose:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toInsert:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toLateApply:Ljava/util/Set;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toApply:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toComplete:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)Lkotlinx/coroutines/o;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/o<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->u(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Recomposer:animation"

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 19
    .line 20
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->u(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    move-wide/from16 v5, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/BroadcastFrameClock;->u(J)V

    .line 34
    .line 35
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g()V

    .line 39
    .line 40
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    .line 47
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 51
    throw v0

    .line 52
    .line 53
    :cond_0
    :goto_0
    const-string v0, "Recomposer:recompose"

    .line 54
    .line 55
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 56
    .line 57
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toRecompose:Ljava/util/List;

    .line 58
    .line 59
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toInsert:Ljava/util/List;

    .line 60
    .line 61
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toLateApply:Ljava/util/Set;

    .line 62
    .line 63
    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toApply:Ljava/util/List;

    .line 64
    .line 65
    iget-object v7, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->$toComplete:Ljava/util/Set;

    .line 66
    .line 67
    sget-object v8, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 75
    move-result-object v9

    .line 76
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 77
    .line 78
    .line 79
    :try_start_2
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->P(Landroidx/compose/runtime/Recomposer;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 87
    move-result v10

    .line 88
    const/4 v12, 0x0

    .line 89
    .line 90
    :goto_1
    if-ge v12, v10, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v13

    .line 95
    .line 96
    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .line 97
    move-object v14, v3

    .line 98
    .line 99
    check-cast v14, Ljava/util/Collection;

    .line 100
    .line 101
    .line 102
    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    add-int/lit8 v12, v12, 0x1

    .line 105
    goto :goto_1

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    .line 108
    goto/16 :goto_14

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    .line 117
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    :try_start_3
    monitor-exit v9

    .line 119
    .line 120
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 124
    .line 125
    new-instance v9, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 126
    .line 127
    .line 128
    invoke-direct {v9}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 129
    :cond_2
    move-object v10, v3

    .line 130
    .line 131
    check-cast v10, Ljava/util/Collection;

    .line 132
    .line 133
    .line 134
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 135
    move-result v10

    .line 136
    .line 137
    xor-int/lit8 v10, v10, 0x1

    .line 138
    .line 139
    if-nez v10, :cond_a

    .line 140
    move-object v10, v4

    .line 141
    .line 142
    check-cast v10, Ljava/util/Collection;

    .line 143
    .line 144
    .line 145
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    move-result v10

    .line 147
    .line 148
    xor-int/lit8 v10, v10, 0x1

    .line 149
    .line 150
    if-eqz v10, :cond_3

    .line 151
    .line 152
    goto/16 :goto_b

    .line 153
    :cond_3
    move-object v0, v6

    .line 154
    .line 155
    check-cast v0, Ljava/util/Collection;

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    xor-int/lit8 v0, v0, 0x1

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroidx/compose/runtime/Recomposer;->d0()J

    .line 167
    move-result-wide v3

    .line 168
    .line 169
    const-wide/16 v9, 0x1

    .line 170
    add-long/2addr v3, v9

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Recomposer;->S(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 174
    :try_start_4
    move-object v0, v6

    .line 175
    .line 176
    check-cast v0, Ljava/lang/Iterable;

    .line 177
    .line 178
    .line 179
    invoke-static {v7, v0}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 180
    .line 181
    .line 182
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 183
    move-result v0

    .line 184
    const/4 v11, 0x0

    .line 185
    .line 186
    :goto_2
    if-ge v11, v0, :cond_4

    .line 187
    .line 188
    .line 189
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    check-cast v3, Landroidx/compose/runtime/ControlledComposition;

    .line 193
    .line 194
    .line 195
    invoke-interface {v3}, Landroidx/compose/runtime/ControlledComposition;->l()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    .line 197
    add-int/lit8 v11, v11, 0x1

    .line 198
    goto :goto_2

    .line 199
    :catchall_2
    move-exception v0

    .line 200
    goto :goto_3

    .line 201
    .line 202
    .line 203
    :cond_4
    :try_start_5
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 204
    goto :goto_4

    .line 205
    :catchall_3
    move-exception v0

    .line 206
    .line 207
    goto/16 :goto_15

    .line 208
    .line 209
    .line 210
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 211
    throw v0

    .line 212
    .line 213
    .line 214
    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 215
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 216
    .line 217
    xor-int/lit8 v0, v0, 0x1

    .line 218
    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    .line 222
    :try_start_6
    invoke-static {v7, v5}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 223
    .line 224
    .line 225
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    .line 229
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v3

    .line 231
    .line 232
    if-eqz v3, :cond_6

    .line 233
    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object v3

    .line 237
    .line 238
    check-cast v3, Landroidx/compose/runtime/ControlledComposition;

    .line 239
    .line 240
    .line 241
    invoke-interface {v3}, Landroidx/compose/runtime/ControlledComposition;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 242
    goto :goto_5

    .line 243
    :catchall_4
    move-exception v0

    .line 244
    goto :goto_6

    .line 245
    .line 246
    .line 247
    :cond_6
    :try_start_7
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 248
    goto :goto_7

    .line 249
    .line 250
    .line 251
    :goto_6
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 252
    throw v0

    .line 253
    .line 254
    .line 255
    :cond_7
    :goto_7
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 256
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 257
    .line 258
    xor-int/lit8 v0, v0, 0x1

    .line 259
    .line 260
    if-eqz v0, :cond_9

    .line 261
    .line 262
    .line 263
    :try_start_8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    .line 267
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    move-result v3

    .line 269
    .line 270
    if-eqz v3, :cond_8

    .line 271
    .line 272
    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    move-result-object v3

    .line 275
    .line 276
    check-cast v3, Landroidx/compose/runtime/ControlledComposition;

    .line 277
    .line 278
    .line 279
    invoke-interface {v3}, Landroidx/compose/runtime/ControlledComposition;->e()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 280
    goto :goto_8

    .line 281
    :catchall_5
    move-exception v0

    .line 282
    goto :goto_9

    .line 283
    .line 284
    .line 285
    :cond_8
    :try_start_9
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 286
    goto :goto_a

    .line 287
    .line 288
    .line 289
    :goto_9
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 290
    throw v0

    .line 291
    .line 292
    .line 293
    :cond_9
    :goto_a
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->t(Landroidx/compose/runtime/Recomposer;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 297
    move-result-object v3

    .line 298
    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 299
    .line 300
    .line 301
    :try_start_a
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->s(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/o;

    .line 302
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 303
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 304
    .line 305
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 309
    return-object v0

    .line 310
    :catchall_6
    move-exception v0

    .line 311
    move-object v2, v0

    .line 312
    :try_start_c
    monitor-exit v3

    .line 313
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 314
    .line 315
    .line 316
    :cond_a
    :goto_b
    :try_start_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 317
    move-result v10

    .line 318
    const/4 v12, 0x0

    .line 319
    .line 320
    :goto_c
    if-ge v12, v10, :cond_c

    .line 321
    .line 322
    .line 323
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 324
    move-result-object v13

    .line 325
    .line 326
    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    invoke-static {v2, v13, v0}, Landroidx/compose/runtime/Recomposer;->O(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    .line 333
    move-result-object v13

    .line 334
    .line 335
    if-eqz v13, :cond_b

    .line 336
    move-object v14, v6

    .line 337
    .line 338
    check-cast v14, Ljava/util/Collection;

    .line 339
    .line 340
    .line 341
    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 342
    goto :goto_d

    .line 343
    :catchall_7
    move-exception v0

    .line 344
    goto :goto_13

    .line 345
    .line 346
    :cond_b
    :goto_d
    add-int/lit8 v12, v12, 0x1

    .line 347
    goto :goto_c

    .line 348
    .line 349
    .line 350
    :cond_c
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->f()Z

    .line 354
    move-result v10

    .line 355
    .line 356
    if-eqz v10, :cond_f

    .line 357
    .line 358
    .line 359
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 360
    move-result-object v10

    .line 361
    monitor-enter v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 362
    .line 363
    .line 364
    :try_start_f
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->D(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 365
    move-result-object v12

    .line 366
    .line 367
    .line 368
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 369
    move-result v13

    .line 370
    const/4 v14, 0x0

    .line 371
    .line 372
    :goto_e
    if-ge v14, v13, :cond_e

    .line 373
    .line 374
    .line 375
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    move-result-object v15

    .line 377
    .line 378
    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/collection/IdentityArraySet;->contains(Ljava/lang/Object;)Z

    .line 382
    move-result v16

    .line 383
    .line 384
    if-nez v16, :cond_d

    .line 385
    .line 386
    .line 387
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ControlledComposition;->d(Ljava/util/Set;)Z

    .line 388
    move-result v16

    .line 389
    .line 390
    if-eqz v16, :cond_d

    .line 391
    move-object v11, v3

    .line 392
    .line 393
    check-cast v11, Ljava/util/Collection;

    .line 394
    .line 395
    .line 396
    invoke-interface {v11, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 397
    goto :goto_f

    .line 398
    :catchall_8
    move-exception v0

    .line 399
    goto :goto_10

    .line 400
    .line 401
    :cond_d
    :goto_f
    add-int/lit8 v14, v14, 0x1

    .line 402
    goto :goto_e

    .line 403
    .line 404
    :cond_e
    sget-object v11, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 405
    :try_start_10
    monitor-exit v10

    .line 406
    goto :goto_11

    .line 407
    :goto_10
    monitor-exit v10

    .line 408
    throw v0

    .line 409
    .line 410
    .line 411
    :cond_f
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 412
    move-result v10

    .line 413
    .line 414
    if-eqz v10, :cond_2

    .line 415
    .line 416
    .line 417
    invoke-static {v4, v2}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->f(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 418
    :goto_12
    move-object v10, v4

    .line 419
    .line 420
    check-cast v10, Ljava/util/Collection;

    .line 421
    .line 422
    .line 423
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 424
    move-result v10

    .line 425
    .line 426
    xor-int/lit8 v10, v10, 0x1

    .line 427
    .line 428
    if-eqz v10, :cond_2

    .line 429
    .line 430
    .line 431
    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/Recomposer;->N(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    .line 432
    move-result-object v10

    .line 433
    .line 434
    check-cast v10, Ljava/lang/Iterable;

    .line 435
    .line 436
    .line 437
    invoke-static {v5, v10}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 438
    .line 439
    .line 440
    invoke-static {v4, v2}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->f(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 441
    goto :goto_12

    .line 442
    .line 443
    .line 444
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 445
    throw v0

    .line 446
    :goto_14
    monitor-exit v9

    .line 447
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 448
    .line 449
    :goto_15
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 453
    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;->a(J)Lkotlinx/coroutines/o;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
