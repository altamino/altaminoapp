.class final Landroidx/compose/runtime/Recomposer$runFrameLoop$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->s0(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runFrameLoop$2\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1200:1\n46#2,5:1201\n46#2,3:1206\n50#2:1235\n49#2:1236\n66#3:1209\n66#3:1234\n32#4,6:1210\n32#4,6:1216\n32#4,6:1222\n32#4,6:1228\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runFrameLoop$2\n*L\n634#1:1201,5\n644#1:1206,3\n644#1:1235\n644#1:1236\n648#1:1209\n683#1:1234\n651#1:1210,6\n653#1:1216,6\n661#1:1222,6\n676#1:1228,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toRecompose:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toApply:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)Lkotlinx/coroutines/o;
    .locals 10
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
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->u(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->t()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "Recomposer:animation"

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->u(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroidx/compose/runtime/BroadcastFrameClock;->u(J)V

    .line 30
    .line 31
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g()V

    .line 35
    .line 36
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    .line 43
    sget-object p2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 47
    throw p1

    .line 48
    .line 49
    :cond_0
    :goto_0
    const-string p1, "Recomposer:recompose"

    .line 50
    .line 51
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toRecompose:Ljava/util/List;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toApply:Ljava/util/List;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    .line 58
    .line 59
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/Trace;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->P(Landroidx/compose/runtime/Recomposer;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->y(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 79
    move-result v5

    .line 80
    const/4 v6, 0x0

    .line 81
    move v7, v6

    .line 82
    .line 83
    :goto_1
    if-ge v7, v5, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v8

    .line 88
    .line 89
    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    .line 90
    move-object v9, v1

    .line 91
    .line 92
    check-cast v9, Ljava/util/Collection;

    .line 93
    .line 94
    .line 95
    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception p2

    .line 100
    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->y(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    .line 108
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 116
    move-result v5

    .line 117
    move v7, v6

    .line 118
    .line 119
    :goto_2
    if-ge v7, v5, :cond_2

    .line 120
    .line 121
    .line 122
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v8

    .line 124
    .line 125
    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    .line 126
    move-object v9, v0

    .line 127
    .line 128
    check-cast v9, Ljava/util/Collection;

    .line 129
    .line 130
    .line 131
    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    add-int/lit8 v7, v7, 0x1

    .line 134
    goto :goto_2

    .line 135
    .line 136
    .line 137
    :cond_2
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    .line 141
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Landroidx/compose/runtime/ProduceFrameSignal;->e()V

    .line 145
    .line 146
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :try_start_3
    monitor-exit v3

    .line 148
    .line 149
    new-instance v2, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 150
    .line 151
    .line 152
    invoke-direct {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 153
    .line 154
    .line 155
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 156
    move-result v3

    .line 157
    move v4, v6

    .line 158
    .line 159
    :goto_3
    if-ge v4, v3, :cond_4

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .line 166
    .line 167
    .line 168
    invoke-static {p2, v5, v2}, Landroidx/compose/runtime/Recomposer;->O(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    .line 169
    move-result-object v5

    .line 170
    .line 171
    if-eqz v5, :cond_3

    .line 172
    move-object v7, v1

    .line 173
    .line 174
    check-cast v7, Ljava/util/Collection;

    .line 175
    .line 176
    .line 177
    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    goto :goto_4

    .line 179
    :catchall_2
    move-exception p2

    .line 180
    goto :goto_8

    .line 181
    .line 182
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 183
    goto :goto_3

    .line 184
    .line 185
    .line 186
    :cond_4
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    move-object v0, v1

    .line 188
    .line 189
    check-cast v0, Ljava/util/Collection;

    .line 190
    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 193
    move-result v0

    .line 194
    .line 195
    xor-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroidx/compose/runtime/Recomposer;->d0()J

    .line 201
    move-result-wide v2

    .line 202
    .line 203
    const-wide/16 v4, 0x1

    .line 204
    add-long/2addr v2, v4

    .line 205
    .line 206
    .line 207
    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/Recomposer;->S(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 208
    goto :goto_5

    .line 209
    :catchall_3
    move-exception p2

    .line 210
    goto :goto_a

    .line 211
    .line 212
    .line 213
    :cond_5
    :goto_5
    :try_start_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 214
    move-result v0

    .line 215
    .line 216
    :goto_6
    if-ge v6, v0, :cond_6

    .line 217
    .line 218
    .line 219
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    check-cast v2, Landroidx/compose/runtime/ControlledComposition;

    .line 223
    .line 224
    .line 225
    invoke-interface {v2}, Landroidx/compose/runtime/ControlledComposition;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 226
    .line 227
    add-int/lit8 v6, v6, 0x1

    .line 228
    goto :goto_6

    .line 229
    :catchall_4
    move-exception p2

    .line 230
    goto :goto_7

    .line 231
    .line 232
    .line 233
    :cond_6
    :try_start_7
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 234
    .line 235
    .line 236
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 237
    move-result-object v0

    .line 238
    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 239
    .line 240
    .line 241
    :try_start_8
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->s(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/o;

    .line 242
    move-result-object p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 243
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 244
    .line 245
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 249
    return-object p2

    .line 250
    :catchall_5
    move-exception p2

    .line 251
    :try_start_a
    monitor-exit v0

    .line 252
    throw p2

    .line 253
    .line 254
    .line 255
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    throw p2

    .line 257
    .line 258
    .line 259
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    throw p2

    .line 261
    :goto_9
    monitor-exit v3

    .line 262
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 263
    .line 264
    :goto_a
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Trace;->b(Ljava/lang/Object;)V

    .line 268
    throw p2
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
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->a(J)Lkotlinx/coroutines/o;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
