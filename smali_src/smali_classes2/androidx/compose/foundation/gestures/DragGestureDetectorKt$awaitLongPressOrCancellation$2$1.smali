.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Le8/p<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,820:1\n65#2,2:821\n32#2,6:823\n67#2:829\n79#2,2:830\n32#2,6:832\n81#2:838\n79#2,2:839\n32#2,6:841\n81#2:847\n93#2,2:848\n32#2,6:850\n95#2:856\n93#2,2:857\n32#2,6:859\n95#2:865\n*S KotlinDebug\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1\n*L\n759#1:821,2\n759#1:823,6\n759#1:829\n765#1:830,2\n765#1:832,6\n765#1:838\n776#1:839,2\n776#1:841,6\n776#1:847\n780#1:848,2\n780#1:850,6\n780#1:856\n782#1:857,2\n782#1:859,6\n782#1:865\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2$1"
    f = "DragGestureDetector.kt"
    l = {
        0x2f6,
        0x307
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentDown:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $longPress:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/p0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/p0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
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

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/p0;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/p0;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;-><init>(Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
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
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
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
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->label:I

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    if-eq v2, v6, :cond_1

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 20
    .line 21
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 24
    .line 25
    iget-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 28
    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    move-object/from16 v4, p1

    .line 33
    move-object v5, v0

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v1

    .line 44
    .line 45
    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 46
    .line 47
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    move-object/from16 v9, p1

    .line 55
    move-object v8, v7

    .line 56
    move-object v7, v0

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 65
    move-object v8, v0

    .line 66
    move-object v7, v2

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    :goto_0
    if-nez v2, :cond_12

    .line 70
    .line 71
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 72
    .line 73
    iput-object v7, v8, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object v4, v8, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput v2, v8, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 78
    .line 79
    iput v6, v8, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->label:I

    .line 80
    .line 81
    .line 82
    invoke-interface {v7, v9, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->u0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    if-ne v9, v1, :cond_3

    .line 86
    return-object v1

    .line 87
    .line 88
    :cond_3
    move-object/from16 v16, v8

    .line 89
    move-object v8, v7

    .line 90
    .line 91
    move-object/from16 v7, v16

    .line 92
    .line 93
    :goto_1
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 97
    move-result-object v10

    .line 98
    .line 99
    .line 100
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 101
    move-result v11

    .line 102
    const/4 v12, 0x0

    .line 103
    .line 104
    :goto_2
    if-ge v12, v11, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v13

    .line 109
    .line 110
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 111
    .line 112
    .line 113
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 114
    move-result v13

    .line 115
    .line 116
    if-nez v13, :cond_4

    .line 117
    goto :goto_3

    .line 118
    .line 119
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    move v2, v6

    .line 122
    .line 123
    .line 124
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 125
    move-result-object v10

    .line 126
    .line 127
    .line 128
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 129
    move-result v11

    .line 130
    const/4 v12, 0x0

    .line 131
    .line 132
    :goto_4
    if-ge v12, v11, :cond_8

    .line 133
    .line 134
    .line 135
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v13

    .line 137
    .line 138
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 142
    move-result v14

    .line 143
    .line 144
    if-nez v14, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->a()J

    .line 148
    move-result-wide v14

    .line 149
    .line 150
    .line 151
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->i0()J

    .line 152
    move-result-wide v4

    .line 153
    .line 154
    .line 155
    invoke-static {v13, v14, v15, v4, v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 156
    move-result v4

    .line 157
    .line 158
    if-eqz v4, :cond_6

    .line 159
    goto :goto_5

    .line 160
    .line 161
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 162
    const/4 v4, 0x0

    .line 163
    goto :goto_4

    .line 164
    :cond_7
    :goto_5
    move v2, v6

    .line 165
    .line 166
    :cond_8
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 167
    .line 168
    iput-object v8, v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$0:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v9, v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->L$1:Ljava/lang/Object;

    .line 171
    .line 172
    iput v2, v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->I$0:I

    .line 173
    .line 174
    iput v3, v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->label:I

    .line 175
    .line 176
    .line 177
    invoke-interface {v8, v4, v7}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->u0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 178
    move-result-object v4

    .line 179
    .line 180
    if-ne v4, v1, :cond_9

    .line 181
    return-object v1

    .line 182
    :cond_9
    move-object v5, v7

    .line 183
    move-object v7, v9

    .line 184
    .line 185
    :goto_6
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 189
    move-result-object v4

    .line 190
    .line 191
    .line 192
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 193
    move-result v9

    .line 194
    const/4 v10, 0x0

    .line 195
    .line 196
    :goto_7
    if-ge v10, v9, :cond_b

    .line 197
    .line 198
    .line 199
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v11

    .line 201
    .line 202
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 206
    move-result v11

    .line 207
    .line 208
    if-eqz v11, :cond_a

    .line 209
    move v2, v6

    .line 210
    goto :goto_8

    .line 211
    .line 212
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 213
    goto :goto_7

    .line 214
    .line 215
    :cond_b
    :goto_8
    iget-object v4, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/p0;

    .line 216
    .line 217
    iget-object v4, v4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 223
    move-result-wide v9

    .line 224
    .line 225
    .line 226
    invoke-static {v7, v9, v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 227
    move-result v4

    .line 228
    .line 229
    if-nez v4, :cond_e

    .line 230
    .line 231
    iget-object v4, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/p0;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 235
    move-result-object v7

    .line 236
    .line 237
    iget-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/p0;

    .line 238
    .line 239
    .line 240
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 241
    move-result v10

    .line 242
    const/4 v11, 0x0

    .line 243
    .line 244
    :goto_9
    if-ge v11, v10, :cond_d

    .line 245
    .line 246
    .line 247
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v12

    .line 249
    move-object v13, v12

    .line 250
    .line 251
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 255
    move-result-wide v13

    .line 256
    .line 257
    iget-object v15, v9, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 260
    .line 261
    move-object/from16 p1, v7

    .line 262
    .line 263
    .line 264
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 265
    move-result-wide v6

    .line 266
    .line 267
    .line 268
    invoke-static {v13, v14, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->d(JJ)Z

    .line 269
    move-result v6

    .line 270
    .line 271
    if-eqz v6, :cond_c

    .line 272
    goto :goto_a

    .line 273
    .line 274
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 275
    .line 276
    move-object/from16 v7, p1

    .line 277
    const/4 v6, 0x1

    .line 278
    goto :goto_9

    .line 279
    :cond_d
    const/4 v12, 0x0

    .line 280
    .line 281
    :goto_a
    iput-object v12, v4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 282
    goto :goto_d

    .line 283
    .line 284
    .line 285
    :cond_e
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 286
    move-result-object v4

    .line 287
    .line 288
    .line 289
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 290
    move-result v6

    .line 291
    const/4 v7, 0x0

    .line 292
    .line 293
    :goto_b
    if-ge v7, v6, :cond_10

    .line 294
    .line 295
    .line 296
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    move-result-object v9

    .line 298
    move-object v10, v9

    .line 299
    .line 300
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 304
    move-result v10

    .line 305
    .line 306
    if-eqz v10, :cond_f

    .line 307
    goto :goto_c

    .line 308
    .line 309
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 310
    goto :goto_b

    .line 311
    :cond_10
    const/4 v9, 0x0

    .line 312
    .line 313
    :goto_c
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 314
    .line 315
    if-eqz v9, :cond_11

    .line 316
    .line 317
    iget-object v4, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$currentDown:Lkotlin/jvm/internal/p0;

    .line 318
    .line 319
    iput-object v9, v4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 320
    .line 321
    iget-object v4, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2$1;->$longPress:Lkotlin/jvm/internal/p0;

    .line 322
    .line 323
    iput-object v9, v4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 324
    :goto_d
    move-object v7, v8

    .line 325
    :goto_e
    const/4 v4, 0x0

    .line 326
    const/4 v6, 0x1

    .line 327
    move-object v8, v5

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    :cond_11
    move-object v7, v8

    .line 331
    const/4 v2, 0x1

    .line 332
    goto :goto_e

    .line 333
    .line 334
    :cond_12
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 335
    return-object v1
.end method
