.class final Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nTransformable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,178:1\n79#2,2:179\n32#2,6:181\n81#2:187\n32#2,6:188\n79#2,2:194\n32#2,6:196\n81#2:202\n*S KotlinDebug\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1\n*L\n104#1:179,2\n104#1:181,6\n104#1:187\n137#1:188,6\n144#1:194,2\n144#1:196,6\n144#1:202\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.TransformableKt$detectZoom$3$1"
    f = "Transformable.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

.field final synthetic $lockedToPanZoom:Lkotlin/jvm/internal/k0;

.field final synthetic $pan:Lkotlin/jvm/internal/o0;

.field final synthetic $panZoomLock:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pastTouchSlop:Lkotlin/jvm/internal/k0;

.field final synthetic $rotation:Lkotlin/jvm/internal/m0;

.field final synthetic $touchSlop:F

.field final synthetic $zoom:Lkotlin/jvm/internal/m0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/o0;FLkotlin/jvm/internal/k0;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/TransformScope;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k0;",
            "Lkotlin/jvm/internal/m0;",
            "Lkotlin/jvm/internal/m0;",
            "Lkotlin/jvm/internal/o0;",
            "F",
            "Lkotlin/jvm/internal/k0;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/k0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/m0;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/m0;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/o0;

    iput p5, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    iput-object p6, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/k0;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$panZoomLock:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 11
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

    new-instance v10, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/k0;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/m0;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/m0;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/o0;

    iget v5, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    iget-object v6, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/k0;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$panZoomLock:Landroidx/compose/runtime/State;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;-><init>(Lkotlin/jvm/internal/k0;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/o0;FLkotlin/jvm/internal/k0;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/TransformScope;Lkotlin/coroutines/d;)V

    iput-object p1, v10, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    return-object v10
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
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
    iget v2, v0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->label:I

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 18
    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    move-object/from16 v5, p1

    .line 23
    move-object v4, v0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 40
    move-object v4, v0

    .line 41
    .line 42
    :goto_0
    iput-object v2, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    iput v3, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->label:I

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v5, v4, v3, v5}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    if-ne v5, v1, :cond_2

    .line 52
    return-object v1

    .line 53
    .line 54
    :cond_2
    :goto_1
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 62
    move-result v7

    .line 63
    const/4 v8, 0x0

    .line 64
    move v9, v8

    .line 65
    .line 66
    :goto_2
    if-ge v9, v7, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v10

    .line 71
    .line 72
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 76
    move-result v10

    .line 77
    .line 78
    if-eqz v10, :cond_3

    .line 79
    move v6, v3

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move v6, v8

    .line 85
    .line 86
    :goto_3
    if-nez v6, :cond_c

    .line 87
    .line 88
    .line 89
    invoke-static {v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    .line 90
    move-result v7

    .line 91
    .line 92
    .line 93
    invoke-static {v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    .line 94
    move-result v9

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->d(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    .line 98
    move-result-wide v10

    .line 99
    .line 100
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/k0;

    .line 101
    .line 102
    iget-boolean v12, v12, Lkotlin/jvm/internal/k0;->element:Z

    .line 103
    .line 104
    if-nez v12, :cond_7

    .line 105
    .line 106
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/m0;

    .line 107
    .line 108
    iget v13, v12, Lkotlin/jvm/internal/m0;->element:F

    .line 109
    mul-float/2addr v13, v7

    .line 110
    .line 111
    iput v13, v12, Lkotlin/jvm/internal/m0;->element:F

    .line 112
    .line 113
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/m0;

    .line 114
    .line 115
    iget v13, v12, Lkotlin/jvm/internal/m0;->element:F

    .line 116
    add-float/2addr v13, v9

    .line 117
    .line 118
    iput v13, v12, Lkotlin/jvm/internal/m0;->element:F

    .line 119
    .line 120
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/o0;

    .line 121
    .line 122
    iget-wide v13, v12, Lkotlin/jvm/internal/o0;->element:J

    .line 123
    .line 124
    .line 125
    invoke-static {v13, v14, v10, v11}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 126
    move-result-wide v13

    .line 127
    .line 128
    iput-wide v13, v12, Lkotlin/jvm/internal/o0;->element:J

    .line 129
    .line 130
    .line 131
    invoke-static {v5, v8}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 132
    move-result v12

    .line 133
    int-to-float v13, v3

    .line 134
    .line 135
    iget-object v14, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$zoom:Lkotlin/jvm/internal/m0;

    .line 136
    .line 137
    iget v14, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 138
    sub-float/2addr v13, v14

    .line 139
    .line 140
    .line 141
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 142
    move-result v13

    .line 143
    mul-float/2addr v13, v12

    .line 144
    .line 145
    iget-object v14, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$rotation:Lkotlin/jvm/internal/m0;

    .line 146
    .line 147
    iget v14, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 148
    .line 149
    .line 150
    const v15, 0x40490fdb    # (float)Math.PI

    .line 151
    mul-float/2addr v14, v15

    .line 152
    mul-float/2addr v14, v12

    .line 153
    .line 154
    const/high16 v12, 0x43340000    # 180.0f

    .line 155
    div-float/2addr v14, v12

    .line 156
    .line 157
    .line 158
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 159
    move-result v12

    .line 160
    .line 161
    iget-object v14, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pan:Lkotlin/jvm/internal/o0;

    .line 162
    .line 163
    iget-wide v14, v14, Lkotlin/jvm/internal/o0;->element:J

    .line 164
    .line 165
    .line 166
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->k(J)F

    .line 167
    move-result v14

    .line 168
    .line 169
    iget v15, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    .line 170
    .line 171
    cmpl-float v13, v13, v15

    .line 172
    .line 173
    if-gtz v13, :cond_5

    .line 174
    .line 175
    cmpl-float v13, v12, v15

    .line 176
    .line 177
    if-gtz v13, :cond_5

    .line 178
    .line 179
    cmpl-float v13, v14, v15

    .line 180
    .line 181
    if-lez v13, :cond_7

    .line 182
    .line 183
    :cond_5
    iget-object v13, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/k0;

    .line 184
    .line 185
    iput-boolean v3, v13, Lkotlin/jvm/internal/k0;->element:Z

    .line 186
    .line 187
    iget-object v13, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/k0;

    .line 188
    .line 189
    iget-object v14, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$panZoomLock:Landroidx/compose/runtime/State;

    .line 190
    .line 191
    .line 192
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 193
    move-result-object v14

    .line 194
    .line 195
    check-cast v14, Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 199
    move-result v14

    .line 200
    .line 201
    if-eqz v14, :cond_6

    .line 202
    .line 203
    iget v14, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$touchSlop:F

    .line 204
    .line 205
    cmpg-float v12, v12, v14

    .line 206
    .line 207
    if-gez v12, :cond_6

    .line 208
    move v12, v3

    .line 209
    goto :goto_4

    .line 210
    :cond_6
    move v12, v8

    .line 211
    .line 212
    :goto_4
    iput-boolean v12, v13, Lkotlin/jvm/internal/k0;->element:Z

    .line 213
    .line 214
    :cond_7
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$pastTouchSlop:Lkotlin/jvm/internal/k0;

    .line 215
    .line 216
    iget-boolean v12, v12, Lkotlin/jvm/internal/k0;->element:Z

    .line 217
    .line 218
    if-eqz v12, :cond_c

    .line 219
    .line 220
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$lockedToPanZoom:Lkotlin/jvm/internal/k0;

    .line 221
    .line 222
    iget-boolean v12, v12, Lkotlin/jvm/internal/k0;->element:Z

    .line 223
    const/4 v13, 0x0

    .line 224
    .line 225
    if-eqz v12, :cond_8

    .line 226
    move v9, v13

    .line 227
    .line 228
    :cond_8
    cmpg-float v12, v9, v13

    .line 229
    .line 230
    if-nez v12, :cond_9

    .line 231
    .line 232
    const/high16 v12, 0x3f800000    # 1.0f

    .line 233
    .line 234
    cmpg-float v12, v7, v12

    .line 235
    .line 236
    if-nez v12, :cond_9

    .line 237
    .line 238
    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 242
    move-result-wide v12

    .line 243
    .line 244
    .line 245
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 246
    move-result v12

    .line 247
    .line 248
    if-nez v12, :cond_a

    .line 249
    .line 250
    :cond_9
    iget-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 251
    .line 252
    .line 253
    invoke-interface {v12, v7, v10, v11, v9}, Landroidx/compose/foundation/gestures/TransformScope;->a(FJF)V

    .line 254
    .line 255
    .line 256
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 257
    move-result-object v7

    .line 258
    .line 259
    .line 260
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 261
    move-result v9

    .line 262
    move v10, v8

    .line 263
    .line 264
    :goto_5
    if-ge v10, v9, :cond_c

    .line 265
    .line 266
    .line 267
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object v11

    .line 269
    .line 270
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 271
    .line 272
    .line 273
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->j(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 274
    move-result v12

    .line 275
    .line 276
    if-eqz v12, :cond_b

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 280
    .line 281
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 282
    goto :goto_5

    .line 283
    .line 284
    :cond_c
    if-nez v6, :cond_e

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 288
    move-result-object v5

    .line 289
    .line 290
    .line 291
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 292
    move-result v6

    .line 293
    .line 294
    :goto_6
    if-ge v8, v6, :cond_e

    .line 295
    .line 296
    .line 297
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v7

    .line 299
    .line 300
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 304
    move-result v7

    .line 305
    .line 306
    if-eqz v7, :cond_d

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 311
    goto :goto_6

    .line 312
    .line 313
    :cond_e
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 314
    return-object v1
.end method
