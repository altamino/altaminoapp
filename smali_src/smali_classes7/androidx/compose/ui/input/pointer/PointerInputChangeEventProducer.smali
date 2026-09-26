.class final Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInputEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputChangeEventProducer\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,232:1\n32#2,6:233\n*S KotlinDebug\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputChangeEventProducer\n*L\n143#1:233,6\n*E\n"
.end annotation


# instance fields
.field private final previousPointerInputData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public final b(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 34
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PositionCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v3, "pointerInputEvent"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "positionCalculator"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->b()Ljava/util/List;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->b()Ljava/util/List;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 37
    move-result v5

    .line 38
    const/4 v7, 0x0

    .line 39
    .line 40
    :goto_0
    if-ge v7, v5, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v8

    .line 45
    .line 46
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 47
    .line 48
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->c()J

    .line 52
    move-result-wide v10

    .line 53
    .line 54
    .line 55
    invoke-static {v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 56
    move-result-object v10

    .line 57
    .line 58
    .line 59
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v9

    .line 61
    .line 62
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 63
    .line 64
    if-nez v9, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->i()J

    .line 68
    move-result-wide v9

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->e()J

    .line 72
    move-result-wide v11

    .line 73
    .line 74
    move-wide/from16 v23, v9

    .line 75
    .line 76
    move-wide/from16 v25, v11

    .line 77
    .line 78
    const/16 v27, 0x0

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->c()J

    .line 83
    move-result-wide v10

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->a()Z

    .line 87
    move-result v12

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->b()J

    .line 91
    move-result-wide v13

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v13, v14}, Landroidx/compose/ui/input/pointer/PositionCalculator;->d(J)J

    .line 95
    move-result-wide v13

    .line 96
    .line 97
    move-wide/from16 v23, v10

    .line 98
    .line 99
    move/from16 v27, v12

    .line 100
    .line 101
    move-wide/from16 v25, v13

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->c()J

    .line 105
    move-result-wide v9

    .line 106
    .line 107
    .line 108
    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 109
    move-result-object v9

    .line 110
    .line 111
    new-instance v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 112
    move-object v15, v10

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->c()J

    .line 116
    move-result-wide v16

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->i()J

    .line 120
    move-result-wide v18

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->e()J

    .line 124
    move-result-wide v20

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->a()Z

    .line 128
    move-result v22

    .line 129
    .line 130
    const/16 v28, 0x0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->h()I

    .line 134
    move-result v29

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->b()Ljava/util/List;

    .line 138
    move-result-object v30

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->g()J

    .line 142
    move-result-wide v31

    .line 143
    .line 144
    const/16 v33, 0x0

    .line 145
    .line 146
    .line 147
    invoke-direct/range {v15 .. v33}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/k;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->a()Z

    .line 154
    move-result v9

    .line 155
    .line 156
    if-eqz v9, :cond_1

    .line 157
    .line 158
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->c()J

    .line 162
    move-result-wide v10

    .line 163
    .line 164
    .line 165
    invoke-static {v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 166
    move-result-object v10

    .line 167
    .line 168
    new-instance v14, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->i()J

    .line 172
    move-result-wide v12

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->f()J

    .line 176
    move-result-wide v15

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->a()Z

    .line 180
    move-result v17

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->h()I

    .line 184
    move-result v8

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    move-object v11, v14

    .line 188
    move-object v6, v14

    .line 189
    move-wide v14, v15

    .line 190
    .line 191
    move/from16 v16, v17

    .line 192
    .line 193
    move/from16 v17, v8

    .line 194
    .line 195
    .line 196
    invoke-direct/range {v11 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZILkotlin/jvm/internal/k;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    goto :goto_2

    .line 201
    .line 202
    :cond_1
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->c()J

    .line 206
    move-result-wide v8

    .line 207
    .line 208
    .line 209
    invoke-static {v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 210
    move-result-object v8

    .line 211
    .line 212
    .line 213
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_2
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 220
    .line 221
    .line 222
    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    .line 223
    return-object v2
.end method
