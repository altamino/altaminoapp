.class public final Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInputEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputEventProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,232:1\n1741#2,3:233\n1849#2,2:236\n1741#2,3:238\n*S KotlinDebug\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputEventProcessor\n*L\n77#1:233,3\n80#1:236,2\n103#1:238,3\n*E\n"
.end annotation


# instance fields
.field private final hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hitResult:Landroidx/compose/ui/node/HitTestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/HitTestResult<",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isProcessing:Z

.field private final pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final root:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "root"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/HitPathTracker;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 22
    .line 23
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;-><init>()V

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/ui/node/HitTestResult;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;Z)I
    .locals 17
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PositionCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "pointerEvent"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "positionCalculator"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-boolean v3, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v4}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessorKt;->a(ZZ)I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v3, 0x1

    .line 28
    .line 29
    :try_start_0
    iput-boolean v3, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    .line 30
    .line 31
    iget-object v5, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v0, v2}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->b(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a()Ljava/util/Map;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Ljava/lang/Iterable;

    .line 46
    .line 47
    instance-of v5, v2, Ljava/util/Collection;

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    move-object v5, v2

    .line 51
    .line 52
    check-cast v5, Ljava/util/Collection;

    .line 53
    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    move-result v5

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v5

    .line 71
    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 82
    move-result v6

    .line 83
    .line 84
    if-nez v6, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->i()Z

    .line 88
    move-result v5

    .line 89
    .line 90
    if-eqz v5, :cond_2

    .line 91
    :cond_3
    move v2, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    move v2, v3

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a()Ljava/util/Map;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    check-cast v5, Ljava/lang/Iterable;

    .line 104
    .line 105
    .line 106
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v6

    .line 112
    .line 113
    if-eqz v6, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 118
    .line 119
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 120
    .line 121
    if-nez v2, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 125
    move-result v7

    .line 126
    .line 127
    if-eqz v7, :cond_5

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->k()I

    .line 131
    move-result v7

    .line 132
    .line 133
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->d()I

    .line 137
    move-result v8

    .line 138
    .line 139
    .line 140
    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerType;->h(II)Z

    .line 141
    move-result v13

    .line 142
    .line 143
    iget-object v9, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 147
    move-result-wide v10

    .line 148
    .line 149
    iget-object v12, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 150
    const/4 v14, 0x0

    .line 151
    .line 152
    const/16 v15, 0x8

    .line 153
    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    .line 157
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/node/LayoutNode;->D0(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZILjava/lang/Object;)V

    .line 158
    .line 159
    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 160
    .line 161
    .line 162
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    move-result v7

    .line 164
    xor-int/2addr v7, v3

    .line 165
    .line 166
    if-eqz v7, :cond_5

    .line 167
    .line 168
    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 172
    move-result-wide v8

    .line 173
    .line 174
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v8, v9, v6}, Landroidx/compose/ui/input/pointer/HitPathTracker;->a(JLjava/util/List;)V

    .line 178
    .line 179
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitResult:Landroidx/compose/ui/node/HitTestResult;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Landroidx/compose/ui/node/HitTestResult;->clear()V

    .line 183
    goto :goto_2

    .line 184
    .line 185
    :cond_7
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/HitPathTracker;->d()V

    .line 189
    .line 190
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 191
    .line 192
    move/from16 v5, p3

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v0, v5}, Landroidx/compose/ui/input/pointer/HitPathTracker;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 196
    move-result v2

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->c()Z

    .line 200
    move-result v5

    .line 201
    .line 202
    if-eqz v5, :cond_9

    .line 203
    :cond_8
    :goto_3
    move v3, v4

    .line 204
    goto :goto_4

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a()Ljava/util/Map;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    check-cast v0, Ljava/lang/Iterable;

    .line 215
    .line 216
    instance-of v5, v0, Ljava/util/Collection;

    .line 217
    .line 218
    if-eqz v5, :cond_a

    .line 219
    move-object v5, v0

    .line 220
    .line 221
    check-cast v5, Ljava/util/Collection;

    .line 222
    .line 223
    .line 224
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 225
    move-result v5

    .line 226
    .line 227
    if-eqz v5, :cond_a

    .line 228
    goto :goto_3

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    .line 235
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    move-result v5

    .line 237
    .line 238
    if-eqz v5, :cond_8

    .line 239
    .line 240
    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    move-result-object v5

    .line 243
    .line 244
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 245
    .line 246
    .line 247
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->k(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 248
    move-result v6

    .line 249
    .line 250
    if-eqz v6, :cond_b

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 254
    move-result v5

    .line 255
    .line 256
    if-eqz v5, :cond_b

    .line 257
    .line 258
    .line 259
    :goto_4
    invoke-static {v2, v3}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessorKt;->a(ZZ)I

    .line 260
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .line 262
    iput-boolean v4, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    .line 263
    return v0

    .line 264
    .line 265
    :goto_5
    iput-boolean v4, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->isProcessing:Z

    .line 266
    throw v0
.end method

.method public final b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->pointerInputChangeEventProducer:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->a()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->hitPathTracker:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->c()V

    .line 11
    return-void
.end method
