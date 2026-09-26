.class final Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1"
    f = "Slider.kt"
    l = {
        0x3be,
        0x3c8,
        0x3db
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/o0;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isRtl:Z

.field final synthetic $maxPx:F

.field final synthetic $onDrag:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/State;Lkotlinx/coroutines/o0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    iput p2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$maxPx:F

    iput-object p3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iput-object p4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    iput-object p6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

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

    new-instance v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;

    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    iget v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$maxPx:F

    iget-object v3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iget-object v4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    iget-object v6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    iget-object v7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iget-object v8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;-><init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/State;Lkotlinx/coroutines/o0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput-object p1, v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    iget v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    if-eq v2, v7, :cond_2

    .line 18
    .line 19
    if-eq v2, v4, :cond_1

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lkotlin/jvm/internal/k0;

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    move-object/from16 v3, p1

    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v1

    .line 45
    .line 46
    :cond_1
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$4:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lkotlin/jvm/internal/k0;

    .line 49
    .line 50
    iget-object v4, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Lkotlin/jvm/internal/m0;

    .line 53
    .line 54
    iget-object v8, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v8, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 57
    .line 58
    iget-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 61
    .line 62
    iget-object v10, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 65
    .line 66
    .line 67
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    move-object v11, v10

    .line 69
    move-object v10, v9

    .line 70
    move-object v9, v4

    .line 71
    .line 72
    move-object/from16 v4, p1

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_2
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 79
    .line 80
    .line 81
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    move-object/from16 v8, p1

    .line 84
    :cond_3
    move-object v10, v2

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 93
    .line 94
    iput-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput v7, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v6, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->d(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 100
    move-result-object v8

    .line 101
    .line 102
    if-ne v8, v1, :cond_3

    .line 103
    return-object v1

    .line 104
    :goto_0
    move-object v9, v8

    .line 105
    .line 106
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 107
    .line 108
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 109
    .line 110
    .line 111
    invoke-direct {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 112
    .line 113
    new-instance v8, Lkotlin/jvm/internal/m0;

    .line 114
    .line 115
    .line 116
    invoke-direct {v8}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 117
    .line 118
    iget-boolean v11, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 119
    .line 120
    if-eqz v11, :cond_5

    .line 121
    .line 122
    iget v11, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$maxPx:F

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 126
    move-result-wide v12

    .line 127
    .line 128
    .line 129
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 130
    move-result v12

    .line 131
    sub-float/2addr v11, v12

    .line 132
    goto :goto_1

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 136
    move-result-wide v11

    .line 137
    .line 138
    .line 139
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 140
    move-result v11

    .line 141
    .line 142
    :goto_1
    iput v11, v8, Lkotlin/jvm/internal/m0;->element:F

    .line 143
    .line 144
    iget-object v12, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v12, v11}, Landroidx/compose/material/RangeSliderLogic;->c(F)I

    .line 148
    move-result v11

    .line 149
    .line 150
    new-instance v12, Lkotlin/jvm/internal/k0;

    .line 151
    .line 152
    .line 153
    invoke-direct {v12}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 154
    .line 155
    if-eqz v11, :cond_7

    .line 156
    .line 157
    if-gez v11, :cond_6

    .line 158
    :goto_2
    move v11, v7

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    move v11, v6

    .line 161
    goto :goto_3

    .line 162
    .line 163
    :cond_7
    iget-object v11, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 164
    .line 165
    .line 166
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 167
    move-result-object v11

    .line 168
    .line 169
    check-cast v11, Ljava/lang/Number;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 173
    move-result v11

    .line 174
    .line 175
    iget v13, v8, Lkotlin/jvm/internal/m0;->element:F

    .line 176
    .line 177
    cmpl-float v11, v11, v13

    .line 178
    .line 179
    if-lez v11, :cond_6

    .line 180
    goto :goto_2

    .line 181
    .line 182
    :goto_3
    iput-boolean v11, v12, Lkotlin/jvm/internal/k0;->element:Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 186
    move-result-wide v13

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->k()I

    .line 190
    move-result v11

    .line 191
    .line 192
    iput-object v10, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 195
    .line 196
    iput-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$2:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v8, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$3:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v12, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$4:Ljava/lang/Object;

    .line 201
    .line 202
    iput v4, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 203
    .line 204
    .line 205
    invoke-static {v10, v13, v14, v11, v0}, Landroidx/compose/material/SliderKt;->n(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 206
    move-result-object v4

    .line 207
    .line 208
    if-ne v4, v1, :cond_8

    .line 209
    return-object v1

    .line 210
    :cond_8
    move-object v11, v10

    .line 211
    move-object v10, v9

    .line 212
    move-object v9, v8

    .line 213
    move-object v8, v2

    .line 214
    move-object v2, v12

    .line 215
    .line 216
    :goto_4
    check-cast v4, Lw7/u;

    .line 217
    .line 218
    if-eqz v4, :cond_b

    .line 219
    .line 220
    iget-object v12, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    .line 221
    .line 222
    iget-object v13, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 223
    .line 224
    iget-boolean v14, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 225
    .line 226
    .line 227
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 228
    move-result-object v15

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->k()I

    .line 232
    move-result v6

    .line 233
    .line 234
    .line 235
    invoke-static {v15, v6}, Landroidx/compose/material/DragGestureDetectorCopyKt;->c(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 236
    move-result v6

    .line 237
    .line 238
    .line 239
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 240
    move-result-object v12

    .line 241
    .line 242
    check-cast v12, Ljava/lang/Number;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 246
    move-result v12

    .line 247
    .line 248
    iget v15, v9, Lkotlin/jvm/internal/m0;->element:F

    .line 249
    sub-float/2addr v12, v15

    .line 250
    .line 251
    .line 252
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 253
    move-result v12

    .line 254
    .line 255
    cmpg-float v12, v12, v6

    .line 256
    .line 257
    if-gez v12, :cond_b

    .line 258
    .line 259
    .line 260
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 261
    move-result-object v12

    .line 262
    .line 263
    check-cast v12, Ljava/lang/Number;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 267
    move-result v12

    .line 268
    .line 269
    iget v13, v9, Lkotlin/jvm/internal/m0;->element:F

    .line 270
    sub-float/2addr v12, v13

    .line 271
    .line 272
    .line 273
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 274
    move-result v12

    .line 275
    .line 276
    cmpg-float v6, v12, v6

    .line 277
    .line 278
    if-gez v6, :cond_b

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Lw7/u;->d()Ljava/lang/Object;

    .line 282
    move-result-object v6

    .line 283
    .line 284
    check-cast v6, Ljava/lang/Number;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 288
    move-result v6

    .line 289
    const/4 v12, 0x0

    .line 290
    .line 291
    if-eqz v14, :cond_a

    .line 292
    .line 293
    cmpl-float v6, v6, v12

    .line 294
    .line 295
    if-ltz v6, :cond_9

    .line 296
    :goto_5
    move v6, v7

    .line 297
    goto :goto_6

    .line 298
    :cond_9
    const/4 v6, 0x0

    .line 299
    goto :goto_6

    .line 300
    .line 301
    :cond_a
    cmpg-float v6, v6, v12

    .line 302
    .line 303
    if-gez v6, :cond_9

    .line 304
    goto :goto_5

    .line 305
    .line 306
    :goto_6
    iput-boolean v6, v2, Lkotlin/jvm/internal/k0;->element:Z

    .line 307
    .line 308
    iget v6, v9, Lkotlin/jvm/internal/m0;->element:F

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4}, Lw7/u;->c()Ljava/lang/Object;

    .line 312
    move-result-object v4

    .line 313
    .line 314
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 315
    .line 316
    .line 317
    invoke-static {v4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->g(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 318
    move-result-wide v12

    .line 319
    .line 320
    .line 321
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 322
    move-result v4

    .line 323
    add-float/2addr v6, v4

    .line 324
    .line 325
    iput v6, v9, Lkotlin/jvm/internal/m0;->element:F

    .line 326
    .line 327
    :cond_b
    iget-object v4, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 328
    .line 329
    iget-boolean v6, v2, Lkotlin/jvm/internal/k0;->element:Z

    .line 330
    .line 331
    iget v7, v9, Lkotlin/jvm/internal/m0;->element:F

    .line 332
    .line 333
    iget-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v6, v7, v8, v9}, Landroidx/compose/material/RangeSliderLogic;->b(ZFLandroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/o0;)V

    .line 337
    .line 338
    .line 339
    :try_start_1
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 340
    move-result-wide v6

    .line 341
    .line 342
    new-instance v4, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1;

    .line 343
    .line 344
    iget-object v9, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    .line 345
    .line 346
    iget-boolean v10, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$isRtl:Z

    .line 347
    .line 348
    .line 349
    invoke-direct {v4, v9, v2, v10}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/internal/k0;Z)V

    .line 350
    .line 351
    iput-object v8, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$0:Ljava/lang/Object;

    .line 352
    .line 353
    iput-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$1:Ljava/lang/Object;

    .line 354
    .line 355
    iput-object v5, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$2:Ljava/lang/Object;

    .line 356
    .line 357
    iput-object v5, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$3:Ljava/lang/Object;

    .line 358
    .line 359
    iput-object v5, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->L$4:Ljava/lang/Object;

    .line 360
    .line 361
    iput v3, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->label:I

    .line 362
    .line 363
    .line 364
    invoke-static {v11, v6, v7, v4, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->o(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 365
    move-result-object v3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    .line 367
    if-ne v3, v1, :cond_c

    .line 368
    return-object v1

    .line 369
    :cond_c
    move-object v1, v2

    .line 370
    move-object v2, v8

    .line 371
    .line 372
    :goto_7
    :try_start_2
    check-cast v3, Ljava/lang/Boolean;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 376
    move-result v3

    .line 377
    .line 378
    if-eqz v3, :cond_d

    .line 379
    .line 380
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 381
    .line 382
    .line 383
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 384
    goto :goto_8

    .line 385
    .line 386
    :cond_d
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 387
    .line 388
    .line 389
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 390
    goto :goto_8

    .line 391
    :catch_0
    move-object v1, v2

    .line 392
    move-object v2, v8

    .line 393
    .line 394
    :catch_1
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 395
    .line 396
    .line 397
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 398
    .line 399
    :goto_8
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 400
    .line 401
    .line 402
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 403
    move-result-object v2

    .line 404
    .line 405
    check-cast v2, Le8/l;

    .line 406
    .line 407
    iget-boolean v4, v1, Lkotlin/jvm/internal/k0;->element:Z

    .line 408
    .line 409
    .line 410
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 411
    move-result-object v4

    .line 412
    .line 413
    .line 414
    invoke-interface {v2, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    iget-object v6, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    .line 417
    const/4 v7, 0x0

    .line 418
    const/4 v8, 0x0

    .line 419
    .line 420
    new-instance v9, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;

    .line 421
    .line 422
    iget-object v2, v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 423
    .line 424
    .line 425
    invoke-direct {v9, v2, v1, v3, v5}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;-><init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/k0;Landroidx/compose/foundation/interaction/DragInteraction;Lkotlin/coroutines/d;)V

    .line 426
    const/4 v10, 0x3

    .line 427
    const/4 v11, 0x0

    .line 428
    .line 429
    .line 430
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 431
    .line 432
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 433
    return-object v1
.end method
