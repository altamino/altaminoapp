.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/Node\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,534:1\n482#1,5:538\n489#1:554\n482#1,5:555\n489#1:571\n1182#2:535\n1161#2,2:536\n460#3,11:543\n460#3,11:560\n48#3:578\n523#3:579\n460#3,11:589\n32#4,6:572\n93#4,2:580\n32#4,6:582\n95#4:588\n32#4,6:600\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/Node\n*L\n288#1:538,5\n288#1:554\n322#1:555,5\n322#1:571\n259#1:535\n259#1:536,2\n296#1:543,11\n330#1:560,11\n403#1:578\n404#1:579\n500#1:589,11\n373#1:572,6\n411#1:580,2\n411#1:582,6\n411#1:588\n515#1:600,6\n*E\n"
.end annotation


# instance fields
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasExited:Z

.field private isIn:Z

.field private pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pointerIds:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final relevantChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private wasIn:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputFilter;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "pointerInputFilter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    new-array v0, v0, [Landroidx/compose/ui/input/pointer/PointerId;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 30
    const/4 p1, 0x1

    .line 31
    .line 32
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 35
    return-void
.end method

.method private final i()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    return-void
.end method

.method private final l(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    .line 34
    :goto_0
    if-ge v3, v1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    .line 51
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    .line 54
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 58
    move-result-wide v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 62
    move-result-wide v4

    .line 63
    .line 64
    .line 65
    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    return v0

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return v2

    .line 74
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public a(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 30
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    const-string v4, "changes"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v4, "parentCoordinates"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v4, "internalPointerEvent"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->a(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 27
    move-result v4

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x1

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    return v6

    .line 38
    .line 39
    :cond_0
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->u()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 46
    .line 47
    .line 48
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x0

    .line 59
    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    check-cast v7, Ljava/util/Map$Entry;

    .line 67
    .line 68
    .line 69
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v9

    .line 71
    .line 72
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerId;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerId;->g()J

    .line 76
    move-result-wide v9

    .line 77
    .line 78
    .line 79
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    move-result-object v7

    .line 81
    move-object v11, v7

    .line 82
    .line 83
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 84
    .line 85
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 86
    .line 87
    .line 88
    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 89
    move-result-object v12

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/collection/MutableVector;->i(Ljava/lang/Object;)Z

    .line 93
    move-result v7

    .line 94
    .line 95
    if-eqz v7, :cond_1

    .line 96
    .line 97
    new-instance v7, Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->d()Ljava/util/List;

    .line 104
    move-result-object v12

    .line 105
    .line 106
    .line 107
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 108
    move-result v13

    .line 109
    .line 110
    :goto_1
    if-ge v8, v13, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v14

    .line 115
    .line 116
    check-cast v14, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 117
    .line 118
    new-instance v15, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/HistoricalChange;->b()J

    .line 122
    move-result-wide v16

    .line 123
    .line 124
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 128
    .line 129
    move-object/from16 v21, v12

    .line 130
    .line 131
    move/from16 v22, v13

    .line 132
    .line 133
    .line 134
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/HistoricalChange;->a()J

    .line 135
    move-result-wide v12

    .line 136
    .line 137
    .line 138
    invoke-interface {v6, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 139
    move-result-wide v18

    .line 140
    .line 141
    const/16 v20, 0x0

    .line 142
    move-object v6, v15

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJLkotlin/jvm/internal/k;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    add-int/lit8 v8, v8, 0x1

    .line 151
    .line 152
    move-object/from16 v12, v21

    .line 153
    .line 154
    move/from16 v13, v22

    .line 155
    const/4 v6, 0x1

    .line 156
    goto :goto_1

    .line 157
    .line 158
    :cond_2
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 162
    move-result-object v8

    .line 163
    .line 164
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 165
    .line 166
    .line 167
    invoke-static {v9}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->h()J

    .line 171
    move-result-wide v12

    .line 172
    .line 173
    .line 174
    invoke-interface {v9, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 175
    move-result-wide v21

    .line 176
    .line 177
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 178
    .line 179
    .line 180
    invoke-static {v9}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 184
    move-result-wide v12

    .line 185
    .line 186
    .line 187
    invoke-interface {v9, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 188
    move-result-wide v16

    .line 189
    .line 190
    const-wide/16 v12, 0x0

    .line 191
    .line 192
    const-wide/16 v14, 0x0

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    const-wide/16 v19, 0x0

    .line 197
    .line 198
    const/16 v23, 0x0

    .line 199
    .line 200
    const/16 v24, 0x0

    .line 201
    .line 202
    const-wide/16 v26, 0x0

    .line 203
    .line 204
    const/16 v28, 0x2db

    .line 205
    .line 206
    const/16 v29, 0x0

    .line 207
    .line 208
    move-object/from16 v25, v7

    .line 209
    .line 210
    .line 211
    invoke-static/range {v11 .. v29}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 212
    move-result-object v7

    .line 213
    .line 214
    .line 215
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v6, 0x1

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_3
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 221
    .line 222
    .line 223
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 224
    move-result v2

    .line 225
    .line 226
    if-eqz v2, :cond_4

    .line 227
    .line 228
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 239
    const/4 v2, 0x1

    .line 240
    return v2

    .line 241
    :cond_4
    const/4 v2, 0x1

    .line 242
    .line 243
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 247
    move-result v5

    .line 248
    sub-int/2addr v5, v2

    .line 249
    :goto_2
    const/4 v2, -0x1

    .line 250
    .line 251
    if-ge v2, v5, :cond_6

    .line 252
    .line 253
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 257
    move-result-object v2

    .line 258
    .line 259
    aget-object v2, v2, v5

    .line 260
    .line 261
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerId;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerId;->g()J

    .line 265
    move-result-wide v6

    .line 266
    .line 267
    .line 268
    invoke-static {v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 269
    move-result-object v2

    .line 270
    .line 271
    .line 272
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 273
    move-result v2

    .line 274
    .line 275
    if-nez v2, :cond_5

    .line 276
    .line 277
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;->v(I)Ljava/lang/Object;

    .line 281
    .line 282
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 283
    goto :goto_2

    .line 284
    .line 285
    :cond_6
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 286
    .line 287
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 288
    .line 289
    .line 290
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 291
    move-result-object v2

    .line 292
    .line 293
    check-cast v2, Ljava/lang/Iterable;

    .line 294
    .line 295
    .line 296
    invoke-static {v2}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 297
    move-result-object v2

    .line 298
    .line 299
    .line 300
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 304
    move-result-object v2

    .line 305
    .line 306
    .line 307
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 308
    move-result v5

    .line 309
    move v6, v8

    .line 310
    .line 311
    :goto_3
    if-ge v6, v5, :cond_8

    .line 312
    .line 313
    .line 314
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object v7

    .line 316
    move-object v9, v7

    .line 317
    .line 318
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 322
    move-result-wide v9

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v9, v10}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->d(J)Z

    .line 326
    move-result v9

    .line 327
    .line 328
    if-eqz v9, :cond_7

    .line 329
    goto :goto_4

    .line 330
    .line 331
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 332
    goto :goto_3

    .line 333
    :cond_8
    const/4 v7, 0x0

    .line 334
    .line 335
    :goto_4
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 336
    .line 337
    if-eqz v7, :cond_10

    .line 338
    .line 339
    if-nez p4, :cond_a

    .line 340
    .line 341
    iput-boolean v8, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 342
    :cond_9
    const/4 v3, 0x1

    .line 343
    goto :goto_5

    .line 344
    .line 345
    :cond_a
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 346
    .line 347
    if-nez v2, :cond_9

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 351
    move-result v2

    .line 352
    .line 353
    if-nez v2, :cond_b

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->i()Z

    .line 357
    move-result v2

    .line 358
    .line 359
    if-eqz v2, :cond_9

    .line 360
    .line 361
    :cond_b
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 362
    .line 363
    .line 364
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 368
    move-result-wide v2

    .line 369
    .line 370
    .line 371
    invoke-static {v7, v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    .line 372
    move-result v2

    .line 373
    const/4 v3, 0x1

    .line 374
    xor-int/2addr v2, v3

    .line 375
    .line 376
    iput-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 377
    .line 378
    :goto_5
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 379
    .line 380
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 381
    .line 382
    if-eq v2, v5, :cond_e

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 386
    move-result v2

    .line 387
    .line 388
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->c()I

    .line 392
    move-result v6

    .line 393
    .line 394
    .line 395
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 396
    move-result v2

    .line 397
    .line 398
    if-nez v2, :cond_c

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 402
    move-result v2

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->a()I

    .line 406
    move-result v6

    .line 407
    .line 408
    .line 409
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 410
    move-result v2

    .line 411
    .line 412
    if-nez v2, :cond_c

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 416
    move-result v2

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->b()I

    .line 420
    move-result v6

    .line 421
    .line 422
    .line 423
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 424
    move-result v2

    .line 425
    .line 426
    if-eqz v2, :cond_e

    .line 427
    .line 428
    :cond_c
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 429
    .line 430
    if-eqz v2, :cond_d

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->a()I

    .line 434
    move-result v2

    .line 435
    goto :goto_6

    .line 436
    .line 437
    .line 438
    :cond_d
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->b()I

    .line 439
    move-result v2

    .line 440
    .line 441
    .line 442
    :goto_6
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->g(I)V

    .line 443
    goto :goto_7

    .line 444
    .line 445
    .line 446
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 447
    move-result v2

    .line 448
    .line 449
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->a()I

    .line 453
    move-result v6

    .line 454
    .line 455
    .line 456
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 457
    move-result v2

    .line 458
    .line 459
    if-eqz v2, :cond_f

    .line 460
    .line 461
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 462
    .line 463
    if-eqz v2, :cond_f

    .line 464
    .line 465
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 466
    .line 467
    if-nez v2, :cond_f

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->c()I

    .line 471
    move-result v2

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->g(I)V

    .line 475
    goto :goto_7

    .line 476
    .line 477
    .line 478
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 479
    move-result v2

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->b()I

    .line 483
    move-result v6

    .line 484
    .line 485
    .line 486
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 487
    move-result v2

    .line 488
    .line 489
    if-eqz v2, :cond_11

    .line 490
    .line 491
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 492
    .line 493
    if-eqz v2, :cond_11

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 497
    move-result v2

    .line 498
    .line 499
    if-eqz v2, :cond_11

    .line 500
    .line 501
    .line 502
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->c()I

    .line 503
    move-result v2

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->g(I)V

    .line 507
    goto :goto_7

    .line 508
    :cond_10
    const/4 v3, 0x1

    .line 509
    .line 510
    :cond_11
    :goto_7
    if-nez v4, :cond_13

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 514
    move-result v2

    .line 515
    .line 516
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->c()I

    .line 520
    move-result v4

    .line 521
    .line 522
    .line 523
    invoke-static {v2, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 524
    move-result v2

    .line 525
    .line 526
    if-eqz v2, :cond_13

    .line 527
    .line 528
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 529
    .line 530
    .line 531
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/input/pointer/Node;->l(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 532
    move-result v2

    .line 533
    .line 534
    if-eqz v2, :cond_12

    .line 535
    goto :goto_8

    .line 536
    :cond_12
    move v6, v8

    .line 537
    goto :goto_9

    .line 538
    :cond_13
    :goto_8
    move v6, v3

    .line 539
    .line 540
    :goto_9
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 541
    return v6
.end method

.method public b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "internalPointerEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    .line 29
    :goto_0
    if-ge v4, v2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 45
    move-result-wide v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v6, v7}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->d(J)Z

    .line 49
    move-result v6

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    iget-boolean v6, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 54
    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    :cond_1
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 61
    move-result-wide v7

    .line 62
    .line 63
    .line 64
    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 69
    .line 70
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->f()I

    .line 77
    move-result p1

    .line 78
    .line 79
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->b()I

    .line 83
    move-result v0

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->j(II)Z

    .line 87
    move-result p1

    .line 88
    .line 89
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 90
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    :cond_0
    aget-object v3, v0, v2

    .line 18
    .line 19
    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/Node;->d()V

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    if-lt v2, v1, :cond_0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->I()V

    .line 32
    return-void
.end method

.method public e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 6
    .param p1    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "internalPointerEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 41
    .line 42
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0, v5, v2, v3}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->U(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x1

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 62
    move-result v3

    .line 63
    .line 64
    if-lez v3, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    :cond_2
    aget-object v4, v0, v1

    .line 71
    .line 72
    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p1}, Landroidx/compose/ui/input/pointer/Node;->e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    .line 76
    add-int/2addr v1, v2

    .line 77
    .line 78
    if-lt v1, v3, :cond_2

    .line 79
    :cond_3
    move v1, v2

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/Node;->i()V

    .line 86
    return v1
.end method

.method public f(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "changes"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "parentCoordinates"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "internalPointerEvent"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 51
    .line 52
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1, v3, v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->U(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x1

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 72
    move-result v4

    .line 73
    .line 74
    if-lez v4, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    :cond_2
    aget-object v5, v2, p2

    .line 81
    .line 82
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 83
    .line 84
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 85
    .line 86
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 87
    .line 88
    .line 89
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6, v7, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->f(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 93
    add-int/2addr p2, v3

    .line 94
    .line 95
    if-lt p2, v4, :cond_2

    .line 96
    .line 97
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 101
    move-result p2

    .line 102
    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 106
    .line 107
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->U(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 111
    :cond_4
    move p2, v3

    .line 112
    :goto_0
    return p2
.end method

.method public final j()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/input/pointer/PointerInputFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Node(pointerInputFilter="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", children="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, ", pointerIds="

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const/16 v1, 0x29

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
