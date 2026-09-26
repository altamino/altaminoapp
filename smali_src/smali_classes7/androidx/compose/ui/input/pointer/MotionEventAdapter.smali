.class public final Landroidx/compose/ui/input/pointer/MotionEventAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final canHover:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextId:J

.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousSource:I

.field private previousToolType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseLongArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 25
    const/4 v0, -0x1

    .line 26
    .line 27
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    .line 28
    .line 29
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    .line 30
    return-void
.end method

.method private final a(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    const/4 v3, 0x5

    .line 10
    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    .line 13
    const/16 v3, 0x9

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-gez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 32
    .line 33
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 34
    add-long/2addr v1, v3

    .line 35
    .line 36
    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    move-result v3

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 54
    move-result v4

    .line 55
    .line 56
    if-gez v4, :cond_2

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 59
    .line 60
    iget-wide v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 61
    add-long/2addr v1, v5

    .line 62
    .line 63
    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x3

    .line 72
    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 76
    const/4 v0, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method private final b(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 17
    move-result p1

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    .line 24
    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    :cond_1
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    .line 28
    .line 29
    iput p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    .line 40
    :cond_2
    return-void
.end method

.method private final d(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .locals 23

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
    move/from16 v3, p3

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    move-result v4

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v4}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->f(I)J

    .line 16
    move-result-wide v6

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 24
    move-result v5

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 28
    move-result-wide v4

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    move-result v4

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    move-result v5

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->d(J)J

    .line 46
    move-result-wide v8

    .line 47
    :goto_0
    move-wide v10, v4

    .line 48
    move-wide v12, v8

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v9, 0x1d

    .line 54
    .line 55
    if-lt v8, v9, :cond_1

    .line 56
    .line 57
    sget-object v4, Landroidx/compose/ui/input/pointer/MotionEventHelper;->INSTANCE:Landroidx/compose/ui/input/pointer/MotionEventHelper;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/input/pointer/MotionEventHelper;->a(Landroid/view/MotionEvent;I)J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->d(J)J

    .line 65
    move-result-wide v8

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->n(J)J

    .line 70
    move-result-wide v8

    .line 71
    move-wide v12, v4

    .line 72
    move-wide v10, v8

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    const/4 v4, 0x1

    .line 80
    .line 81
    if-eq v1, v4, :cond_5

    .line 82
    const/4 v4, 0x2

    .line 83
    .line 84
    if-eq v1, v4, :cond_4

    .line 85
    const/4 v4, 0x3

    .line 86
    .line 87
    if-eq v1, v4, :cond_3

    .line 88
    const/4 v4, 0x4

    .line 89
    .line 90
    if-eq v1, v4, :cond_2

    .line 91
    .line 92
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->e()I

    .line 96
    move-result v1

    .line 97
    :goto_2
    move v15, v1

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_2
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->a()I

    .line 104
    move-result v1

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_3
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->b()I

    .line 111
    move-result v1

    .line 112
    goto :goto_2

    .line 113
    .line 114
    :cond_4
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->c()I

    .line 118
    move-result v1

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_5
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->d()I

    .line 125
    move-result v1

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_6
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->e()I

    .line 132
    move-result v1

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 142
    move-result v4

    .line 143
    const/4 v8, 0x0

    .line 144
    .line 145
    :goto_4
    if-ge v8, v4, :cond_8

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    .line 149
    move-result v9

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    .line 153
    move-result v14

    .line 154
    .line 155
    .line 156
    invoke-static {v9}, Ljava/lang/Float;->isInfinite(F)Z

    .line 157
    move-result v16

    .line 158
    .line 159
    if-nez v16, :cond_7

    .line 160
    .line 161
    .line 162
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 163
    move-result v16

    .line 164
    .line 165
    if-nez v16, :cond_7

    .line 166
    .line 167
    .line 168
    invoke-static {v14}, Ljava/lang/Float;->isInfinite(F)Z

    .line 169
    move-result v16

    .line 170
    .line 171
    if-nez v16, :cond_7

    .line 172
    .line 173
    .line 174
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 175
    move-result v16

    .line 176
    .line 177
    if-nez v16, :cond_7

    .line 178
    .line 179
    new-instance v5, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 183
    move-result-wide v18

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v14}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 187
    move-result-wide v20

    .line 188
    .line 189
    const/16 v22, 0x0

    .line 190
    .line 191
    move-object/from16 v17, v5

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v17 .. v22}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJLkotlin/jvm/internal/k;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 200
    goto :goto_4

    .line 201
    .line 202
    .line 203
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 204
    move-result v4

    .line 205
    .line 206
    const/16 v5, 0x8

    .line 207
    .line 208
    if-ne v4, v5, :cond_9

    .line 209
    .line 210
    const/16 v4, 0xa

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 214
    move-result v4

    .line 215
    .line 216
    const/16 v5, 0x9

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 220
    move-result v5

    .line 221
    neg-float v5, v5

    .line 222
    .line 223
    .line 224
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 225
    move-result-wide v4

    .line 226
    .line 227
    :goto_5
    move-wide/from16 v18, v4

    .line 228
    goto :goto_6

    .line 229
    .line 230
    :cond_9
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 234
    move-result-wide v4

    .line 235
    goto :goto_5

    .line 236
    .line 237
    :goto_6
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 241
    move-result v3

    .line 242
    const/4 v5, 0x0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 246
    move-result v16

    .line 247
    .line 248
    new-instance v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 252
    move-result-wide v8

    .line 253
    .line 254
    const/16 v20, 0x0

    .line 255
    move-object v5, v3

    .line 256
    .line 257
    move/from16 v14, p4

    .line 258
    .line 259
    move-object/from16 v17, v1

    .line 260
    .line 261
    .line 262
    invoke-direct/range {v5 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZIZLjava/util/List;JLkotlin/jvm/internal/k;)V

    .line 263
    return-object v3
.end method

.method private final f(I)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    add-long/2addr v2, v0

    .line 21
    .line 22
    iput-wide v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerId;->b(J)J

    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method private final g(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    if-ne v3, p2, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v1
.end method

.method private final h(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    const/4 v2, 0x6

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 48
    move-result v2

    .line 49
    .line 50
    if-le v0, v2, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 56
    move-result v0

    .line 57
    sub-int/2addr v0, v1

    .line 58
    :goto_1
    const/4 v1, -0x1

    .line 59
    .line 60
    if-ge v1, v0, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->g(Landroid/view/MotionEvent;I)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 83
    .line 84
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PositionCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "motionEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "positionCalculator"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b(Landroid/view/MotionEvent;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a(Landroid/view/MotionEvent;)V

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    const/4 v1, 0x7

    .line 43
    .line 44
    if-eq v0, v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x9

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v1, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    move v1, v3

    .line 53
    .line 54
    :goto_1
    const/16 v4, 0x8

    .line 55
    .line 56
    if-ne v0, v4, :cond_3

    .line 57
    move v4, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v4, v2

    .line 60
    .line 61
    :goto_2
    if-eqz v1, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 65
    move-result v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 69
    move-result v5

    .line 70
    .line 71
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 75
    .line 76
    :cond_4
    if-eq v0, v3, :cond_6

    .line 77
    const/4 v5, 0x6

    .line 78
    .line 79
    if-eq v0, v5, :cond_5

    .line 80
    const/4 v0, -0x1

    .line 81
    goto :goto_3

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 85
    move-result v0

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    move v0, v2

    .line 88
    .line 89
    :goto_3
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 90
    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 96
    move-result v5

    .line 97
    move v6, v2

    .line 98
    .line 99
    :goto_4
    if-ge v6, v5, :cond_9

    .line 100
    .line 101
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 102
    .line 103
    if-nez v1, :cond_8

    .line 104
    .line 105
    if-eq v6, v0, :cond_8

    .line 106
    .line 107
    if-eqz v4, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 111
    move-result v8

    .line 112
    .line 113
    if-eqz v8, :cond_8

    .line 114
    :cond_7
    move v8, v3

    .line 115
    goto :goto_5

    .line 116
    :cond_8
    move v8, v2

    .line 117
    .line 118
    .line 119
    :goto_5
    invoke-direct {p0, p2, p1, v6, v8}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->d(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 120
    move-result-object v8

    .line 121
    .line 122
    .line 123
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    add-int/lit8 v6, v6, 0x1

    .line 126
    goto :goto_4

    .line 127
    .line 128
    .line 129
    :cond_9
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->h(Landroid/view/MotionEvent;)V

    .line 130
    .line 131
    new-instance p2, Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 135
    move-result-wide v0

    .line 136
    .line 137
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 138
    .line 139
    .line 140
    invoke-direct {p2, v0, v1, v2, p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;-><init>(JLjava/util/List;Landroid/view/MotionEvent;)V

    .line 141
    return-object p2
.end method

.method public final e(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 11
    return-void
.end method
